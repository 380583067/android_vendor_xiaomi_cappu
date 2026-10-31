#!/usr/bin/env python3
"""cappu Android 12：修正旧 MTK blob 中与已提供库 SONAME 不符的依赖名。

只更改清单记录的 DT_NEEDED；校验修改前后 SHA256，拒绝覆盖未知版本。
原始二进制由本 vendor 仓库 HEAD 保存，兼容修复不会伪造 HIDL 接口。
"""
import argparse
import hashlib
import json
from pathlib import Path
import struct
import subprocess

VENDOR = Path(__file__).resolve().parent

def remove_dynsym_version(path, symbol_name):
    """Clear only one ARM32 ELF dynamic symbol's stale version requirement."""
    data = bytearray(path.read_bytes())
    if data[:4] != b'\x7fELF' or data[4] != 1 or data[5] != 1:
        raise SystemExit(f'仅支持 32 位 little-endian ELF 符号版本修复: {path}')

    section_offset = struct.unpack_from('<I', data, 32)[0]
    section_entry_size = struct.unpack_from('<H', data, 46)[0]
    section_count = struct.unpack_from('<H', data, 48)[0]
    section_names_index = struct.unpack_from('<H', data, 50)[0]
    sections = [struct.unpack_from('<IIIIIIIIII', data,
            section_offset + index * section_entry_size)
            for index in range(section_count)]

    def section_string(table, offset):
        end = table.find(b'\0', offset)
        if end < 0:
            raise SystemExit(f'ELF section name is not terminated: {path}')
        return table[offset:end].decode('ascii')

    names_section = sections[section_names_index]
    section_names = data[names_section[4]:names_section[4] + names_section[5]]
    dynsym_index = next((index for index, section in enumerate(sections)
            if section_string(section_names, section[0]) == '.dynsym'), None)
    versym_index = next((index for index, section in enumerate(sections)
            if section_string(section_names, section[0]) == '.gnu.version'), None)
    if dynsym_index is None or versym_index is None:
        raise SystemExit(f'ELF has no dynamic symbol/version table: {path}')

    dynsym = sections[dynsym_index]
    dynstr = sections[dynsym[6]]
    versym = sections[versym_index]
    if versym[6] != dynsym_index:
        raise SystemExit(f'ELF version table is not linked to .dynsym: {path}')
    strings = data[dynstr[4]:dynstr[4] + dynstr[5]]
    entry_size = dynsym[9]
    if entry_size < 16 or versym[9] != 2:
        raise SystemExit(f'Unexpected ARM32 ELF table entry sizes: {path}')

    matches = []
    for index in range(dynsym[5] // entry_size):
        entry_offset = dynsym[4] + index * entry_size
        name_offset = struct.unpack_from('<I', data, entry_offset)[0]
        if section_string(strings, name_offset) == symbol_name:
            matches.append(index)
    if len(matches) != 1:
        raise SystemExit(f'expected one dynamic symbol {symbol_name}, found {len(matches)} in {path}')

    symbol_index = matches[0]
    version_offset = versym[4] + symbol_index * 2
    current_version = struct.unpack_from('<H', data, version_offset)[0]
    if current_version <= 1:
        raise SystemExit(f'{symbol_name} has no version requirement to remove in {path}')
    struct.pack_into('<H', data, version_offset, 0)
    path.write_bytes(data)

def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--check', action='store_true', help='只检查已应用状态')
    args = parser.parse_args()
    entries = json.loads((VENDOR / 'blob-fixups.json').read_text())
    for entry in entries:
        path = VENDOR / entry['path']
        digest = hashlib.sha256(path.read_bytes()).hexdigest()
        if digest == entry['patched_sha256']:
            print(f'APPLIED {entry["path"]}')
            continue
        if digest != entry['original_sha256']:
            raise SystemExit(f'未知 blob 版本，未修改: {path}')
        if args.check:
            raise SystemExit(f'尚未应用: {path}')
        for old, new in entry.get('replace_needed', {}).items():
            subprocess.run(['patchelf', '--replace-needed', old, new, str(path)], check=True)
        # libcam.camadapter has a stale libskia dependency but imports no Skia symbols;
        # Android 12 builds Skia as a static library, so drop this unused old-OS edge.
        for needed in entry.get('remove_needed', []):
            subprocess.run(['patchelf', '--remove-needed', needed, str(path)], check=True)
        for needed in entry.get('add_needed', []):
            subprocess.run(['patchelf', '--add-needed', needed, str(path)], check=True)
        for symbol_name in entry.get('remove_dynsym_version', []):
            remove_dynsym_version(path, symbol_name)
        if hashlib.sha256(path.read_bytes()).hexdigest() != entry['patched_sha256']:
            raise SystemExit(f'修改后校验失败（检查 patchelf 版本）: {path}')
        print(f'FIXED {entry["path"]}')

if __name__ == '__main__':
    main()
