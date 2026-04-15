@echo off
setlocal EnableExtensions EnableDelayedExpansion
set "a=foo"
set "b=bar"
echo %a% %b%
set "tmp=%a%"
set "a=%b%"
set "b=%tmp%"
echo %a% %b%
