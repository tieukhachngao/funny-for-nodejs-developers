#!/usr/bin/env bash
set -euo pipefail

foo() {
  return 1
}

if ! foo; then
  caller 0 || true
  printf 'failed\n'
fi
