<#
.SYNOPSIS
    Configures only the Account Lockout Duration on a single Windows 10 machine.
.DESCRIPTION
    Sets account lockout duration to 15 minutes without altering threshold or reset counter.
    Run in an elevated PowerShell session (Run as Administrator).

.NOTES
    Author          : Zachary Moses
    LinkedIn        : https://www.linkedin.com/in/zach-moses-a3722a212/
    GitHub          : https://github.com/users/zacharytmoses-cyber
    Date Created    : 2025-09-27
    Last Modified   : 2025-09-27
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AC-000005

.TESTED ON
    Date(s) Tested  : 2025-09-27
    Tested By       : Zachary Moses
    Systems Tested  : Windows 10 Pro 10.0.19045 Build 19045
    PowerShell Ver. : 5.1.19041.6328

.USAGE

Please run this as administrator after testing in isolated sandbox vm prior to any production systems. Run this in Windows Powershell. 
#>
# Desired lockout duration (minutes)
$lockoutDuration = 15

Write-Host "Updating Account Lockout Duration to $lockoutDuration minutes..." -ForegroundColor Cyan

# Apply only the lockout duration setting
& net accounts /lockoutduration:$lockoutDuration

# Show results
Write-Host "`nCurrent Account Lockout Policy:" -ForegroundColor Green
& net accounts
