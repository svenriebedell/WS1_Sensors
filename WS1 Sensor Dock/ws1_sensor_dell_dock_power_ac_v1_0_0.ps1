$dock_ac = Get-CimInstance -Namespace root\dcim\sysman -ClassName dcim_Chassis -Filter "ElementName='Docking Station'" | select -ExpandProperty Model
Write-Output $dock_ac