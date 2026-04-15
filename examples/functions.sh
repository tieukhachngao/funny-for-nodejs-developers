#!/usr/bin/env bash
set -euo pipefail

add() {
  printf '%d\n' "$(($1 + $2))"
}

result=$(add 2 3)
printf '%s\n' "$result"
