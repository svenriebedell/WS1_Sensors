# WS1_Sensors
These are sensors I have made for my Demo environment. You can use this for own. Please beware this are testing script so from time to time I will change something or it could be some one does not working correctly in your environment. Using is on your own risk and support.
Please let me know if you find issues.

Name convention:

UEMName_DellTool/WMI_multi/noting_Values

example:
WS1_sensor_DCM_multi_Docking_Firmware_Model_PowerAC_ServiceTag

This means script is for VMware Workspace ONE as Sensor need Dell Command Monitor and collection multi values like Firmware,Model,PowerAC and ServiceTag.
If _multi_ is missing this means script is only for one value.

You will find two folders one for multi string output and single value output.

The script structure support import by API. Please review the following link to get an documentation how it works.

https://github.com/vmware-samples/euc-samples/blob/master/UEM-Samples/Sensors/Windows/import_sensor_samples.ps1

