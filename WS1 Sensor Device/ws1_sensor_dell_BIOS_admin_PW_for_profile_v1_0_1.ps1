﻿##################################################################
#
# Name: Sensor Dell actual AdminPW on the Device by BIOS Profile
#
# Author: Sven Riebe
#
# Status: test
#
# Version 1.0.1
#
# Date: 09-14-2021


<#
1.0.1   cover Static and Random PW

#>


#Variables
$HashKeyCheck = ""
$HashsetCheck =""
$PWKey = ""
$serviceTag = ""
$AdminPw = ""


function Test-RegistryValue {

param (

 [parameter(Mandatory=$true)]
 [ValidateNotNullOrEmpty()]$Path,

[parameter(Mandatory=$true)]
 [ValidateNotNullOrEmpty()]$Value
)

try {

Get-ItemProperty -Path $Path | Select-Object -ExpandProperty $Value -ErrorAction Stop | Out-Null
 return $true
 }

catch {

return $false

}

}

$HashKeyCheck = Test-RegistryValue -Path HKLM:\SOFTWARE\Dell\BIOS -Value Hash

If ($HashKeyCheck -eq false)
    {
    $PWKey = Get-ItemProperty -Path 'HKLM:\SOFTWARE\Dell\BIOS\' -Name BIOS | select -ExpandProperty BIOS
    $serviceTag = Get-ItemProperty -Path 'HKLM:\SOFTWARE\Dell\BIOS\' -Name ServiceTag | select -ExpandProperty ServiceTag
    $AdminPw = "$serviceTag$PWKey"
    }
else
    $HashsetCheck = Get-ItemProperty -Path 'HKLM:\SOFTWARE\Dell\BIOS\' -Name Hash | select -ExpandProperty Hash
    
    If ($HashsetCheck -match "")
        {
        $AdminPw = "No Password"
        }
    else
        {
        $AdminPw = Get-ItemProperty -Path 'HKLM:\SOFTWARE\Dell\BIOS\' -Name Hash | select -ExpandProperty Hash
        }


Write-Output $AdminPw