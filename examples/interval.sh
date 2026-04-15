#!/usr/bin/env bash
set -euo pipefail

callback() {
  printf 'called %d\n' "$1"
}

i=0
while true; do
  sleep 1
  callback "$i"
  if (( i == 3 )); then
    break
  fi
  i=$((i + 1))
done
