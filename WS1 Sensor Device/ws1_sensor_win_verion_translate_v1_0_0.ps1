$win_release = Switch (Get-CimInstance -ClassName Win32_OperatingSystem | select -ExpandProperty Version)
{
    10.0.10240 {"1507 - Threshold 1"}
    10.0.10586 {"1511 - Threshold 2"}
    10.0.14393 {"1607 - Redstone 1"}
    10.0.15063 {"1703 - Redstone 2"}
    10.0.16299 {"1709 - Redstone 3"}
    10.0.17134 {"1803 - Redstone 4"}
    10.0.18362 {"1903 - 19H1"}
    10.0.18363 {"1909 - 19H2"}
    10.0.19041 {"2004 - 20H1"}
    10.0.19042 {"20H2"}
    10.0.19043 {"21H1"}
     
    }
Write-Output $win_release