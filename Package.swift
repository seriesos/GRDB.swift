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
            url: "https://github.com/inlinehq/GRDB.swift/releases/download/3.1.2/GRDB.xcframework.zip",
            checksum: "e4d869983e9774b176fc38672d1b5ae0ed960c29ea45bd391201e8575c67e2a6"
        ),
        .target(name: "_GRDBDummy")
    ]
)
