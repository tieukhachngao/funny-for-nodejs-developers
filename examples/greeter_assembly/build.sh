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

if ! command -v clang >/dev/null 2>&1; then
  printf 'clang is required to build the assembly greeter\n' >&2
  exit 1
fi

tmpdir=$(mktemp -d)
trap 'rm -rf "$tmpdir"' EXIT

clang "$source_file" -o "$tmpdir/greeter_assembly"
"$tmpdir/greeter_assembly" "$name"
