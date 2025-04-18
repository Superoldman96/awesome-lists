rule Backdoor_Win32_Codhax_A_2147743444_0
{
    meta:
        author = "defender2yara"
        detection_name = "Backdoor:Win32/Codhax.A!MSR"
        threat_id = "2147743444"
        type = "Backdoor"
        platform = "Win32: Windows 32-bit platform"
        family = "Codhax"
        severity = "Critical"
        info = "MSR: Microsoft Security Response"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "C:\\Codes\\Version2\\HEXCALC\\Release\\HEXCALC.pdb" ascii //weight: 1
        $x_1_2 = "VirtualProtect" ascii //weight: 1
        $x_1_3 = "GoldTemp.exe" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

