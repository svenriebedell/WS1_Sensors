$bios_adminpwdset = Get-CimInstance -Namespace root\dcim\sysman -ClassName DCIM_BIOSPassword -filter "AttributeName='AdminPwd'"| Select -ExpandProperty IsSet
write-output $bios_adminpwdset