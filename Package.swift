// swift-tools-version:4.2

import PackageDescription

let package = Package(
  name: "URITemplate",
  products: [
    .library(name: "URITemplate", targets: ["URITemplate"])
  ],
  dependencies: [
    .package(url: "https://github.com/kylef/PathKit.git", .branch("master")),
    .package(url: "https://github.com/kylef/Spectre.git", .branch("master"))
  ],
  targets: [
    .target(name: "URITemplate", dependencies: [], path: "Sources"),
    .testTarget(name: "URITemplateTests", dependencies: ["URITemplate", "PathKit", "Spectre"], path: "Tests/URITemplateTests")
  ]
)
