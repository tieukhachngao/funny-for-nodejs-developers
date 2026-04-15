#!/usr/bin/env bash
set -euo pipefail

a=foo
b=bar

printf '%s %s\n' "$a" "$b"

tmp=$a
a=$b
b=$tmp

printf '%s %s\n' "$a" "$b"
