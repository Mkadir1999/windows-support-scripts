# Basic Windows System Information Script
# Purpose: Collect common system details for IT support troubleshooting

Write-Host "===== System Information ====="

Write-Host "Computer Name:" $env:COMPUTERNAME
Write-Host "Current User:" $env:USERNAME

Write-Host "`n===== Operating System ====="
Get-CimInstance Win32_OperatingSystem | Select-Object Caption, Version, BuildNumber, OSArchitecture

Write-Host "`n===== CPU ====="
Get-CimInstance Win32_Processor | Select-Object Name, NumberOfCores, NumberOfLogicalProcessors

Write-Host "`n===== Memory ====="
Get-CimInstance Win32_ComputerSystem | Select-Object TotalPhysicalMemory

Write-Host "`n===== Disk Space ====="
Get-PSDrive -PSProvider FileSystem | Select-Object Name, Used, Free

Write-Host "`n===== Network Configuration ====="
ipconfig /all
