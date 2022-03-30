$secureboot = Switch (Get-CimInstance -Namespace root\dcim\sysman dcim_BIOSEnumeration -Filter "AttributeName='Secure Boot'" | select CurrentValue)
{ 
    1 {"Disable"}
    2 {"Enable"}
    }
Write-Output $secureboot

