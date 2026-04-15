@echo off
setlocal EnableExtensions EnableDelayedExpansion
echo SHA256 example uses certutil on Windows.
certutil -hashfile "%~f0" SHA256 | findstr /v /i "hash certutil"
