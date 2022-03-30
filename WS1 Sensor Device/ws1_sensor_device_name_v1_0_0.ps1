$device_name = Get-CimInstance Win32_Computersystem | select -ExpandProperty Name
write-output $device_name