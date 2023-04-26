// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "GCDWebServer",
    products: [
        .library(name: "GCDWebServer", targets: ["GCDWebServer"]),
        .library(name: "GCDWebUploader", targets: ["GCDWebUploader"]),
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
            cSettings: [
                .define("SWIFT_PACKAGE")
            ]
        )
    ]
)
