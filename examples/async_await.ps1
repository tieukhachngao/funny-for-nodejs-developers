#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

function Hello([string]$name) { Start-Sleep 1; if ($name -eq "fail") { throw "failed" } else { "hello $name" } }
try { Hello bob } catch { Write-Error $_ }
try { Hello fail } catch { Write-Error $_.Exception.Message -ErrorAction Continue }
