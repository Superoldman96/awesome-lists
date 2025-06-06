rule VirTool_Win32_RemotePot_B_2147914759_0
{
    meta:
        author = "defender2yara"
        detection_name = "VirTool:Win32/RemotePot.B"
        threat_id = "2147914759"
        type = "VirTool"
        platform = "Win32: Windows 32-bit platform"
        family = "RemotePot"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {6a 00 ff 75 ec ?? ?? ?? ?? ?? ff ?? ?? ?? ?? ?? 85 c0 ?? ?? 50 ?? ?? ?? ?? ?? eb ?? 8d ?? ?? 50 ?? ?? ?? ?? ?? e8 ?? ?? ?? ?? 83 c4 08 6a 00 68 d2 04 00 00 6a 01 ff ?? ?? ?? ?? ?? 85 c0}  //weight: 1, accuracy: Low
        $x_1_2 = {50 0f 11 85 10 fe ff ff e8 ?? ?? ?? ?? 8d ?? ?? 83 c4 0c ?? ?? ?? 66 8b 01 83 c1 02 66 85 c0 ?? ?? 2b ca d1 f9 83 f9 02 73 0a b8 24 31 42 00 ?? ?? ?? ?? ?? 68 ?? ?? ?? ?? c7 05 f8 65 42 00 01 00 00 00 e8 ?? ?? ?? ?? 83 c4 04}  //weight: 1, accuracy: Low
        $x_1_3 = {0f 29 84 24 a0 00 00 00 50 e8 ?? ?? ?? ?? 8d ?? ?? ?? ?? ?? ?? 50 ?? ?? ?? ?? ?? ?? ?? 50 ?? ?? ?? ?? ?? ?? ?? 50 ?? ?? ?? ?? ?? e8 ?? ?? ?? ?? 83 c4 34 c7 05 f8 65 42 00 01 00 00 00 ?? ?? ?? ?? ?? ?? ?? 6a 00 68 00 20 00 00 50 56 ff ?? ?? ?? ?? ?? 83 f8 ff}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

