$DockModel = Get-CimInstance -Namespace root\dcim\sysman -ClassName dcim_Chassis -Filter "ElementName='Docking Station'" | select -ExpandProperty Name
Write-Output $DockModel