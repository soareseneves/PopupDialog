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
        .package(url: "https://github.com/KyoheiG3/DynamicBlurView", from: "master"),
    ],
    targets: [
        .target(
            name: "PopupDialog",
            path: "PopupDialog",
            exclude: [
                "Info.plist",
            ],
            resources: [.process("Resources")]
        )
    ]
)
