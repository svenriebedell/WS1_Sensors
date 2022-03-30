﻿##################################################################
#
# Name: Sensor Dell TrustedDevice for Firewall status
#
# Author: Oliver Duesterhoeft, Sven Riebe
#
# Status: test
#
# Version 1.0.0
#
# Date: 06-29-2021

Function DellTrustedDevice_SecurityAssessment()  {
    $ProviderName = "Trusted Device | Security Assessment"
    $LogName = "Dell"  # %SystemRoot%\System32\Winevt\Logs\Dell.evtx

    $Result = Get-WinEvent   -ProviderName $ProviderName -MaxEvents 1  # | format-list # -FilterXPath 
    # Write-Host   "`r`nTime: $($Result.TimeCreated)" -NoNewline 
    Write-Host   "`r`n   -   ProviderName: '$($Result.ProviderName)'" -NoNewline 
    Write-Host   "   -   EventID: $($Result.ID)" 
    return $Result.Message
    }


$LogName = "Dell"  # %SystemRoot%\System32\Winevt\Logs\Dell.evtx
$EventLevelError = 2    
$EventLevelWarning = 3     
$ProviderName ="Trusted Device | BIOS Events and IoA"
$ProviderName = "Trusted Device | Security Assessment"

# Get-WinEvent @{logname=$LogName;starttime=[datetime]::today;level=$EventLevelError } # |  group logname –NoElement
# Get-WinEvent  -ProviderName $ProviderName | format-list # -FilterXPath 
# Get-WinEvent @{logname=$LogName;starttime=[datetime]::today;level=$EventLevelError } | format-list # | select logname, name, timecreated, id, message 


$Message = DellTrustedDevice_SecurityAssessment
$Firewall ="UNKNOWN"
foreach ($Line in $Message.Split([Environment]::NewLine) )     {     if ( $Line.contains("Firewall solution detected and enabled: ") ) { $Firewall = ($Line.Split(" "))[-1] }     }
Write-Output $Firewall