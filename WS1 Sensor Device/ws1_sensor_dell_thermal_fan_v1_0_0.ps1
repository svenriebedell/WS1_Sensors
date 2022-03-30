$thermal_fan = switch(Get-CimInstance -Namespace root\dcim\sysman -ClassName DCIM_ThermalInformation -Filter "AttributeName='Fan Failure Mode'" | Select -ExpandProperty CurrentValue)
{ 0 {"Catastrophic Fan Failure"}
  1 {"Minimal Fan Failure"} 
  2 {"No Failure"}
   }
write-output $thermal_fan