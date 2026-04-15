#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

function Greet([string]$Name = "stranger") { "hello $Name" }
Greet
Greet bob
