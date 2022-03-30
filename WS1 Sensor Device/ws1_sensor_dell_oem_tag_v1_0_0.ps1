$servicetag = Get-WmiObject -class win32_bios | Select -ExpandProperty SerialNumber
write-output $servicetag