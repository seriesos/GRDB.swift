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
            url: "https://github.com/inlinehq/GRDB.swift/releases/download/3.1.1/GRDB.xcframework.zip",
            checksum: "6456d9eddf63683e19d510710ba0bc355f2a9e6f5649f87cfdf6b9cdb498655d"
        ),
        .target(name: "_GRDBDummy")
    ]
)
