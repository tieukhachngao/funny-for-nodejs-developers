@echo off
setlocal EnableExtensions EnableDelayedExpansion
set "foo=default value"
set "qux=false"
:parse
if "%~1"=="" goto parsed
if "%~1"=="-foo" set "foo=%~2"& shift& shift& goto parse
if "%~1"=="--foo" set "foo=%~2"& shift& shift& goto parse
if "%~1"=="-qux" set "qux=true"& shift& goto parse
if "%~1"=="--qux" set "qux=true"& shift& goto parse
shift
goto parse
:parsed
echo foo: %foo%
echo qux: %qux%
