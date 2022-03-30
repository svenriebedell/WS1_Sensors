$oem_licencekey = (Get-WmiObject -query 'select * from SoftwareLicensingService‘).OA3xOriginalProductKey
Write-Output $oem_licencekey