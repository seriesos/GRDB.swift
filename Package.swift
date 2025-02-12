// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GRDB",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
    ],
    products: [
        .library(name: "GRDB", targets: ["GRDB", "_GRDBDummy"]),
    ],
    targets: [
        .binaryTarget(
            name: "GRDB",
            url: "https://github.com/inlinehq/GRDB.swift/releases/download/3.1.0/GRDB.xcframework.zip",
            checksum: "a803fcb5cae4ba9cae8b949e873e27a69b311432bdef8cef6c6791955d6728c2"
        ),
        .target(name: "_GRDBDummy")
    ]
)
