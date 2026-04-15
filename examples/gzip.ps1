#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$data = [Text.Encoding]::UTF8.GetBytes("hello world")
$out = [IO.MemoryStream]::new()
$gzip = [IO.Compression.GzipStream]::new($out, [IO.Compression.CompressionMode]::Compress)
$gzip.Write($data,0,$data.Length); $gzip.Close()
"compressed: true"
$inputStream = [IO.MemoryStream]::new($out.ToArray())
$gunzip = [IO.Compression.GzipStream]::new($inputStream, [IO.Compression.CompressionMode]::Decompress)
$reader = [IO.StreamReader]::new($gunzip)
$reader.ReadToEnd()
