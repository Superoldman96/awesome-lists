rule TrojanDropper_O97M_Drprun_A_2147732025_0
{
    meta:
        author = "defender2yara"
        detection_name = "TrojanDropper:O97M/Drprun.A"
        threat_id = "2147732025"
        type = "TrojanDropper"
        platform = "O97M: Office 97, 2000, XP, 2003, 2007, and 2010 macros - those that affect Word, Excel, and PowerPoint"
        family = "Drprun"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_MACROHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "fileName = \"driver_pack\"" ascii //weight: 1
        $x_1_2 = "fldrName = Environ$(\"USERPROFILE\") & \"\\Documents\\\"" ascii //weight: 1
        $x_1_3 = "fileZip = fldrName & fileName & \".zip\"" ascii //weight: 1
        $x_1_4 = "fileExe = fldrName & fileName & \".exe\"" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

