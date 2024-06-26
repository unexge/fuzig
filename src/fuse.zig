const std = @import("std");
const libfuse = @import("libfuse");
const fs = @import("fs.zig");

const mem = std.mem;
const log = std.log;
const linux = std.os.linux;
const c = std.c;

const Directory = fs.Directory;
const Entry = fs.Entry;

fn c_err(err: anytype) c_int {
    const errno: c_int = @intFromEnum(err);
    return -errno;
}

pub const Filesystem = struct {
    allocator: mem.Allocator,
    root: Directory,

    pub fn init(allocator: mem.Allocator, root: Directory) Filesystem {
        return Filesystem{ .allocator = allocator, .root = root };
    }

    fn getattr(path_c: [*c]const u8, stat_c: ?*libfuse.struct_stat, _: ?*libfuse.fuse_file_info) callconv(.C) c_int {
        const self = Filesystem.self_from_ctx();
        const path = mem.span(path_c);
        log.debug("stat: {s}", .{path});

        const entry = if (mem.eql(u8, path, "/"))
            Entry{ .directory = self.root }
        else
            self.root.get(path) orelse {
                return c_err(linux.E.NOENT);
            };

        var stat = mem.zeroes(libfuse.struct_stat);

        switch (entry) {
            .file => |f| {
                stat.st_mode = libfuse.S_IFREG | 0o0444;
                stat.st_nlink = 1;
                stat.st_size = @intCast(f.content.len);
            },
            .directory => |d| {
                var nlink: usize = 2;

                var iter = d.iterator();
                while (iter.next()) |_| {
                    nlink += 1;
                }

                stat.st_mode = libfuse.S_IFDIR | 0o0755;
                stat.st_nlink = @intCast(nlink);
            },
        }

        stat_c.?.* = stat;

        return 0;
    }

    fn readdir(path_c: [*c]const u8, buf: ?*anyopaque, filler: libfuse.fuse_fill_dir_t, _: libfuse.off_t, _: ?*libfuse.fuse_file_info, _: libfuse.fuse_readdir_flags) callconv(.C) c_int {
        const self = Filesystem.self_from_ctx();
        const path = mem.span(path_c);
        log.debug("readdir: {s}", .{path});

        const entry = if (mem.eql(u8, path, "/"))
            Entry{ .directory = self.root }
        else
            self.root.get(path) orelse return c_err(linux.E.NOENT);

        const dir = switch (entry) {
            .file => |_| {
                return c_err(linux.E.NOENT);
            },
            .directory => |d| d,
        };

        // TODO: Handle return value?
        if (filler.?(buf, ".", null, 0, 0) != 0) {
            std.debug.panic("filler failed", .{});
        }
        if (filler.?(buf, "..", null, 0, 0) != 0) {
            std.debug.panic("filler failed", .{});
        }

        var iter = dir.iterator();
        while (iter.next()) |e| {
            // TODO: Fix `.*[1..]`.
            const filename: [:0]const u8 = self.allocator.dupeZ(u8, e.key_ptr.*[1..]) catch unreachable;
            log.debug("readdir: entry {s}", .{filename});
            if (filler.?(buf, filename, null, 0, 0) != 0) {
                std.debug.panic("filler failed", .{});
            }
        }

        return 0;
    }

    fn open(path_c: [*c]const u8, _: ?*libfuse.fuse_file_info) callconv(.C) c_int {
        const self = Filesystem.self_from_ctx();
        const path = mem.span(path_c);
        log.debug("open: {s}", .{path});

        if (!mem.eql(u8, path, "/")) {
            _ = self.root.get(path) orelse return c_err(linux.E.NOENT);
        }

        return 0;
    }

    fn read(path_c: [*c]const u8, buf: [*c]u8, size: usize, offset_c: libfuse.off_t, _: ?*libfuse.fuse_file_info) callconv(.C) c_int {
        const self = Filesystem.self_from_ctx();
        const path = mem.span(path_c);
        const offset: usize = @intCast(offset_c);
        log.debug("read: {s} (size={d}, offset={d})", .{ path, size, offset });

        // TODO: Error handling.
        const entry = self.root.read(path) catch unreachable;
        const content = entry orelse return c_err(linux.E.NOENT);

        if (offset > content.len) {
            return 0;
        }

        const end = @min(size, content.len);
        const len = end - offset;

        @memcpy(buf[0..len], content.ptr[offset..end]);

        return @intCast(len);
    }

    fn write(path_c: [*c]const u8, buf_c: [*c]const u8, size: usize, offset_c: libfuse.off_t, _: ?*libfuse.fuse_file_info) callconv(.C) c_int {
        const self = Filesystem.self_from_ctx();
        const path = self.allocator.dupe(u8, mem.span(path_c)) catch unreachable;
        const offset: usize = @intCast(offset_c);
        log.debug("write: {s} (size={d}, offset={d})", .{ path, size, offset });

        const buf = self.allocator.dupe(u8, mem.span(buf_c)) catch unreachable;

        // TODO: Error handling.
        self.root.write(path, buf) catch unreachable;

        return @intCast(size);
    }

    fn create(path_c: [*c]const u8, _: libfuse.mode_t, _: ?*libfuse.fuse_file_info) callconv(.C) c_int {
        const self = Filesystem.self_from_ctx();
        const path = self.allocator.dupe(u8, mem.span(path_c)) catch unreachable;
        log.debug("create: {s}", .{path});

        self.root.touch(path) catch return c_err(linux.E.EXIST);

        return 0;
    }

    fn mknod(path_c: [*c]const u8, _: libfuse.mode_t, _: libfuse.dev_t) callconv(.C) c_int {
        const self = Filesystem.self_from_ctx();
        const path = self.allocator.dupe(u8, mem.span(path_c)) catch unreachable;
        log.debug("mknod: {s}", .{path});

        self.root.touch(path) catch return c_err(linux.E.EXIST);

        return 0;
    }

    fn self_from_ctx() *Filesystem {
        const ctx = libfuse.fuse_get_context();
        const ptr = ctx.*.private_data.?;
        return @ptrCast(@alignCast(ptr));
    }

    pub fn start(self: *Filesystem, program: []const u8, mountpoint: []const u8) !u8 {
        var fuse_args = [_][*:0]const u8{
            try self.allocator.dupeZ(u8, program),
            try self.allocator.dupeZ(u8, mountpoint),
            "-f", // run in foreground
            "-d", // debug mode
        };

        const operations = libfuse.fuse_operations{
            .getattr = &Filesystem.getattr,
            .readdir = &Filesystem.readdir,
            .open = &Filesystem.open,
            .read = &Filesystem.read,
            .write = &Filesystem.write,
            .mknod = &Filesystem.mknod,
            .create = &Filesystem.create,
        };

        log.info("mounting at {s}", .{mountpoint});

        return @intCast(libfuse.fuse_main_real(@intCast(fuse_args.len), @ptrCast(&fuse_args), &operations, @sizeOf(@TypeOf(operations)), @as(*anyopaque, @ptrCast(self))));
    }
};
