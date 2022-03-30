$warranty_start = Get-CimInstance -Namespace root\dcim\sysman -ClassName DCIM_AssetWarrantyInformation | Select -ExpandProperty WarrantyStartDate
write-output $warranty_start[0]