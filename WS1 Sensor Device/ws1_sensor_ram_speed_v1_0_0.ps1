$ram_speed = Get-CimInstance -Namespace root\dcim\sysman -ClassName DCIM_PhysicalMemory | Select -ExpandProperty Speed
write-output $ram_speed[0]