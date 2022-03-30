$battery_type = Switch (Get-CimInstance -Namespace root\dcim\sysman -ClassName DCIM_Battery | Select -ExpandProperty Chemistry)
{
    1 {"Other"}
    2 {"Unknown"}
    3 {"Lead Acid"}
    4 {"Nickel Cadmium"}
    5 {"Nickel Metal Hydride"}
    6 {"Lithium-ion"}
    7 {"Zinc air"}
    8 {"Lithium Polymer"}
    }
write-output $battery_type