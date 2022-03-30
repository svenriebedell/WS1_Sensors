##################################################################
#
# Name: Sensor Dell TrustedDevice for general result of security assessment
#
# Author: Grischa Horst (VMware)
#
# Status: validate
#
# Version 1.0.1
#
# Date: 07-05-2021

$EventLog = Get-EventLog -LogName DELL -InstanceId 15 -Newest 1 -ErrorAction SilentlyContinue

if($EventLog)
{
    return "Fail"
}
    else{ return "Pass"}

Write-output $EventLog