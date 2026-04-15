#!/usr/bin/env pwsh
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

Resolve-DnsName google.com -Type NS
Resolve-DnsName google.com -Type A
Resolve-DnsName google.com -Type MX
Resolve-DnsName google.com -Type TXT
Resolve-DnsName google.com -Type NS -Server 1.1.1.1
