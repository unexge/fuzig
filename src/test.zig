const std = @import("std");

const mem = std.mem;
const fs = std.fs;
const testing = std.testing;
const process = std.process;
const c = std.c;

const Suite = struct {
    temp_dir: testing.TmpDir,
    root: []u8,
    child_process: process.Child,

    pub fn init() !Suite {
        const temp_dir = testing.tmpDir(.{});
        const root = try temp_dir.dir.realpathAlloc(testing.allocator, ".");

        // TODO: Is there a better way to get executable?
        const args = &.{
            "/app/zig-out/bin/fuzig",
            root,
        };
        var child_process = process.Child.init(args, testing.allocator);
        child_process.stderr_behavior = .Inherit;
        try child_process.spawn();

        const suite = Suite{ .temp_dir = temp_dir, .root = root, .child_process = child_process };
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

    pub fn deinit(self: *@This()) void {
        _ = self.child_process.kill() catch unreachable;
        _ = self.child_process.wait() catch unreachable;
        self.temp_dir.cleanup();
        testing.allocator.free(self.root);
    }
};

test "creating and reading a file" {
    var suite = try Suite.init();
    defer suite.deinit();

    const path = try fs.path.join(testing.allocator, &.{ suite.root, "hello" });
    defer testing.allocator.free(path);

    const file = try fs.createFileAbsolute(path, .{});
    try file.writeAll("hello world!");

    var buf: [128]u8 = undefined;
    const read = try file.readAll(&buf);

    try testing.expect(mem.eql(u8, buf[0..read], "hello world!"));
}

test "stat `/`" {
    var suite = try Suite.init();
    defer suite.deinit();

    const stat = try suite.root_stat();

    // Empty folder
    try testing.expect(stat.nlink == 2);
    try testing.expect(std.c.S.ISDIR(stat.mode));
}
