$vpro_smx = Switch(Get-CimInstance -Namespace root\dcim\sysman -ClassName DCIM_VProSettings | Select -ExpandProperty SMXState)
{
    2 {"Enabled"}
    3 {"Disabled"}
    }
write-output $vpro_smx