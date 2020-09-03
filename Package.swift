// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name:  "Curses",
    products: [
        .library(name: "Curses", type: .dynamic, targets: ["Curses"]),
    ],
    dependencies: [],
    targets: [
        .systemLibrary(
            name: "CNCurses",
            pkgConfig: "ncurses"
        ),
        .target(
            name:"Curses",
            dependencies: ["CNCurses"]
        )
    ]
)
