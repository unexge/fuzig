const std = @import("std");
const mem = std.mem;
const testing = std.testing;

pub const File = struct {
    content: []const u8,

    pub fn init(content: []const u8) File {
        return File{ .content = content };
    }
    pub fn deinit(_: *File) void {}
};

pub const Directory = struct {
    allocator: mem.Allocator,
    entries: std.StringHashMap(Entry),

    pub fn init(allocator: mem.Allocator) Directory {
        const entries = std.StringHashMap(Entry).init(allocator);
        return Directory{ .entries = entries, .allocator = allocator };
    }

    pub fn iterator(self: *const Directory) std.StringHashMap(Entry).Iterator {
        return self.entries.iterator();
    }

    pub fn mkdir(self: *Directory, name: []const u8) !void {
        try self.entries.put(name, .{ .directory = Directory.init(self.allocator) });
    }

    pub fn touch(self: *Directory, name: []const u8) !void {
        const entry = try self.entries.getOrPut(
            name,
        );
        if (entry.found_existing) {
            return error.AlreadyExists;
        }
        entry.value_ptr.* = .{ .file = File.init("") };
    }

    pub fn write(self: *Directory, name: []const u8, content: []const u8) !void {
        const entry = try self.entries.getOrPut(
            name,
        );
        // if (entry.found_existing) {
        //     return error.AlreadyExists;
        // }

        entry.value_ptr.* = .{ .file = File.init(content) };
    }

    pub fn read(self: *const Directory, name: []const u8) !?[]const u8 {
        const entry = self.entries.get(name) orelse return null;
        return switch (entry) {
            .file => |f| f.content,
            .directory => |_| error.ItIsADirectory,
        };
    }

    pub fn get(self: *const Directory, name: []const u8) ?Entry {
        return self.entries.get(name);
    }

    pub fn deinit(self: *Directory) void {
        var iter = self.iterator();
        while (iter.next()) |entry| {
            entry.value_ptr.deinit();
        }

        self.entries.deinit();
    }
};

pub const Entry = union(enum) {
    file: File,
    directory: Directory,

    pub fn deinit(self: *Entry) void {
        switch (self.*) {
            .file => |*f| {
                f.deinit();
            },
            .directory => |*d| {
                d.deinit();
            },
        }
    }
};

test "creating and listing folders" {
    var root = Directory.init(testing.allocator);
    defer root.deinit();

    {
        var iter = root.iterator();
        try testing.expect(iter.next() == null);
    }

    try root.mkdir("foo");
    {
        var iter = root.iterator();

        const entry = iter.next().?;
        try testing.expect(mem.eql(u8, "foo", entry.key_ptr.*));

        var dir = switch (entry.value_ptr.*) {
            .file => |_| {
                unreachable;
            },
            .directory => |d| d,
        };
        var subiter = dir.iterator();
        try testing.expect(subiter.next() == null);
    }
}

test "writing and reading files" {
    var root = Directory.init(testing.allocator);
    defer root.deinit();

    try testing.expect(try root.read("foo") == null);

    try root.write("foo", "hello world!");
    const content = try root.read("foo");
    try testing.expect(mem.eql(u8, content.?, "hello world!"));
}

test "getting entry" {
    var root = Directory.init(testing.allocator);
    defer root.deinit();

    try root.write("foo", "qux");
    try root.mkdir("bar");

    switch (root.get("foo").?) {
        .file => |f| {
            try testing.expect(mem.eql(u8, f.content, "qux"));
        },
        .directory => |_| {
            unreachable;
        },
    }

    switch (root.get("bar").?) {
        .file => |_| {
            unreachable;
        },
        .directory => |d| {
            var iter = d.iterator();
            try testing.expect(iter.next() == null);
        },
    }
}
