// swift-tools-version: 5.9
import PackageDescription

// 公共 linker settings
let commonLinkerSettings: [LinkerSetting] = [
    .linkedFramework("AVFoundation"),
    .linkedFramework("Accelerate"),
    .linkedFramework("AssetsLibrary"),
    .linkedFramework("CoreML"),
    .linkedFramework("JavaScriptCore"),
    .linkedFramework("CoreFoundation"),
    .linkedFramework("MetalPerformanceShaders"),
    .linkedFramework("CoreTelephony"),
    .linkedFramework("VideoToolbox"),
    .linkedLibrary("z"),
    .linkedLibrary("resolv"),
    .linkedLibrary("iconv"),
    .linkedLibrary("stdc++"),
    .linkedLibrary("c++"),
    .linkedLibrary("sqlite3"),
]

let package = Package(
    name: "TencentEffect_Basic_SwiftPM",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        // A 系列
        .library(name: "TencentEffect_A1-00", targets: ["TencentEffect_A1-00"]),
        .library(name: "TencentEffect_A1-00_nobundle", targets: ["TencentEffect_A1-00_nobundle"]),
        .library(name: "TencentEffect_A1-00_nolibpag", targets: ["TencentEffect_A1-00_nolibpag"]),
        .library(name: "TencentEffect_A1-01", targets: ["TencentEffect_A1-01"]),
        .library(name: "TencentEffect_A1-01_nobundle", targets: ["TencentEffect_A1-01_nobundle"]),
        .library(name: "TencentEffect_A1-01_nolibpag", targets: ["TencentEffect_A1-01_nolibpag"]),
        // S 系列
        .library(name: "TencentEffect_S1-00", targets: ["TencentEffect_S1-00"]),
        .library(name: "TencentEffect_S1-00_nobundle", targets: ["TencentEffect_S1-00_nobundle"]),
        .library(name: "TencentEffect_S1-00_nolibpag", targets: ["TencentEffect_S1-00_nolibpag"]),
    ],
    
    targets: [
        // ============ Binary Targets ============
        .binaryTarget(name: "XMagic", url: "https://mediacloud-76607.gzc.vod.tencent-cloud.com/TencentEffect/iOS/SwiftPM/4.2.0.21/Basic/XMagic.xcframework.zip", checksum: "39da503d0785e9a1c081196f75ee497309b012847740779ce29e62cc73424fbe"),
        .binaryTarget(name: "YTCommonXMagic", url: "https://mediacloud-76607.gzc.vod.tencent-cloud.com/TencentEffect/iOS/SwiftPM/4.2.0.21/YTCommonXMagic.xcframework.zip", checksum: "aa58a7ee8bfe76cab13575d62d169894492b0bc56cab947d46ce73c6beff81fb"),
        .binaryTarget(name: "libpag", url: "https://mediacloud-76607.gzc.vod.tencent-cloud.com/TencentEffect/iOS/SwiftPM/4.2.0.21/libpag.xcframework.zip", checksum: "ae9f882a28e679142dd30398049b64181168c8d944a956735f011350e9e79d02"),
        .binaryTarget(name: "TECodec", url: "https://mediacloud-76607.gzc.vod.tencent-cloud.com/TencentEffect/iOS/SwiftPM/4.2.0.21/TECodec.xcframework.zip", checksum: "e66ddf73d68cc5ffcc94ebaa7e1aef9079d7db51769134663d9458bb1639f042"),
        .binaryTarget(name: "XMagicResources", url: "https://mediacloud-76607.gzc.vod.tencent-cloud.com/TencentEffect/iOS/SwiftPM/4.2.0.21/Resources/Basic/XMagicResources.xcframework.zip", checksum: "05f6706ce23227777abd1c4899e664eaefd3e999624b1da21d3c1c431cc15609"),
        
        // ============ A1-00 套餐 ============
        .target(
            name: "TencentEffect_A1-00",
            dependencies: ["XMagic", "YTCommonXMagic", "libpag", "TECodec", "XMagicResources"],
            path: "Sources/TencentEffect_A1-00",
            sources: ["TencentEffect.swift"],
            linkerSettings: commonLinkerSettings
        ),
        .target(
            name: "TencentEffect_A1-00_nobundle",
            dependencies: ["XMagic", "YTCommonXMagic", "libpag", "TECodec"],
            path: "Sources/TencentEffect_A1-00_nobundle",
            sources: ["TencentEffect.swift"],
            linkerSettings: commonLinkerSettings
        ),
        .target(
            name: "TencentEffect_A1-00_nolibpag",
            dependencies: ["XMagic", "YTCommonXMagic", "TECodec", "XMagicResources"],
            path: "Sources/TencentEffect_A1-00_nolibpag",
            sources: ["TencentEffect.swift"],
            linkerSettings: commonLinkerSettings
        ),
        
        // ============ A1-01 套餐 ============
        .target(
            name: "TencentEffect_A1-01",
            dependencies: ["XMagic", "YTCommonXMagic", "libpag", "TECodec", "XMagicResources"],
            path: "Sources/TencentEffect_A1-01",
            sources: ["TencentEffect.swift"],
            linkerSettings: commonLinkerSettings
        ),
        .target(
            name: "TencentEffect_A1-01_nobundle",
            dependencies: ["XMagic", "YTCommonXMagic", "libpag", "TECodec"],
            path: "Sources/TencentEffect_A1-01_nobundle",
            sources: ["TencentEffect.swift"],
            linkerSettings: commonLinkerSettings
        ),
        .target(
            name: "TencentEffect_A1-01_nolibpag",
            dependencies: ["XMagic", "YTCommonXMagic", "TECodec", "XMagicResources"],
            path: "Sources/TencentEffect_A1-01_nolibpag",
            sources: ["TencentEffect.swift"],
            linkerSettings: commonLinkerSettings
        ),
        
        // ============ S1-00 套餐 ============
        .target(
            name: "TencentEffect_S1-00",
            dependencies: ["XMagic", "YTCommonXMagic", "libpag", "TECodec", "XMagicResources"],
            path: "Sources/TencentEffect_S1-00",
            sources: ["TencentEffect.swift"],
            linkerSettings: commonLinkerSettings
        ),
        .target(
            name: "TencentEffect_S1-00_nobundle",
            dependencies: ["XMagic", "YTCommonXMagic", "libpag", "TECodec"],
            path: "Sources/TencentEffect_S1-00_nobundle",
            sources: ["TencentEffect.swift"],
            linkerSettings: commonLinkerSettings
        ),
        .target(
            name: "TencentEffect_S1-00_nolibpag",
            dependencies: ["XMagic", "YTCommonXMagic", "TECodec", "XMagicResources"],
            path: "Sources/TencentEffect_S1-00_nolibpag",
            sources: ["TencentEffect.swift"],
            linkerSettings: commonLinkerSettings
        ),
    ]
)
