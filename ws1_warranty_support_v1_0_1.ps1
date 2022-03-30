$supportname = Get-CimInstance -Namespace root\dcim\sysman -ClassName DCIM_AssetWarrantyInformation | Select -ExpandProperty Name

if ($supportname -match "ProSupport*")
{

$select = Get-CimInstance -Namespace root\dcim\sysman -ClassName DCIM_AssetWarrantyInformation -Filter "Name = 'ProSupport Plus for PCs and Tablets'" | Select -ExpandProperty Name
$warranty_support = $select[0] 

}
Else
{
$warranty_support = "Basic Support" 
}
write-output $warranty_support