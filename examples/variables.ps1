#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$foo = 'foo'
$bar = 'foo'
$baz = 'bar'
Set-Variable -Name qux -Value 'qux' -Option Constant
