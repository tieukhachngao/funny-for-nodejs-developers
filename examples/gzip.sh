#!/usr/bin/env bash
set -euo pipefail

tmp=$(mktemp)
trap 'rm -f "$tmp"' EXIT

printf 'hello world' | gzip -c >"$tmp"
printf 'compressed: true\n'
gzip -cd "$tmp"
printf '\n'
