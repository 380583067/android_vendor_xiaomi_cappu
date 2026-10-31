# cappu Android 12 vendor 迁移

本仓库基线为 `lineage-15.1-test` 的 `5abc380`。

`elf-files.json` 保存原始 ELF 安装清单。`generate-blobs.py` 为实际打包的二进制生成
独立的 `cappu_blob_` 预编译模块，保持原 vendor 路径和文件名，每个架构分别声明
`DT_NEEDED` 依赖并开启 ELF 检查。文本、固件继续通过产品复制清单安装。

```sh
python3 vendor/xiaomi/cappu/blob-fixups.py --check
python3 vendor/xiaomi/cappu/generate-blobs.py
```

`blob-fixups.json` 记录修改前后 SHA256 和修改内容。`libacdk.so` 的相机接口依赖、
`libperfservice.so` 的 dfps 接口依赖原本缺少 `_vendor` 后缀；已按本仓库实际库的
SONAME 修正。旧 32 位 HEVC decoder 的除法运行时入口由 cappu 已列为 VNDK-SP 的
`libcompiler_rt.so` 提供，因此其 ELF 显式加入该 `DT_NEEDED`，让链接检查和运行时加载
使用同一依赖。`blob-fixups.py` 只接受清单记录的原始版本或修复后版本，使用 patchelf
修改 `DT_NEEDED`，重复执行保持结果不变。

相机栈需要的 `libcameracustom.so` 从同一仓库 `d708d87` 恢复，包含两个架构。
工厂蓝牙测试、无硬件的 Goodix 指纹和没有 init 调用者的 Trustonic KeyProtect
组件保留在仓库中，不加入产品。生成器中逐项列出这些组件。

`libpixelflinger` 和旧名称 `libLLVM` 的真实兼容实现位于设备树 `compat/`，
不会通过空库或关闭全部 ELF 检查来替代缺失依赖。

构建与上机验证结果见设备树的适配记录；生成模块本身不代表设备功能已验证。
Widevine `libwvhidl.so` and `libwvdrmengine.so` import protobuf 2.6 symbols absent from the platform 3.9 runtime. The device tree builds an isolated, export-filtered legacy runtime from AOSP android-8.1.0_r1; blob-fixups adds it as a direct DT_NEEDED dependency to the 32-bit and 64-bit blobs.

The old `libcam.camadapter.so` also carried an unused `libskia.so` DT_NEEDED entry: its dynamic symbol table imports no Skia symbols, and LineageOS 19.1 provides Skia as a static library. The fixup removes that stale dependency instead of exposing a platform-only library to the vendor partition.
