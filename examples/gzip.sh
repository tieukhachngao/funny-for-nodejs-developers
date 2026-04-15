#!/usr/bin/env bash
set -euo pipefail

tmp=$(mktemp)
trap 'rm -f "$tmp"' EXIT

printf 'hello world' | gzip -c >"$tmp"
od -An -t u1 -v "$tmp" | awk '{$1=$1; print "[" $0 "]"}'
gzip -cd "$tmp"
printf '\n'
