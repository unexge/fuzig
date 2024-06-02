const std = @import("std");

const Filesystem = @import("fuse.zig").Filesystem;
const Directory = @import("fs.zig").Directory;

const allocator = std.heap.c_allocator;

pub fn main() !void {
    var args = std.process.args();
    const program = args.next().?;
    const mountpoint = args.next() orelse "";

    var root = Directory.init(allocator);
    defer root.deinit();

    var fs = Filesystem.init(allocator, root);
    const status = try fs.start(
        program,
        mountpoint,
    );
    std.process.exit(status);
}
