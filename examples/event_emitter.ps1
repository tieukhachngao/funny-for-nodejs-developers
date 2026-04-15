#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$handlers = @{}
$handlers["my-event"] = { param($msg) $msg }
$handlers["my-other-event"] = { param($msg) $msg }
& $handlers["my-event"] "hello world"
& $handlers["my-other-event"] "hello other world"
