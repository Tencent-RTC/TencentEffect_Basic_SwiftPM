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
        .binaryTarget(name: "XMagic", url: "https://mediacloud-76607.gzc.vod.tencent-cloud.com/TencentEffect/iOS/SwiftPM/4.4.0.5/Dynamic/Basic/XMagic.xcframework.zip", checksum: "dcd3c1a8c44488dff202e12bf2fdb4596658f09a34505baa92786ef582fcf113"),
        .binaryTarget(name: "YTCommonXMagic", url: "https://mediacloud-76607.gzc.vod.tencent-cloud.com/TencentEffect/iOS/SwiftPM/4.4.0.5/YTCommonXMagic.xcframework.zip", checksum: "86d99fa1479cd4d0824901df9d001d09c5379dfd93be5844c83f891cd859c03d"),
        .binaryTarget(name: "libpag", url: "https://mediacloud-76607.gzc.vod.tencent-cloud.com/TencentEffect/iOS/SwiftPM/4.4.0.5/libpag.xcframework.zip", checksum: "2e5decd1a805b5221f2414ba47328b2ad730f376f5673065ab6485260b11324a"),
        .binaryTarget(name: "TECodec", url: "https://mediacloud-76607.gzc.vod.tencent-cloud.com/TencentEffect/iOS/SwiftPM/4.4.0.5/TECodec.xcframework.zip", checksum: "1a16b9728ff7f7225c48203a6acea9d42766d050492a9162594240a1fda9089c"),
        .binaryTarget(name: "XMagicResources", url: "https://mediacloud-76607.gzc.vod.tencent-cloud.com/TencentEffect/iOS/SwiftPM/4.4.0.5/Resources/Basic/XMagicResources.xcframework.zip", checksum: "50b943022975a125396c53a8b43d395a74179ca277bd0a5c1df804c437094e9e"),
        
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
