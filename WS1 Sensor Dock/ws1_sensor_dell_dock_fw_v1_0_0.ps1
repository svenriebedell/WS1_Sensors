$dock_fw = Get-CimInstance -Namespace root\dcim\sysman -ClassName dcim_Chassis -Filter "ElementName='Docking Station'" | select -ExpandProperty version
Write-Output $dock_fw