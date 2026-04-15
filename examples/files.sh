#!/usr/bin/env bash
set -euo pipefail

file=test.txt

: >"$file"
chmod 755 "$file"

exec 3<>"$file"
printf 'hello world.' >&3

exec 3<&-

read -r -n 12 content <"$file"
printf '%s\n' "$content"

rm -f "$file"
