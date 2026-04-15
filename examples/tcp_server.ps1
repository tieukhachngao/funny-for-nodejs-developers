#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

# Native PowerShell TCP listener
$listener = [System.Net.Sockets.TcpListener]::new([System.Net.IPAddress]::Any, 3000)
$listener.Start(); $listener.Stop()
