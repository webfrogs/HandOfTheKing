// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "HandOfTheKing",
	products: [
		.library(name: "HandOfTheKing", targets: ["HandOfTheKing"]),
	],
	targets: [
		.target(
            name: "HandOfTheKing",
            dependencies: []),
	]
)