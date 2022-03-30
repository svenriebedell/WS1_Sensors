$bios_systempwd = Get-CimInstance -Namespace root\dcim\sysman -ClassName DCIM_BIOSPassword -filter "AttributeName='SystemPwd'"| Select -ExpandProperty IsSet
write-output $bios_systempwd