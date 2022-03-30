$hdd_fw = Get-WmiObject -class win32_DiskDrive -Filter "Partitions='3'" | Select -ExpandProperty FirmwareRevision
write-output $hdd_fw