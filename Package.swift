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
        .library(name: "GRDBSQLite", targets: ["GRDBSQLite"]),
        .library(name: "GRDB", targets: ["GRDB", "_GRDBDummy"]),
    ],
    targets: [
        .systemLibrary(
            name: "GRDBSQLite",
            providers: [.apt(["libsqlite3-dev"])]),
        .binaryTarget(
            name: "GRDB",
            url: "https://github.com/seriesos/GRDB.swift/releases/download/3.2.0/GRDB.xcframework.zip",
            checksum: "1569be84e8c1ec169ad80e0cc203dda8ab143363c648f2c6a50e37a5cf9817cb"
        ),
        .target(name: "_GRDBDummy")
    ]
)
