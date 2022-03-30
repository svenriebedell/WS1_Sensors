$vpro_vmx = Switch(Get-CimInstance -Namespace root\dcim\sysman -ClassName DCIM_VProSettings | Select -ExpandProperty VMXState)
{
    2 {"Enabled"}
    3 {"Disabled"}
    }
write-output $vpro_vmx