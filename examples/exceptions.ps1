#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

function Foo { throw "my exception" }
try { Foo } catch { Write-Host -NoNewline "caught exception: $($_.Exception.Message)" }
