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
            url: "https://github.com/seriesos/GRDB.swift/releases/download/3.1.3/GRDB.xcframework.zip",
            checksum: "9b0c050bdcb4fc7db097142f48b954cc0289a6f493710ef818033179df528632"
        ),
        .target(name: "_GRDBDummy")
    ]
)
