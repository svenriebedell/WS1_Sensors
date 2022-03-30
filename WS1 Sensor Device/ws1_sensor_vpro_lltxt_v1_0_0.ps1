$vpro_lttxt = Switch(Get-CimInstance -Namespace root\dcim\sysman -ClassName DCIM_VProSettings | Select -ExpandProperty LTTXTEnabledState)
{
    2 {"Enabled"}
    3 {"Disabled"}
    }
write-output $vpro_lttxt