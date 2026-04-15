#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$u = [uri]"http://bob:secret@sub.example.com:8080/somepath?foo=bar"
$u.Scheme
$u.UserInfo
$u.Port
$u.Host
$u.AbsolutePath
"map[foo:bar]"
