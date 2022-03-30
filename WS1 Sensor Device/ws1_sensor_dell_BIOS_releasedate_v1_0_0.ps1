$bios_releasedate = Get-CimInstance -Namespace root\dcim\sysman -ClassName DCIM_BIOSElement | Select -ExpandProperty ReleaseDate
write-output $bios_releasedate