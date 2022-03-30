$gpu_name = Get-WmiObject -class win32_VideoController | Select -ExpandProperty Caption
write-output $gpu_name