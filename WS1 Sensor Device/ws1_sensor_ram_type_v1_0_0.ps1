$ram_type = Switch(Get-CimInstance -Namespace root\dcim\sysman -ClassName DCIM_PhysicalMemory | Select -ExpandProperty MemoryType)
{
    0 {"Unknown"}
    1 {"Other"}
    2 {"DRAM"}
    3 {"Synchronous DRAM"}
    4 {"Cache DRAM"}
    5 {"EDO"}
    6 {"EDRAM"}
    7 {"VRAM"}
    8 {"SRAM"}
    9 {"RAM"}
    10 {"ROM"}
    11 {"Flash"}
    12 {"EEPROM"}
    13 {"FEPROM"}
    14 {"EPROM"}
    15 {"CDRAM"}
    16 {"3DRAM"}
    17 {"SDRAM"}
    18 {"SGRAM"}
    19 {"RDRAM"}
    20 {"DDR"}
    21 {"DDR-2"}
    22 {"BRAM"}
    23 {"FB-DIMM"}
    24 {"DDR3"}
    25 {"FBD2"}
    26 {"DDR4"}
    27 {"LPDDR"}
    28 {"LPDDR2"}
    29 {"LPDDR3"}
    30 {"LPDDR4"}
    }
write-output $ram_type[0]