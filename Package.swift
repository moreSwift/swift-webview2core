// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "swift-webview2core",
    products: [
        .library(name: "WebView2Core", type: .dynamic, targets: ["WebView2Core"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/moreSwift/swift-cwinrt",
            .upToNextMinor(from: "0.1.0")
        ),
        .package(
            url: "https://github.com/moreSwift/swift-uwp",
            .upToNextMinor(from: "0.1.0")
        ),
        .package(
            url: "https://github.com/moreSwift/swift-windowsfoundation",
            .upToNextMinor(from: "0.1.0")
        ),
    ],
    targets: [
        .target(
            name: "WebView2Core",
            dependencies: [
                .product(name: "CWinRT", package: "swift-cwinrt"),
                .product(name: "UWP", package: "swift-uwp"),
                .product(name: "WindowsFoundation", package: "swift-windowsfoundation"),
            ]
        )
    ]
)
