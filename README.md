# WS1_Sensors 

This repository includes some examples of managing Dell Clients with VMware Workspace One UEM (Unified Endpoint Management) and Workspace One Intelligence. Sample scripts are written in PowerShell that illustrate the usage of these scripts with UEM (Unified Endpoint Management) management and dashboarding and analytics platforms to provide various data elements from Dell client tools or OS (Operating Systems). 

#### Legal disclaimer: 

THE INFORMATION IN THIS PUBLICATION IS PROVIDED 'AS-IS.' DELL MAKES NO REPRESENTATIONS OR WARRANTIES OF ANY KIND WITH RESPECT TO THE INFORMATION IN THIS PUBLICATION, AND SPECIFICALLY DISCLAIMS IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. In no event shall Dell Technologies, its affiliates, or suppliers, be liable for any damages whatsoever arising from or related to the information contained herein or actions that you decide to take based thereon, including any direct, indirect, incidental, consequential, loss of business profits or special damages, even if Dell Technologies, its affiliates, or suppliers have been advised of the possibility of such damage. 

#### Name convention: 

UEMName_DellTool/WMI_multi/noting_Values 

**example: ** 

WS1_sensor_DCM_multi_Docking_Firmware_Model_PowerAC_ServiceTag 

This means script is for VMware Workspace ONE as Sensor need Dell Command Monitor and collection multi values like Firmware, Model, PowerAC and ServiceTag. 

If _multi_ is missing this means script is only for one specific value. 

You will find two folders, one for multi string output and single value output. 

The script structure support import by API. Please review the following link to get documentation on how it works. 
https://github.com/vmware-samples/euc-samples/blob/master/UEM-Samples/Sensors/Windows/import_sensor_samples.ps1 


Most of the Dell commercial client systems are Windows-based, WMI (Windows Management Instrumentation) and PowerShell are available in the IT infrastructure. This allows the IT professionals to integrate the scripts with their existing infrastructure or develop custom scripts based on their requirements. Microsoft has done a wonderful job enhancing the PowerShell capabilities to integrate and manage WMI (Windows Management Instrumentation) infrastructure. 
 
The Dell commercial client BIOS (Basic Input Output System) offers configurable entities through WMI (Windows Management Instrumentation), and the script library provides sample scripts to accomplish the tasks. This method configures the Dell business client systems that contain the common interface across multiple brands, including Latitude, OptiPlex, Precision, and XPS laptops. It enhances the hardware management features and does not change across the various versions of the Windows operating systems. 
  
To learn more about WMI (Windows Management Instrumentation) and PowerShell for more details on WMI, see [https://docs.microsoft.com/en-us/windows/win32/wmisdk/wmi-start-page] For more details on PowerShell, see [https://docs.microsoft.com/en-us/powershell/scripting/overview?view=powershell-7] For more details on Agentless BIOS (Basic Input Output System) manageability, see [https://downloads.dell.com/manuals/common/dell-agentless-client-manageability.pdf] 

Microsoft Intune Microsoft Intune is a cloud-based service that focuses on Mobile Device Management (MDM). For more details on Microsoft Intune, see [https://docs.microsoft.com/en-us/mem/intune/fundamentals/what-is-intune] 

Deploying a PowerShell script from Intune the Microsoft Intune management extension allows you to upload the PowerShell scripts in Intune. You can run these scripts on the systems which are running on Windows 10 operating systems. The management extension enhances the Mobile Device Management (MDM) capabilities. For more information about Deploying a PowerShell script from Intune, see [https://docs.microsoft.com/en-us/mem/intune/apps/intune-management-extension] 
