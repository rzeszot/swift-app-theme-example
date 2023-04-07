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
                "Style"
            ]
        ),
        .library(name: "Button", targets: ["Button"])
    ],
    targets: [
        .target(
            name: "Button"
        ),
        .target(
            name: "Style",
            dependencies: [
                "Button"
            ]
        )
    ]
)
