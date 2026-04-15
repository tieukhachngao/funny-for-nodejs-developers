#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

Write-Error ((Get-Date -Format 'yyyy/MM/dd HH:mm:ss') + ' hello world')
