$monitor_reshorizontal = Get-CimInstance -Namespace root\dcim\sysman -ClassName DCIM_FlatPanel | Select -ExpandProperty HorizontalResolution
write-output $monitor_reshorizontal