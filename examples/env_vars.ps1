#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

if ($null -eq $env:API_KEY) { "" } else { $env:API_KEY }
