$hdd_model = Get-WmiObject -class win32_DiskDrive -Filter "Partitions='3'" | Select -ExpandProperty model
write-output $hdd_model