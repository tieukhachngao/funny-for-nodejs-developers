#!/usr/bin/env bash
set -euo pipefail

printf 'Enter name: '
IFS= read -r text
name=${text//$'\r'/}
printf 'Your name is: %s\n' "$name"
