# Basic Network Troubleshooting Script
# Purpose: Run common network checks for help desk troubleshooting

Write-Host "===== IP Configuration ====="
ipconfig /all

Write-Host "`n===== Testing Default Gateway ====="
$gateway = (Get-NetIPConfiguration | Where-Object {$_.IPv4DefaultGateway -ne $null}).IPv4DefaultGateway.NextHop

if ($gateway) {
    Test-Connection $gateway -Count 4
} else {
    Write-Host "No default gateway found."
}

Write-Host "`n===== Testing Internet Connectivity ====="
Test-Connection 8.8.8.8 -Count 4

Write-Host "`n===== Testing DNS Resolution ====="
Resolve-DnsName google.com

Write-Host "`n===== Testing Website Connectivity ====="
Test-Connection google.com -Count 4
