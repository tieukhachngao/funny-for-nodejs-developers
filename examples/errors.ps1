#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$err1 = [System.Exception]::new("some error")
$err1.Message
$err2 = [System.Exception]::new("my custom error")
$err2.Message
