##################################################################
#
# Name: Sensor Dell BIOS Thermal Management Setting availible (need Dell Command Monitor on the device)
#
# Author: Sven Riebe
#
# Status: test
#
# Version 1.0.0
#
# Date: 07-21-2021

$thermal_setting = Get-CimInstance -Namespace root\dcim\sysman -ClassName dcim_biosenumeration -Filter "AttributeName='Thermal Management'" | select -ExpandProperty Currentvalue

If ($thermal_setting -ge 1)
{$thermal = "supported"
}
else
{$thermal = "unsupported"
}
Write-Output $thermal
