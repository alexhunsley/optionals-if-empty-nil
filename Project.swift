import ProjectDescription

let project = Project(
    name: "BlogOptionalsTuist",
    settings: .settings(
        base: [
//            "OTHER_SWIFT_FLAGS": ["-Xfrontend", "-swift-concurrency=strict"],
            "SWIFT_STRICT_CONCURRENCY": "complete"
        ]
    ),
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
            dependencies: [.target(name: "BlogOptionalsTuist"),
                           .external(name: "OrderedCollections")
                          ]
        ),
    ]
)
