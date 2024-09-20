const standard: type = @import("std");

const build = standard.Build;

pub fn buildExecutable() void {
    const executable = build.addExecutable(.{
        .name = "DataInterchange",
        .root_source_file = build.path("./src/main.zig"),
        .target = build.host,
    });

    build.installArtifact(executable);
}
