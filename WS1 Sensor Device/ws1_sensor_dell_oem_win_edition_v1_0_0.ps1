$oem_win_edition = Get-CimInstance -namespace root\cimv2 -classname SoftwareLicensingService | Select-Object OA3xOriginalProductKeyDescription
Write-Output $oem_win_edition