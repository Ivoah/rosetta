const std = @import("std");

pub fn main() anyerror!void {
    try std.io.getStdOut().writeAll("Writing ../zig.ppm\n");
    const file = try std.fs.cwd().createFile("../zig.ppm", .{ .read = false });
    defer file.close();

    try file.writeAll("P3\n256 256\n255\n");
    const writer = file.writer();
    const range: [256]void = undefined;
    for (range) |_, r| {
        for (range) |_, g| {
            try writer.print("{} {} 0 ", .{r, g});
        }
        try file.writeAll("\n");
    }
}
