#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$listener = [System.Net.HttpListener]::new()
$listener.Prefixes.Add("http://*:8080/")
$listener.Start()
try {
  while ($true) {
    $context = $listener.GetContext()
    $bytes = [Text.Encoding]::UTF8.GetBytes("hello world")
    $context.Response.StatusCode = 200
    $context.Response.ContentType = "text/plain"
    $context.Response.ContentLength64 = $bytes.Length
    $context.Response.OutputStream.Write($bytes, 0, $bytes.Length)
    $context.Response.OutputStream.Close()
  }
}
finally {
  $listener.Stop()
}
