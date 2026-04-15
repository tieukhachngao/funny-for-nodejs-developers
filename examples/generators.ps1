#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

function Generator { "hello"; "world" }
foreach ($value in Generator) { "$value true" }
" false"
Generator
foreach ($value in "hello", "world") { "$value true" }
" false"
