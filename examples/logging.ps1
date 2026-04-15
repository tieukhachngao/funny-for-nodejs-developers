#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

[Console]::Error.WriteLine((Get-Date -Format 'yyyy/MM/dd HH:mm:ss') + ' hello world')
