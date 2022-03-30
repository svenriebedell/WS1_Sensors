$client_chassis_type = switch (Get-CimInstance -Namespace root\dcim\sysman -ClassName dcim_Chassis -Filter "Name='Main System Chassis'" | select -ExpandProperty ChassisPackageType)
{
    0 {"Unknown"}
    1 {"Other"}
    2 {"SMBIOS Reserved"}
    3 {"Desktop"}
    4 {"Low Profile Desktop"}
    5 {"Pizza Box"}
    6 {"Mini Tower"}
    7 {"Tower"}
    8 {"Portable"}
    9 {"LapTop"}
    10 {"Notebook"}
    11 {"Hand Held"}
    12 {"Docking Station"}
    13 {"All in One"}
    14 {"Sub Notebook"}
    15 {"Space-Saving"}
    16 {"Lunch Box"}
    17 {"Main System Chassis"}
    18 {"Expansion Chassis"}
    19 {"SubChassis"}
    20 {"Bus Expansion Chassis"}
    21 {"Peripheral Chassis"}
    22 {"Storage Chassis"}
    23 {"SMBIOS Reseved"}
    24 {"Sealed-Case PC"}
    25 {"SMBIOS Reserved"}
    26 {"CompactPCI"}
    27 {"AdvancedTCA"}
    28 {"Blade Enclosure"}
    29 {"SMBIOS Reserved"}
    30 {"Tablet"}
    31 {"Convertible"}
    32 {"Detachable"}
    33 {"IoT Gateway"}
        }
Write-Output $client_chassis_type
    