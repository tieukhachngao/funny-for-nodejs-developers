#!/usr/bin/env bash
set -euo pipefail

foo() {
  printf 'my exception\n' >&2
  return 1
}

if ! err=$(foo 2>&1); then
  printf 'caught exception: %s' "$err"
fi
