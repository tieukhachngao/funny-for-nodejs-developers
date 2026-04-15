#!/usr/bin/env bash
set -euo pipefail

printf 'print to stdout\n'
printf 'format %s %d\n' example 1
printf 'print to stderr' >&2
