// swift-tools-version:5.4
import PackageDescription

let package = Package(
    name: "AmaniVideoSDK",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name:"AmaniVideoSDK",
            targets: ["AmaniVideoBundle"]
        )
    ],
    dependencies: [
        // .package(
        //     name: "SocketIO",
        //     url:    "https://github.com/socketio/socket.io-client-swift.git",
        //     .upToNextMinor(from: "16.1.0")
        // ),
        // .package(
        //     name: "Starscream",
        //     url: "https://github.com/daltoniam/Starscream.git", 
        //     .upToNextMinor(from: "4.0.8")
        // ),
        .package(
            name:   "WebRTC",
            url: "https://github.com/stasel/WebRTC.git",
            .upToNextMajor(from: "127.0.0")
        ),
    ],
    targets: [
        .binaryTarget(
            name:"AmaniVideoSDK",
            path:"./Binaries/AmaniVideoSDK.xcframework.zip"
        ),
        .target(
            name: "AmaniVideoBundle",
            dependencies: [
                    "AmaniVideoSDK",
                    // "Starscream",
                    "WebRTC"
                ]
        ), 
    ]
)

