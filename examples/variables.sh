#!/usr/bin/env bash
set -euo pipefail

foo=foo
bar=foo
baz=bar
readonly qux=qux

: "$foo" "$bar" "$baz" "$qux"
