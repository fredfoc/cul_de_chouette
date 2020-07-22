// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "cul_de_chouette",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "cul_de_chouette",
            targets: ["cul_de_chouette"]),
    ],
    dependencies: [
        .package(url: "https://github.com/fredfoc/GherkinTestHelpers.git", from: "0.2.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "cul_de_chouette",
            dependencies: []),
        .testTarget(
            name: "cul_de_chouetteTests",
            dependencies: ["cul_de_chouette", "GherkinTestHelpers"]),
    ]
)
