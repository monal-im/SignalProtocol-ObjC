// swift-tools-version: 6.1

import PackageDescription

let package = Package(
    name: "SignalProtocolObjC",
    products: [
        .library(
            name: "SignalProtocolObjC",
            targets: ["SignalProtocolObjC"],
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/monal-im/libsignal-protocol-c",
            branch: "master",
        ),
    ],
    targets: [
        .target(
            name: "SignalProtocolObjC",
            dependencies: [
                .product(
                    name: "SignalProtocolC",
                    package: "libsignal-protocol-c",
                ),
            ],
            path: "Classes",
            cSettings: [
                .headerSearchPath("."),
                .headerSearchPath("Crypto"),
                .headerSearchPath("Models"),
                .headerSearchPath("Storage"),
                .headerSearchPath("Utility"),
            ],
        ),
    ],
    swiftLanguageModes: [.v6],
)
