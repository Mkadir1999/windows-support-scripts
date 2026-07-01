# Windows Support Scripts

This repository contains simple PowerShell scripts for common IT support and Windows troubleshooting tasks.

## Purpose

The goal of this repository is to practice practical help desk and desktop support automation using PowerShell.

## Scripts Included

### System Information

Collects basic system information such as computer name, operating system, CPU, RAM, disk space, and current user.

### Network Troubleshooting

Runs common network checks including IP configuration, DNS resolution, ping tests, and gateway connectivity.

### Disk Cleanup Check

Checks disk space and identifies low-storage conditions that may affect Windows performance.

### User Account Check

Practices basic user and local group review commands for Windows support scenarios.

## Skills Practiced

* PowerShell scripting
* Windows troubleshooting
* Help desk automation
* System diagnostics
* Network diagnostics
* Documentation

## Example Commands

```powershell
Get-ComputerInfo
ipconfig /all
Test-Connection google.com
Resolve-DnsName google.com
Get-LocalUser
Get-LocalGroup
Get-PSDrive
```

## Status

In progress. More scripts will be added as I continue building practical IT support tools.
