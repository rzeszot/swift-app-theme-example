// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "Style",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "Style",
            targets: [
                "Style",
                "Samples"
            ]
        ),
        .library(
            name: "Samples",
            targets: [
                "Samples"
            ]
        )
    ],
    targets: [
        .target(
            name: "Style"
        ),
        .target(
            name: "Samples",
            dependencies: [
                "Style"
            ]
        )
    ]
)
