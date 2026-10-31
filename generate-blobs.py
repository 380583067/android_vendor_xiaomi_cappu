#!/usr/bin/env python3
"""cappu Android 12：把旧 vendor ELF 复制清单迁移成有架构和依赖的预编译模块。

保留原安装路径和文件名，模块加 cappu_blob_ 前缀以免抢占 AOSP 同名模块。
固件和文本配置仍可复制。ELF 检查保持开启，缺失依赖必须单独修复。
"""
from collections import defaultdict
import json
from pathlib import Path
import re
import subprocess

ROOT = Path(__file__).resolve().parents[3]
VENDOR = Path(__file__).resolve().parent
PRODUCT = VENDOR / 'cappu-vendor.mk'
text = PRODUCT.read_text()
# 打包前确保 blob 的 DT_NEEDED 与本仓库实际提供的 SONAME 一致。
subprocess.run(['python3', str(VENDOR / 'blob-fixups.py')], check=True)
# 第二次运行从保存到本仓库的原始清单读取 ELF；不依赖桌面临时文件。
source_list = VENDOR / 'elf-files.json'
if source_list.exists():
    files = json.loads(source_list.read_text())
else:
    files = []
    for line in text.splitlines():
        match = re.match(r'\s+(\S+):(\S+)\s*\\?$', line)
        if not match:
            continue
        src, dst = match.groups()
        path = ROOT / src
        if path.is_file() and path.open('rb').read(4) == b'\x7fELF':
            files.append({'src': src, 'dst': dst})
    source_list.write_text(json.dumps(files, indent=2) + '\n')

all_source_names = {item['src'] for item in files}

# cappu 没有指纹硬件；这些工厂测试和 Trustonic KeyProtect 程序没有 init 调用者，
# 且依赖未提供的旧 TEE/蓝牙测试库。保留仓库文件，但不把无调用者的组件打包。
excluded = {'autobt', 'kph', 'pld', 'libgf_hal.so', 'libgf_ca.so',
            'libgoodixfingerprintd_binder.so', 'libpl.so', 'libkphhelper.so', 'libkphproxy.so'}
files = [item for item in files if Path(item['src']).name not in excluded]

# 按实际安装路径合并 lib/lib64 的同一模块；可执行文件以 ELF class 决定架构。
groups = defaultdict(list)
for item in files:
    path = ROOT / item['src']
    rel = path.relative_to(VENDOR / 'proprietary/vendor')
    data = path.read_bytes()
    bits = 32 if data[4] == 1 else 64
    if rel.parts[0] in ('lib', 'lib64'):
        key = 'lib/' + str(Path(*rel.parts[1:]))
    else:
        key = str(rel)
    item = dict(item, bits=bits, rel=str(rel))
    dynamic = subprocess.check_output(['readelf', '-d', str(path)], text=True)
    item['needed'] = re.findall(r'Shared library: \[(.*?)\]', dynamic)
    soname = re.search(r'SONAME.*\[(.*?)\]', dynamic)
    item['soname'] = soname.group(1) if soname else None
    groups[key].append(item)

def module(key):
    return 'cappu_blob_' + key.replace('/', '_').removesuffix('.so')

by_name = {(item['bits'], Path(item['rel']).name): module(key) for key, items in groups.items() for item in items}
mk = ['# cappu Android 12：由 generate-blobs.py 从 ELF 清单生成。',
      '# 使用独立模块名，保留原文件名、分区及 32/64 位路径；不禁用 ELF 校验。',
      'LOCAL_PATH := $(call my-dir)', '', 'ifeq ($(TARGET_DEVICE),cappu)', '']
for key, items in sorted(groups.items()):
    # Make 的不剥离 prebuilt 路径不合并 LOCAL_SHARED_LIBRARIES_32/64；
    # 因此每个架构单独定义同名模块，显式设置公共依赖变量，ELF 检查才会生效。
    for item in items:
        lib = key.startswith('lib/')
        original_stem = Path(key).name
        stem = item['soname'] or original_stem
        aliases = set(item.get('symlinks', []))
        if stem != original_stem:
            aliases.add(original_stem)
        aliases.discard(stem)
        if aliases:
            mk += ['# 按 ELF 的真实 SONAME 安装，并用 symlink 保留旧 HAL/模块查找路径。']
        else:
            mk += ['# 旧 MTK 二进制：按本架构 DT_NEEDED 检查依赖，保留原安装路径。']
        mk += [
               'include $(CLEAR_VARS)', 'LOCAL_MODULE := ' + module(key),
               'LOCAL_MODULE_CLASS := ' + ('SHARED_LIBRARIES' if lib else 'EXECUTABLES'),
               'LOCAL_MODULE_TAGS := optional', 'LOCAL_VENDOR_MODULE := true',
               'LOCAL_INSTALLED_MODULE_STEM := ' + stem, 'LOCAL_STRIP_MODULE := false',
               'LOCAL_CHECK_ELF_FILES := true', 'LOCAL_MULTILIB := ' + str(item['bits'])]
        if aliases:
            mk += ['LOCAL_MODULE_SYMLINKS := ' + ' '.join(sorted(aliases))]
        if lib: mk += ['LOCAL_MODULE_SUFFIX := .so']
        subdir = str(Path(key).parent).removeprefix('lib/').removeprefix('bin/')
        if subdir not in ('lib', 'bin', '.'):
            mk += ['LOCAL_MODULE_RELATIVE_PATH := ' + subdir]
        mk += ['LOCAL_SRC_FILES := proprietary/vendor/' + item['rel']]
        deps = [by_name.get((item['bits'], name), name.removesuffix('.so')) for name in item['needed'] if name not in ('libc.so', 'libm.so', 'libdl.so')]
        # libLLVM 是旧 SONAME 的转发库；实际符号由其依赖 libLLVM_android 导出。
        if 'libLLVM' in deps: deps.append('libLLVM_android')
        if deps: mk += ['LOCAL_SHARED_LIBRARIES := ' + ' '.join(deps)]
        mk += ['include $(BUILD_PREBUILT)', '']
mk += ['endif', '']
(VENDOR / 'Android.mk').write_text('\n'.join(mk))
source_names = all_source_names
lines = []
for line in text.splitlines():
    if any(line.lstrip().startswith(src + ':') for src in source_names):
        continue
    if line.startswith('# cappu ELF 模块清单'):
        break
    lines.append(line)
# 删除上一个复制条目末尾的续行符，避免追加 PRODUCT_PACKAGES 被当成复制路径。
while lines and not lines[-1].strip(): lines.pop()
if lines[-1].rstrip().endswith('\\'): lines[-1] = lines[-1].rstrip().removesuffix('\\').rstrip()
lines += ['', '# cappu ELF 模块清单：Android 12 不再允许 PRODUCT_COPY_FILES 直接复制 ELF。',
          '# 由独立预编译模块保留安装路径，并检查真实 DT_NEEDED 依赖。', 'PRODUCT_PACKAGES += \\']
names = [module(key) for key in sorted(groups)]
for index, name in enumerate(names): lines.append('    ' + name + (' \\' if index < len(names)-1 else ''))
PRODUCT.write_text('\n'.join(lines)+'\n')
print(f'Converted {len(files)} ELF files into {len(groups)} modules')
