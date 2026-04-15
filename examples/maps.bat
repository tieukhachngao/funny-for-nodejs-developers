@echo off
setlocal EnableExtensions EnableDelayedExpansion
set "map1.foo=bar"
if defined map1.foo echo true
echo %map1.foo%
set "map1.foo="
if not defined map1.foo echo false
echo.
echo foo 100
echo bar 200
echo baz 300
