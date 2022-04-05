﻿# Returns value for Count RAM Device Size
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
   This PowerShell is using WMI to collect values from Win32_PhysicalMemory. Select Value for Device RAM Size
   IMPORTANT: You need Workspace One UEM and Intelligence to using the full function of this Sensor.
   IMPORTANT: This script does not reboot the system to apply or query system.
.DESCRIPTION
   Powershell is using WMI for selcect values of Class Win32_PhysicalMemory and handover to Workspace One.You need import this script in the Device / Sensors secetion in Workspace One UEM.
   
#>


#Select all values from Win32_PhysicalMemory
$RAM_Data = Get-CimInstance -ClassName Win32_PhysicalMemory

#Collect values form $RAM_Data
$RAM_ModulCount_Value = $RAM_Data.Count
$RAM_Capacity_Value = $RAM_Data.Capacity.Item(0)/1GB
$RAM_Capacity_Total_Value = $RAM_Capacity_Value*$RAM_ModulCount_Value




#prepare string for output
$OutputStatement = $RAM_Capacity_Total_Value

Write-Output $OutputStatement