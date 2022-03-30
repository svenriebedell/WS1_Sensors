# WS1 Sensor identify Dell System-ID
# Author: Sven Riebe Twitter: @SvenRiebe
# Version: 1.0
# Status: validate

$system_id = Get-CimInstance -ClassName Win32_ComputerSystem | select -ExpandProperty SystemSKUNumber
Write-Output $system_id