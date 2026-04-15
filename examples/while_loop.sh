#!/usr/bin/env bash
set -euo pipefail

i=0
while (( i <= 5 )); do
  printf '%d\n' "$i"
  i=$((i + 1))
done
