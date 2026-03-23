// swift-tools-version: 5.9

import PackageDescription

let package = Package(
      name: "MeetingMind",
      platforms: [
                .iOS(.v17)
      ],
      products: [
                .library(
                              name: "MeetingMind",
                              targets: ["MeetingMind"]
                ),
      ],
      dependencies: [],
      targets: [
                .target(
                              name: "MeetingMind",
                              dependencies: [],
                              path: "Sources/MeetingMind"
                ),
                .testTarget(
                              name: "MeetingMindTests",
                              dependencies: ["MeetingMind"],
                              path: "Tests/MeetingMindTests"
                ),
      ]
)
