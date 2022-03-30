$monitor_brightness = Get-CimInstance -Namespace root\dcim\sysman -ClassName DCIM_FlatPanel | Select -ExpandProperty Brightness
write-output $monitor_brightness