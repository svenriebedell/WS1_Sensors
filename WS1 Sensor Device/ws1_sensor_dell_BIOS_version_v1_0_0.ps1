$bios_version = Get-CimInstance -Namespace root\dcim\sysman -ClassName DCIM_BIOSElement | Select -ExpandProperty Version
write-output $bios_version