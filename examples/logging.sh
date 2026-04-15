#!/usr/bin/env bash
set -euo pipefail

printf '%s hello world\n' "$(date '+%Y/%m/%d %H:%M:%S')" >&2
