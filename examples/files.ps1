#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$file = "test.txt"
New-Item -ItemType File -Path $file -Force | Out-Null
[System.IO.File]::WriteAllText($file, "hello world.")
[System.IO.File]::ReadAllText($file)
Remove-Item $file
