#!/usr/bin/env bash
set -euo pipefail

while true; do
  while IFS= read -r message; do
    printf 'Received: %s\n' "$message"
  done | nc -l -p 3000
done
