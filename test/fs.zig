const std = @import("std");

const mem = std.mem;
const fs = std.fs;
const testing = std.testing;
const process = std.process;
const c = std.c;

const allocator = testing.allocator;

fn stat(path: []const u8) !c.Stat {
    const root = try allocator.dupeZ(u8, path);
    defer allocator.free(root);

    var s = mem.zeroes(c.Stat);
    if (c.stat(root, &s) != 0) {
        const errno = c._errno();
        std.debug.panic("stat syscall failed: {d}", .{errno.*});
    }

    return s;
}

const Suite = struct {
    temp_dir: testing.TmpDir,
    root: []u8,
    exe_path: []u8,
    child_process: process.Child,

    pub fn init() !Suite {
        const temp_dir = testing.tmpDir(.{});
        const root = try temp_dir.dir.realpathAlloc(allocator, ".");

        const exe_path = try std.process.getEnvVarOwned(allocator, "exe_path");
        const args = [_][]const u8{
            exe_path,
            root,
        };
        var child_process = process.Child.init(&args, allocator);
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
        return stat(self.root);
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
        const parent = try fs.path.joinZ(allocator, &.{ self.root, ".." });
        defer allocator.free(parent);

        var parent_stat = mem.zeroes(c.Stat);
        if (c.stat(parent, &parent_stat) != 0) {
            std.debug.panic("stat syscall failed", .{});
        }

        return for (0..10) |_| {
            const s = try self.root_stat();
            if ((s.dev != parent_stat.dev) or
                (s.ino == parent_stat.ino))
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
        var stdout = std.ArrayList(u8).init(allocator);
        var stderr = std.ArrayList(u8).init(allocator);

        self.child_process.collectOutput(&stdout, &stderr, std.math.maxInt(usize)) catch unreachable;

        std.log.err("Output for {s} ---", .{self.root});
        {
            const buf = stdout.toOwnedSlice() catch unreachable;
            defer allocator.free(buf);
            std.log.err("[stdout] ---", .{});
            var iter = mem.splitScalar(u8, buf, '\n');
            while (iter.next()) |l| {
                std.log.err("[stdout] {s}", .{l});
            }
        }

        {
            const buf = stderr.toOwnedSlice() catch unreachable;
            defer allocator.free(buf);
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
        allocator.free(self.root);
        allocator.free(self.exe_path);
    }
};

test "creating and reading a file" {
    var suite = try Suite.init();
    defer suite.deinit();
    errdefer suite.terminateAndPrintOutput();

    const path = try fs.path.join(allocator, &.{ suite.root, "hello" });
    defer allocator.free(path);

    const file_to_write = try fs.createFileAbsolute(path, .{});
    try file_to_write.writeAll("hello world!");
    file_to_write.close();

    const file_to_read = try fs.openFileAbsolute(path, .{});
    defer file_to_read.close();
    const read = try file_to_read.readToEndAlloc(allocator, 1024);
    defer allocator.free(read);

    try testing.expectEqualStrings("hello world!", read);
}

test "listing a directory" {
    var suite = try Suite.init();
    defer suite.deinit();
    errdefer suite.terminateAndPrintOutput();

    var dir = try fs.openDirAbsolute(suite.root, .{ .iterate = true });
    defer dir.close();

    {
        var iter = dir.iterate();
        try testing.expectEqual(null, try iter.next());
    }

    {
        const path = try fs.path.join(allocator, &.{ suite.root, "hello" });
        defer allocator.free(path);

        const f = try fs.createFileAbsolute(path, .{});
        f.close();

        var iter = dir.iterate();

        const entry = try iter.next();
        try testing.expectEqualStrings("hello", entry.?.name);

        try testing.expectEqual(null, try iter.next());
    }
}

test "stat a directory" {
    var suite = try Suite.init();
    defer suite.deinit();
    errdefer suite.terminateAndPrintOutput();

    const s = try suite.root_stat();

    // Empty folder
    try testing.expect(s.nlink == 2);
    try testing.expect(c.S.ISDIR(s.mode));
}

test "stat a file" {
    var suite = try Suite.init();
    defer suite.deinit();
    errdefer suite.terminateAndPrintOutput();

    const path = try fs.path.join(allocator, &.{ suite.root, "hello" });
    defer allocator.free(path);

    const f = try fs.createFileAbsolute(path, .{});
    try f.writeAll("hello world!");
    f.close();

    const s = try stat(path);

    try testing.expect(s.nlink == 1);
    try testing.expect(c.S.ISREG(s.mode));
}
