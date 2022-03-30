$warranty_support = Get-CimInstance -Namespace root\dcim\sysman -ClassName DCIM_AssetWarrantyInformation | Select -ExpandProperty Name
write-output $warranty_support[1]