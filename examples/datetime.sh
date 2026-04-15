#!/usr/bin/env bash
set -euo pipefail

now_unix=$(date +%s)
printf '%s\n' "$now_unix"

datestr='2019-01-17T09:24:23+00:00'
date_unix=1547717063
printf '%s\n' "$date_unix"

format_utc() {
  local unix=$1
  if date -u -r "$unix" '+%Y-%m-%d %H:%M:%S +0000 UTC' >/dev/null 2>&1; then
    date -u -r "$unix" '+%Y-%m-%d %H:%M:%S +0000 UTC'
  else
    date -u -d "@$unix" '+%Y-%m-%d %H:%M:%S +0000 UTC'
  fi
}

format_utc "$date_unix"

future_unix=$((date_unix + 14 * 24 * 60 * 60))
format_utc "$future_unix"
if date -u -r "$date_unix" '+%m/%d/%Y' >/dev/null 2>&1; then
  date -u -r "$date_unix" '+%m/%d/%Y'
else
  date -u -d "@$date_unix" '+%m/%d/%Y'
fi
