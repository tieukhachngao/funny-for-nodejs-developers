#!/usr/bin/env bash
set -euo pipefail

printf 'server listening 0.0.0.0:3000\n'
while true; do
  nc -ul -p 3000 | while IFS= read -r data; do
    printf 'received: %s\n' "$data"
  done
done
