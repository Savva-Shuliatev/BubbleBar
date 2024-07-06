// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "BubbleBar",
  platforms: [.iOS(.v13)],
  products: [
    .library(
      name: "BubbleBar",
      targets: ["BubbleBar"]
    ),
  ],
  targets: [
    .target(
      name: "BubbleBar"),
    .testTarget(
      name: "BubbleBarTests",
      dependencies: ["BubbleBar"]
    ),
  ]
)
