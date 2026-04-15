#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

for ($i = 0; $i -le 3; $i++) { Start-Sleep -Seconds 1; "called $i" }
