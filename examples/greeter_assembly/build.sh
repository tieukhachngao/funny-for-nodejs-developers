#!/usr/bin/env bash
set -euo pipefail

script_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)
os=$(uname -s | tr '[:upper:]' '[:lower:]')
arch=$(uname -m)
name=${1:-bob}

case "$os/$arch" in
  darwin/x86_64)
    source_file="$script_dir/index.darwin-x86_64.s"
    ;;
  linux/x86_64)
    source_file="$script_dir/index.linux-x86_64.s"
    ;;
  *)
    printf 'unsupported assembly target: %s/%s\n' "$os" "$arch" >&2
    exit 1
    ;;
esac

if ! command -v as >/dev/null 2>&1; then
  printf 'as is required to assemble the assembly greeter\n' >&2
  exit 1
fi

if ! command -v ld >/dev/null 2>&1; then
  printf 'ld is required to link the assembly greeter\n' >&2
  exit 1
fi

tmpdir=$(mktemp -d)
trap 'rm -rf "$tmpdir"' EXIT

object_file="$tmpdir/greeter_assembly.o"
binary_file="$tmpdir/greeter_assembly"

case "$os/$arch" in
  darwin/x86_64)
    as -arch x86_64 "$source_file" -o "$object_file"
    sdk_path=$(xcrun --show-sdk-path)
    macos_version=$(sw_vers -productVersion | awk -F. '{print $1 "." $2}')
    ld -e _start -macos_version_min "$macos_version" -syslibroot "$sdk_path" -lSystem "$object_file" -o "$binary_file"
    ;;
  linux/x86_64)
    as "$source_file" -o "$object_file"
    ld -e _start "$object_file" -o "$binary_file"
    ;;
esac

"$tmpdir/greeter_assembly" "$name"
