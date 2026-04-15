#!/usr/bin/env bash
set -euo pipefail

for ((i = 0; i <= 5; i++)); do
  printf '%d\n' "$i"
done
