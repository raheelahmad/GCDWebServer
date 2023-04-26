// swift-tools-version:5.4
import PackageDescription

let package = Package(
    name: "GCDWebServer",
    products: [
        .library(name: "GCDWebServer", targets: ["GCDWebServer", "GCDWebUploader"]),
    ],
    targets: [
        .target(
            name: "GCDWebServer",
            path: "GCDWebServer",
            cSettings: [
                .define("SWIFT_PACKAGE")
            ]
        ),
            .target(
            name: "GCDWebUploader",
            dependencies: ["GCDWebServer"],
            path: "GCDWebUploader",
            resources: [.process("Resources")],
            cSettings: [
                .define("SWIFT_PACKAGE")
            ]
        )
    ]
)
