#!/usr/bin/env bash
set -euo pipefail

greet() {
  local name=${1:-stranger}
  printf 'hello %s\n' "$name"
}

message=$(greet)
printf '%s\n' "$message"

name=bob
message=$(greet "$name")
printf '%s\n' "$message"
