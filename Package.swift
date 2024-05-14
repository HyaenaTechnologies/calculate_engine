// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "calculate_engine_native",
    products: [
        .executable(
            name: "calculate_engine_native_executable",
            targets: ["calculate_engine_native_target"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/apple/swift-algorithms",
            from: "1.2.0"
        ),
        .package(
            url: "https://github.com/apple/swift-argument-parser",
            from: "1.3.1"
        ),
        .package(
            url: "https://github.com/apple/swift-async-algorithms",
            from: "1.0.0"
        ),
        .package(
            url: "https://github.com/apple/swift-collections",
            from: "1.1.0"
        ),
        .package(
            url: "https://github.com/apple/swift-http-types",
            from: "1.0.3"
        ),
        .package(
            url: "https://github.com/apple/swift-http-structured-headers",
            from: "1.0.0"
        ),
        .package(
            url: "https://github.com/apple/swift-log",
            from: "1.5.4"
        ),
        .package(
            url: "https://github.com/apple/swift-metrics",
            from: "2.4.1"
        ),
        .package(
            url: "https://github.com/apple/swift-metrics-extras",
            from: "0.3.1"
        ),
        .package(
            url: "https://github.com/apple/swift-nio",
            from: "2.65.0"
        ),
        .package(
            url: "https://github.com/apple/swift-nio-extras",
            from: "1.22.0"
        ),
        .package(
            url: "https://github.com/apple/swift-nio-http2",
            from: "1.31.0"
        ),
        .package(
            url: "https://github.com/apple/swift-nio-ssl",
            from: "2.26.0"
        ),
        .package(
            url: "https://github.com/apple/swift-nio-transport-services",
            from: "1.20.1"
        ),
        .package(
            url: "https://github.com/apple/swift-numerics",
            from: "1.0.2"
        ),
        .package(
            url: "https://github.com/apple/swift-service-context",
            from: "1.0.0"
        ),
        .package(
            url: "https://github.com/apple/swift-service-discovery",
            from: "1.3.0"
        ),
        .package(
            url: "https://github.com/apple/swift-system",
            from: "1.2.1"
        ),
        .package(
            url: "https://github.com/apple/swift-testing",
            from: "0.7.0"
        ),
        .package(
            url: "https://github.com/open-telemetry/opentelemetry-swift",
            from: "1.9.2"
        ),
        .package(
            url: "https://github.com/swift-server/async-http-client",
            from: "1.21.0"
        ),
        .package(
            url: "https://github.com/swift-server/swift-service-lifecycle",
            from: "2.4.1"
        ),
        .package(
            url: "https://github.com/swift-server/webauthn-swift",
            from: "0.0.3"
        ),
    ],
    targets: [
        .executableTarget(
            name: "calculate_engine_native_target", 
            dependencies: [
                .product(
                    name: "Algorithms",
                    package: "swift-algorithms"
                ),
                .product(
                    name: "ArgumentParser",
                    package: "swift-argument-parser"
                ),
                .product(
                    name: "AsyncAlgorithms",
                    package: "swift-async-algorithms"
                ),
                .product(
                    name: "AsyncHTTPClient",
                    package: "async-http-client"
                ),
                .product(
                    name: "Collections",
                    package: "swift-collections"
                ),
                .product(
                    name: "Logging",
                    package: "swift-log"
                ),
                .product(
                    name: "Metrics",
                    package: "swift-metrics"
                ),
                .product(
                    name: "NIOCore",
                    package: "swift-nio"
                ),
                .product(
                    name: "NIOPosix",
                    package: "swift-nio"
                ),
                .product(
                    name: "NIOHTTP1",
                    package: "swift-nio"
                ),
                .product(
                    name: "Numerics",
                    package: "swift-numerics"
                ),
                .product(
                    name: "OpenTelemetrySdk",
                    package: "opentelemetry-swift"
                ),
                .product(
                    name: "ServiceContextModule",
                    package: "swift-service-context"
                ),
                .product(
                    name: "ServiceDiscovery",
                    package: "swift-service-discovery"
                ),
                .product(
                    name: "ServiceLifecycle",
                    package: "swift-service-lifecycle"
                ),
                .product(
                    name: "SystemPackage",
                    package: "swift-system"
                ),
               .product(
                   name: "Testing",
                   package: "swift-testing"
               ),
               .product(
                   name: "Testing",
                   package: "swift-testing"
               ),
               .product(
                   name: "WebAuthn",
                   package: "webauthn-swift"
               ),
        ]),
        .testTarget(
            name: "cli_test",
            dependencies: ["calculate_engine_native_target"]
        ),
    ]
)
