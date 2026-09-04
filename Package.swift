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
        .binaryTarget(name: "XMagic", url: "https://mediacloud-76607.gzc.vod.tencent-cloud.com/TencentEffect/iOS/SwiftPM/4.3.0.25/Dynamic/Basic/XMagic.xcframework.zip", checksum: "897a1f2037f56a4a39b6f3e9c89a20a97d665b0b840b80eb2b20e330dffefbbe"),
        .binaryTarget(name: "YTCommonXMagic", url: "https://mediacloud-76607.gzc.vod.tencent-cloud.com/TencentEffect/iOS/SwiftPM/4.3.0.25/YTCommonXMagic.xcframework.zip", checksum: "76e950fade6f04d2481c2b84c38c93efa84159f6005476ea842718ac082ee546"),
        .binaryTarget(name: "libpag", url: "https://mediacloud-76607.gzc.vod.tencent-cloud.com/TencentEffect/iOS/SwiftPM/4.3.0.25/libpag.xcframework.zip", checksum: "f52dfe82a6f3e460fc2bd40d310342e352330da16052d5f71b2c450a48f74150"),
        .binaryTarget(name: "TECodec", url: "https://mediacloud-76607.gzc.vod.tencent-cloud.com/TencentEffect/iOS/SwiftPM/4.3.0.25/TECodec.xcframework.zip", checksum: "3819c017fbbf2b360f1d752ca09952bd637583801d7a84745ab1b6b54b5871e5"),
        .binaryTarget(name: "XMagicResources", url: "https://mediacloud-76607.gzc.vod.tencent-cloud.com/TencentEffect/iOS/SwiftPM/4.3.0.25/Resources/Basic/XMagicResources.xcframework.zip", checksum: "56984222b95d801a7b5f76cf54fca7efb8af61cb169958c765c03649f1399271"),
        
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
