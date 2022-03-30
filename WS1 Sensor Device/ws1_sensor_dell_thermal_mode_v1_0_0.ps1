$thermal_mode = switch(Get-CimInstance -Namespace root\dcim\sysman -ClassName DCIM_ThermalInformation -Filter "AttributeName='Thermal Mode'" | Select -ExpandProperty CurrentValue)
{ 0 {"Optimized"}
  1 {"Cool"} 
  2 {"Quiet"}
  3 {"Performance"}
  }
write-output $thermal_mode