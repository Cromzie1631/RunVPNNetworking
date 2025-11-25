// swift-tools-version: 5.7

import PackageDescription

let package = Package(
  name: "RunVPNNetworking",
  products: [
    .library(
        name: "RunVPNNetworking",
        targets: ["RunVPNNetworking"]
    ),
    .library(
        name: "RunVPNNetworkingC",
        targets: ["RunVPNNetworkingC"]
    )
  ],
  targets: [
    .target(
        name: "RunVPNNetworking",
        dependencies: ["HevSocks5Tunnel", "RunVPNNetworkingC"]
    ),
    .target(
        name: "RunVPNNetworkingC",
        publicHeadersPath: "."
    ),
    .binaryTarget(
        name: "HevSocks5Tunnel",
        url: "https://github.com/EbrahimTahernejad/Tun2SocksKit/releases/download/5.14.1/HevSocks5Tunnel.xcframework.zip",
        checksum: "874f885c07bdbe272a504e3c1461a55bf86847ec6ce222d20c45d94d90796d4e"
    )
  ]
)
