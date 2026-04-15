#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

function Foo { throw "failed" }
try { Foo } catch { $_.ScriptStackTrace }
