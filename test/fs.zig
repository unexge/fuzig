const std = @import("std");

const mem = std.mem;
const fs = std.fs;
const testing = std.testing;
const process = std.process;
const c = std.c;

const Suite = struct {
    temp_dir: testing.TmpDir,
    root: []u8,
    exe_path: []u8,
    child_process: process.Child,

    pub fn init() !Suite {
        const temp_dir = testing.tmpDir(.{});
        const root = try temp_dir.dir.realpathAlloc(testing.allocator, ".");

        const exe_path = try std.process.getEnvVarOwned(testing.allocator, "exe_path");
        const args = [_][]const u8{
            exe_path,
            root,
        };
        var child_process = process.Child.init(&args, testing.allocator);
        // Zig's test runner stucks if something is written to stdout without std.log:
        // https://github.com/ziglang/zig/issues/18111
        // We just pipe outputs and print them in `printOutput` using std.log.
        child_process.stdout_behavior = .Pipe;
        child_process.stderr_behavior = .Pipe;
        try child_process.spawn();

        const suite = Suite{ .temp_dir = temp_dir, .root = root, .exe_path = exe_path, .child_process = child_process };
        try suite.waitUntilFsMounted();

        return suite;
    }

    pub fn root_stat(self: @This()) !c.Stat {
        const root = try fs.path.joinZ(testing.allocator, &.{ self.root, "." });
        defer testing.allocator.free(root);

        var stat = mem.zeroes(std.c.Stat);
        if (std.c.stat(root, &stat) != 0) {
            std.debug.panic("stat syscall failed", .{});
        }

        return stat;
    }

    // Waits until FUSE fs is mounted.
    //
    // The logic to detect if the `root` is a FUSE fs is copied from Python's
    // `os.path.ismount` stdlib function:
    // > On POSIX, the function checks whether path’s parent, path/..,
    // > is on a different device than path, or whether path/.. and
    // > path point to the same i-node on the same device —
    // > this should detect mount points for all Unix and POSIX variants.
    fn waitUntilFsMounted(self: @This()) !void {
        const parent = try fs.path.joinZ(testing.allocator, &.{ self.root, ".." });
        defer testing.allocator.free(parent);

        var parent_stat = mem.zeroes(std.c.Stat);
        if (std.c.stat(parent, &parent_stat) != 0) {
            std.debug.panic("stat syscall failed", .{});
        }

        return for (0..10) |_| {
            const stat = try self.root_stat();
            if ((stat.dev != parent_stat.dev) or
                (stat.ino == parent_stat.ino))
            {
                break;
            }

            std.time.sleep(10_000_000); // 10ms
        } else error.FilesystemNotMounted;
    }

    // Send `SIGTERM` and collect the output of child process
    pub fn terminateAndPrintOutput(self: *@This()) void {
        self.sigterm() catch unreachable;

        // We call `.toOwnedSlice()` below and free underlying slice there,
        // no need to call `defer deinit()` here.
        var stdout = std.ArrayList(u8).init(testing.allocator);
        var stderr = std.ArrayList(u8).init(testing.allocator);

        self.child_process.collectOutput(&stdout, &stderr, std.math.maxInt(usize)) catch unreachable;

        std.log.err("Output for {s} ---", .{self.root});
        {
            const buf = stdout.toOwnedSlice() catch unreachable;
            defer testing.allocator.free(buf);
            std.log.err("[stdout] ---", .{});
            var iter = mem.splitScalar(u8, buf, '\n');
            while (iter.next()) |l| {
                std.log.err("[stdout] {s}", .{l});
            }
        }

        {
            const buf = stderr.toOwnedSlice() catch unreachable;
            defer testing.allocator.free(buf);
            std.log.err("[stderr] ---", .{});
            var iter = mem.splitScalar(u8, buf, '\n');
            while (iter.next()) |l| {
                std.log.err("[stderr] {s}", .{l});
            }
        }
    }

    fn sigterm(self: *@This()) !void {
        try std.posix.kill(self.child_process.id, std.posix.SIG.TERM);
    }

    pub fn deinit(self: *@This()) void {
        self.sigterm() catch unreachable;
        _ = self.child_process.wait() catch unreachable;
        self.temp_dir.cleanup();
        testing.allocator.free(self.root);
        testing.allocator.free(self.exe_path);
    }
};

test "creating and reading a file" {
    var suite = try Suite.init();
    defer suite.deinit();
    errdefer suite.terminateAndPrintOutput();

    const path = try fs.path.join(testing.allocator, &.{ suite.root, "hello" });
    defer testing.allocator.free(path);

    const file_to_write = try fs.createFileAbsolute(path, .{});
    try file_to_write.writeAll("hello world!");
    file_to_write.close();

    const file_to_read = try fs.openFileAbsolute(path, .{});
    defer file_to_read.close();
    const read = try file_to_read.readToEndAlloc(testing.allocator, 1024);
    defer testing.allocator.free(read);

    try testing.expect(mem.eql(u8, read, "hello world!"));
}

test "stat `/`" {
    var suite = try Suite.init();
    defer suite.deinit();
    errdefer suite.terminateAndPrintOutput();

    const stat = try suite.root_stat();

    // Empty folder
    try testing.expect(stat.nlink == 2);
    try testing.expect(std.c.S.ISDIR(stat.mode));
}
