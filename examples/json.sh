#!/usr/bin/env bash
set -euo pipefail

jsonstr='{"foo":"bar"}'
foo=$(printf '%s\n' "$jsonstr" | sed -E 's/.*"foo":"([^"]+)".*/\1/')

printf '&{%s}\n' "$foo"
printf '{"foo":"%s"}\n' "$foo"
