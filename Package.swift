// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "PizzaAppThemeUI",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v15),
        .tvOS(.v15), 
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "PizzaAppThemeUI",
            targets: ["PizzaAppThemeUI"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/PizzaKit/pizzakit",
            from: "1.0.1"
        )
    ],
    targets: [
        .target(
            name: "PizzaAppThemeUI",
            dependencies: [
                .product(name: "PizzaKit", package: "pizzakit")
            ],
            resources: [
                .process("Resources")
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
