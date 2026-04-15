@echo off
setlocal EnableExtensions EnableDelayedExpansion
echo print to stdout
echo format example 1
>&2 <nul set /p dummy=print to stderr
