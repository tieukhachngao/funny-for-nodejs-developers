#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

function Foo([bool]$fail) { if ($fail) { throw "my error" } }
try { Foo $true } catch { "caught error: $($_.Exception.Message)" }
