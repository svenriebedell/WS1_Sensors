# WS1_Sensors
his repository includes some examples to manage Dell Clients with VMware WorkspaceOne UEM and WorkspaceOne Intelligence. Sample scripts are written in PowerShell that illustrates the usage of these scripts with UEM management and dashboarding and analytics platforms to provide various data elements from Dell client tools or OS.

Legal disclaimer:
THE INFORMATION IN THIS PUBLICATION IS PROVIDED 'AS-IS.' DELL MAKES NO REPRESENTATIONS OR WARRANTIES OF ANY KIND WITH RESPECT TO THE INFORMATION IN THIS PUBLICATION,
AND SPECIFICALLY DISCLAIMS IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
In no event shall Dell Technologies, its affiliates or suppliers, be liable for any damages whatsoever arising from or related to the information contained herein or
actions that you decide to take based thereon, including any direct, indirect, incidental, consequential, loss of business profits or special damages,
even if Dell Technologies, its affiliates or suppliers have been advised of the possibility of such damages.

Name convention:

UEMName_DellTool/WMI_multi/noting_Values

example:
WS1_sensor_DCM_multi_Docking_Firmware_Model_PowerAC_ServiceTag

This means script is for VMware Workspace ONE as Sensor need Dell Command Monitor and collection multi values like Firmware,Model,PowerAC and ServiceTag.
If _multi_ is missing this means script is only for one value.

You will find two folders one for multi string output and single value output.

The script structure support import by API. Please review the following link to get an documentation how it works.

https://github.com/vmware-samples/euc-samples/blob/master/UEM-Samples/Sensors/Windows/import_sensor_samples.ps1

