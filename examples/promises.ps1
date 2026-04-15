#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$job = Start-Job { Start-Sleep 1; "resolved: foo" }
Receive-Job $job -Wait -AutoRemoveJob
$jobs = "A","B","C" | ForEach-Object { Start-Job -ArgumentList $_ -ScriptBlock { param($v) Start-Sleep 1; "resolved: $v" } }
$results = $jobs | Receive-Job -Wait -AutoRemoveJob
"[$($results -join ' ')]"
