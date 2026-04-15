#!/usr/bin/env bash
set -euo pipefail

name=bob
age=21
message=$(printf '%s is %d years old' "$name" "$age")

printf '%s\n' "$message"
