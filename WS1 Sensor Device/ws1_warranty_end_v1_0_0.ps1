$warranty_end = Get-CimInstance -Namespace root\dcim\sysman -ClassName DCIM_AssetWarrantyInformation -f| Select -ExpandProperty WarrantyEndDate
write-output $warranty_end[0]