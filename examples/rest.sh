#!/usr/bin/env bash
set -euo pipefail

sum() {
  local total=0
  for n in "$@"; do
    total=$((total + n))
  done
  printf '%d\n' "$total"
}

total=$(sum 1 2 3 4 5)
printf '%s\n' "$total"
