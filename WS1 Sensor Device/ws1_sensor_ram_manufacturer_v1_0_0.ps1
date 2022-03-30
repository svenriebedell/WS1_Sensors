$ram_manufacturer = Get-CimInstance -Namespace root\dcim\sysman -ClassName DCIM_PhysicalMemory | Select -ExpandProperty Manufacturer
write-output $ram_manufacturer[0]