import ProjectDescription

let project = Project(
    name: "BlogOptionalsTuist",
    targets: [
        .target(
            name: "BlogOptionalsTuist",
            destinations: .macOS,
            product: .staticLibrary,
            bundleId: "io.tuist.BlogOptionalsTuist",
            infoPlist: .default,
            sources: ["BlogOptionalsTuist/Sources/**"],
            resources: [],
            dependencies: []
        ),
        .target(
            name: "BlogOptionalsTuistTests",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "io.tuist.BlogOptionalsTuistTests",
            infoPlist: .default,
            sources: ["BlogOptionalsTuist/Tests/**"],
            resources: [],
            dependencies: [.target(name: "BlogOptionalsTuist")]
        ),
    ]
)
