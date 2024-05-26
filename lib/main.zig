const std = @import("std");

pub fn main() void {
    var writer = std.io.getStdOut().writer();

    writer.print("Calculate Engine\n", .{}) catch return;
}