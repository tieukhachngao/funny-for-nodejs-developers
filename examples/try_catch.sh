#!/usr/bin/env bash
set -euo pipefail

foo() {
  local fail=$1
  if [[ $fail == true ]]; then
    printf 'my error\n' >&2
    return 1
  fi
}

if ! err=$(foo true 2>&1); then
  printf 'caught error: %s\n' "$err"
fi
