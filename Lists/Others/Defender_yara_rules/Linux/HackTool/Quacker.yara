rule HackTool_Linux_Quacker_A_2147820334_0
{
    meta:
        author = "defender2yara"
        detection_name = "HackTool:Linux/Quacker.A!xp"
        threat_id = "2147820334"
        type = "HackTool"
        platform = "Linux: Linux platform"
        family = "Quacker"
        severity = "High"
        info = "xp: an internal category used to refer to some threats"
        signature_type = "SIGNATURE_TYPE_ELFHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "Usage: ./smack <target to fuck>" ascii //weight: 2
        $x_1_2 = "Slinging Packets" ascii //weight: 1
        $x_1_3 = "Snoopy" ascii //weight: 1
        $x_1_4 = "smack.c" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

