@echo off
setlocal EnableExtensions EnableDelayedExpansion
set "jsonstr={""foo"":""bar""}"
echo ^&{bar}
echo {""foo"":""bar""}
