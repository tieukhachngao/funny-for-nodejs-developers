@echo off
setlocal EnableExtensions EnableDelayedExpansion
nslookup -type=ns google.com
nslookup google.com
nslookup -type=mx google.com
nslookup -type=txt google.com
