#!/usr/bin/env bash
set -euo pipefail

hello() {
  local name=$1
  sleep 1
  if [[ $name == fail ]]; then
    printf 'failed\n' >&2
    return 1
  fi
  printf 'hello %s\n' "$name"
}

hello bob || true
hello fail || true
