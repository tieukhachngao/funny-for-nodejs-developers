#!/usr/bin/env bash
set -euo pipefail

async_method() {
  local value=$1
  sleep 1
  printf 'resolved: %s\n' "$value"
}

async_method foo &
pid1=$!

tmpdir=$(mktemp -d)
trap 'rm -rf "$tmpdir"' EXIT

async_method A >"$tmpdir/a" &
async_method B >"$tmpdir/b" &
async_method C >"$tmpdir/c" &

wait "$pid1"
wait

printf '[%s %s %s]\n' \
  "$(cat "$tmpdir/a")" \
  "$(cat "$tmpdir/b")" \
  "$(cat "$tmpdir/c")"
