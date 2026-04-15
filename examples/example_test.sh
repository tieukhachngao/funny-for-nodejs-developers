#!/usr/bin/env bash
set -euo pipefail

sum() {
  printf '%d\n' "$(($1 + $2))"
}

tests=(
  '1 1 2'
  '2 3 5'
  '5 5 10'
)

for test_case in "${tests[@]}"; do
  read -r a b want <<<"$test_case"
  got=$(sum "$a" "$b")
  if [[ $got != "$want" ]]; then
    printf 'want %s, got %s\n' "$want" "$got" >&2
    exit 1
  fi
done
