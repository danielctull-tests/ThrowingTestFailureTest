// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "ThrowingTestFailureTest",
    products: [
        .library(
            name: "ThrowingTestFailureTest",
            targets: ["ThrowingTestFailureTest"]),
    ],
    targets: [
        .target(
            name: "ThrowingTestFailureTest"),
        .testTarget(
            name: "ThrowingTestFailureTestTests",
            dependencies: ["ThrowingTestFailureTest"]),
    ]
)
