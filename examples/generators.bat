@echo off
setlocal EnableExtensions EnableDelayedExpansion
for %%v in (hello world) do echo %%v true
echo  false
for %%v in (hello world) do echo %%v
for %%v in (hello world) do echo %%v true
echo  false
