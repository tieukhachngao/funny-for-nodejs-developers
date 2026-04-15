#!/usr/bin/env bash
set -euo pipefail

now_unix=$(date +%s)
printf '%s\n' "$now_unix"

datestr='2019-01-17T09:24:23+00:00'
date_unix=$(date -d "$datestr" +%s)
printf '%s\n' "$date_unix"
date -d "@$date_unix" '+%Y-%m-%d %H:%M:%S %z %Z'

future_unix=$((date_unix + 14 * 24 * 60 * 60))
date -d "@$future_unix" '+%Y-%m-%d %H:%M:%S %z %Z'
date -d "@$date_unix" '+%m/%d/%Y'
