$monitor_resvertical = Get-CimInstance -Namespace root\dcim\sysman -ClassName DCIM_FlatPanel | Select -ExpandProperty VerticalResolution
write-output $monitor_resvertical