const standard: type = @import("std");

const build = standard.Build;

pub fn buildExecutable() void {
    const executable = build.addExecutable(.{
        .name = "CalculateEngine",
        .root_source_file = build.path("./src/main.zig"),
        .target = build.host,
    });

    build.installArtifact(executable);
}
