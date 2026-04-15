#!/usr/bin/env bash
set -euo pipefail

urlstr='http://bob:secret@sub.example.com:8080/somepath?foo=bar'

scheme=${urlstr%%://*}
rest=${urlstr#*://}
user=${rest%%@*}
host_path=${rest#*@}
host_port=${host_path%%/*}
path_query=/${host_path#*/}
path=${path_query%%\?*}
query=${path_query#*\?}
host=${host_port%%:*}
port=${host_port##*:}

printf '%s\n' "$scheme"
printf '%s\n' "$user"
printf '%s\n' "$port"
printf '%s\n' "$host"
printf '%s\n' "$path"
printf 'map[%s]\n' "$query"
