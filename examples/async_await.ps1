#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

function Hello([string]$name) { Start-Sleep 1; if ($name -eq "fail") { throw "failed" } else { "hello $name" } }
try { Hello bob } catch { [Console]::Error.WriteLine($_.Exception.Message) }
try { Hello fail } catch { [Console]::Error.WriteLine($_.Exception.Message) }
