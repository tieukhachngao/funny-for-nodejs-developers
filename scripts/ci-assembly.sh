#!/usr/bin/env bash
set -euo pipefail

root_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)
cd "$root_dir"

if [[ ! -x examples/greeter_assembly/build.sh ]]; then
  printf 'examples/greeter_assembly/build.sh must exist and be executable\n' >&2
  exit 1
fi

os=$(uname -s | tr '[:upper:]' '[:lower:]')
arch=$(uname -m)

case "$os/$arch" in
  darwin/x86_64|linux/x86_64)
    ;;
  *)
    printf 'assembly checks skipped on unsupported target: %s/%s\n' "$os" "$arch"
    exit 0
    ;;
esac

if ! command -v clang >/dev/null 2>&1; then
  printf 'assembly checks skipped because clang is unavailable\n'
  exit 0
fi

output=$(examples/greeter_assembly/build.sh bob)
if [[ $output != 'hello bob' ]]; then
  printf 'assembly greeter output mismatch: %s\n' "$output" >&2
  exit 1
fi

printf 'assembly checks ok\n'
