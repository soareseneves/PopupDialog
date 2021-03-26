// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "PopupDialog",
    defaultLocalization: "en",
    platforms: [
        .iOS("10.0")
    ],
    products: [
        .library(name: "PopupDialog", targets: ["PopupDialog"])
    ],
    dependencies: [
        .package(url: "https://github.com/KyoheiG3/DynamicBlurView", from: "5.0.3"),
    ],
    targets: [
        .target(
            name: "PopupDialog",
            dependencies: ["DynamicBlurView"],
            path: "PopupDialog",
            exclude: [
                "Info.plist",
            ],
            resources: [.process("Resources")]
        )
    ]
)
