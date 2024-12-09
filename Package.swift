// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.


// MARK: Import section

import PackageDescription



// MARK: - Package

let package = Package(
    name: "BuddyKit",
    platforms: [
        .iOS(.v18)
    ],
    products: [
        .library(
            name: "BuddyKit",
            targets: ["BuddyKit"]
        )
    ],
    targets: [
        .target(name: "BuddyKit")
    ],
    swiftLanguageModes: [.v6]
)
