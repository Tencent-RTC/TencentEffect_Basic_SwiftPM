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
        .binaryTarget(name: "XMagic", url: "https://mediacloud-76607.gzc.vod.tencent-cloud.com/TencentEffect/iOS/SwiftPM/4.3.0.11/Basic/XMagic.xcframework.zip", checksum: "e1939a675d62eccf59d1598e202cef1b70d28d418459046ec2b59123ab81e3c8"),
        .binaryTarget(name: "YTCommonXMagic", url: "https://mediacloud-76607.gzc.vod.tencent-cloud.com/TencentEffect/iOS/SwiftPM/4.3.0.11/YTCommonXMagic.xcframework.zip", checksum: "60f3b9cbad8f5b0a46b9ed9b2e267b07747d7016fa839805e3613f97503f032a"),
        .binaryTarget(name: "libpag", url: "https://mediacloud-76607.gzc.vod.tencent-cloud.com/TencentEffect/iOS/SwiftPM/4.3.0.11/libpag.xcframework.zip", checksum: "f782c458d78335c3aa6f8e492c609f7f286a5b5ef89287b3f46c369eb876fa55"),
        .binaryTarget(name: "TECodec", url: "https://mediacloud-76607.gzc.vod.tencent-cloud.com/TencentEffect/iOS/SwiftPM/4.3.0.11/TECodec.xcframework.zip", checksum: "9040ff09c464256523f8773ee30abd01b91cdc64bbd6545de622cd66c1576f40"),
        .binaryTarget(name: "XMagicResources", url: "https://mediacloud-76607.gzc.vod.tencent-cloud.com/TencentEffect/iOS/SwiftPM/4.3.0.11/Resources/Basic/XMagicResources.xcframework.zip", checksum: "cfc44370d612c3a460f2a8e01bdafba143048ea142030704b341ace25ae81a23"),
        
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
