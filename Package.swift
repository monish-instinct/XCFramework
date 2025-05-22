// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "MyNeuralFramework",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "MyNeuralFramework",
            targets: ["MyNeuralFramework"]
        )
    ],
    dependencies: [
        // Add these only if you're actually using these packages in your Swift code
        .package(url: "https://github.com/stoneburner/sqlcipher.git", from: "4.5.0"),
        .package(url: "https://github.com/razorpay/razorpay-pod.git", from: "1.0.0")
    ],
    targets: [
        .binaryTarget(
            name: "MyNeuralFramework",
            url: "https://github.com/monish-instinct/SampleXC/releases/download/samplexc/MyNeuralFramework.xcframework.zip",
            checksum: "2b9b13b71e41eef3743c194075f42b50ef0b3573fd026aa4aace26860d11e8e8"
        )
    ]
)
