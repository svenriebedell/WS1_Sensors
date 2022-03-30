$cpu_name = Get-WmiObject -class win32_processor | Select -ExpandProperty Name
write-output $cpu_name