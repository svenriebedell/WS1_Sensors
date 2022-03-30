$oem_model = Get-CimInstance -Namespace root\dcim\sysman -ClassName dcim_Chassis -Filter "Name='Main System Chassis'" | select -ExpandProperty Model
Write-Output $oem_model