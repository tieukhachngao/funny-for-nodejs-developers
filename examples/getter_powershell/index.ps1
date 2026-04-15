#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

function Greet {
  param(
    [string]$Name = 'bob'
  )

  Write-Host -NoNewline "hello $Name"
}

if ($MyInvocation.InvocationName -ne '.') {
  Greet -Name ($(if ($args.Count -gt 0) { $args[0] } else { 'bob' }))
}
