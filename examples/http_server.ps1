#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

# Native PowerShell HttpListener setup
$listener = [System.Net.HttpListener]::new()
