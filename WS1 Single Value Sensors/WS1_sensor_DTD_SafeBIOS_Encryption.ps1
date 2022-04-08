﻿# Returns value for SafeBIOS Encryption
# Return Type: String
# Execution Context: System
# Author: Sven Riebe


<#
_author_ = Sven Riebe <sven_riebe@Dell.com>
_twitter_ = @SvenRiebe
_version_ = 1.0.0
_Dev_Status_ = Test
Copyright © 2022 Dell Inc. or its subsidiaries. All Rights Reserved.

No implied support and test in test environment/device before using in any production environment.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
#>

<#Version Changes

1.0.0   inital version


#>

<#
.Synopsis
   This PowerShell is using Microsoft Event for control Dell SafeBIOS Security Assessment. Select Value for SafeBIOS Encryption.
   IMPORTANT: You need Workspace One UEM and Intelligence to using the full function of this Sensor.
   IMPORTANT: This script does not reboot the system to apply or query system.
.DESCRIPTION
   Powershell is using WMI for selcect values of MS Events and handover to Workspace One.You need import this script in the Device / Sensors secetion in Workspace One UEM.
    
#>

 
# Function for snipping SafeBIOS values from the MS Event
function Get-SafeBIOSValue{
    
    # Parameter
    param(
        [string]$Value
        
         )

    # Collect last MS Event for Trusted Device | Security Assessment
    $SelectLastLog = Get-EventLog -LogName Dell -Source "Trusted Device | Security Assessment" -Newest 1 | select -ExpandProperty message
    
    # Prepare value for single line and value
     
    $ScoreValue = ($SelectLastLog.Split([Environment]::newline) | Select-String $Value)
    $ScoreLine = ($ScoreValue.Line).Split(' ')[-1]

    $ScoreValue = $ScoreLine

    Return $ScoreValue
     
}


#Select score values
$Safe_DiskEncrypt_Value = Get-SafeBIOSValue -Value 'Disk Encryption'



#Prepare output string
$OutputStatement = $Safe_DiskEncrypt_Value

Write-Output $OutputStatement