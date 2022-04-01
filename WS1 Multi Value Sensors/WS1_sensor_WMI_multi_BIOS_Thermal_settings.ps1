﻿# Returns value for BIOS values for FanHealthState, ThermalMode
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
   This PowerShell is using WMI to collect values from Win32_FAN Class. Select Value for FanHealthState, ThermalMode.
   IMPORTANT: You need Workspace One UEM and Intelligence to using the full function of this Sensor.
   IMPORTANT: This script does not reboot the system to apply or query system.
.DESCRIPTION
   Powershell is using WMI for selcect values of Class Win32_FAN and handover to Workspace One.You need import this script in the Device / Sensors secetion in Workspace One UEM.
   
#>
#Prepare variables
$OutputStatement = "Device Details: "
$BIOS_ThermalManagement = "ThermalMode: "
$FanHealthState = "Fan Healthstate: "
$FanHealthState_Value = @()
$FanNumber = "Fan No."
$Counter = 1
$FanCounter = ""

#Select value of thermalmode currentvalue
$BIOS_ThermalManagement_Value = Get-CimInstance -Namespace root/dcim/sysman/biosattributes -ClassName EnumerationAttribute -Filter 'AttributeName="ThermalManagement"' | select -ExpandProperty CurrentValue

#Prepare Multi string part1
$OutputStatement = $OutputStatement+$BIOS_ThermalManagement+$BIOS_ThermalManagement_Value+" "


#Select value of Fan HealthState
$FanHealthState_Value = @(Get-CimInstance -ClassName Win32_Fan | select -ExpandProperty Status)

foreach($i in $FanHealthState_Value)
    {
    $FanCounter = $FanNumber+$Counter
    
    #Prepare Multi string part2
    $OutputStatement = $OutputStatement+$FanCounter+" "+$FanHealthState_Value[1-$Counter]+" "

    #Counter for Fan No.
    $Counter = $Counter +1
    }

Write-Output $OutputStatement