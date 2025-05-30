rule VirTool_Win64_Priviadrisz_A_2147847413_0
{
    meta:
        author = "defender2yara"
        detection_name = "VirTool:Win64/Priviadrisz.A!MTB"
        threat_id = "2147847413"
        type = "VirTool"
        platform = "Win64: Windows 64-bit platform"
        family = "Priviadrisz"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {48 89 44 24 28 4c ?? ?? ?? 33 c9 c7 44 24 20 04 01 00 00 44 ?? ?? ?? ff 15 ?? ?? ?? ?? 48 ?? ?? ?? 48 8d ?? ?? ?? ?? ?? e8 ?? ?? ?? ?? 48 8d}  //weight: 1, accuracy: Low
        $x_1_2 = {44 89 64 24 20 ff 15 ?? ?? ?? ?? 8b 54 24 50 41 ?? ?? ?? ?? ff 15 ?? ?? ?? ?? 8b 4c 24 50 45 ?? ?? ?? ?? 48 8b d8 33 d2 48 8d}  //weight: 1, accuracy: Low
        $x_1_3 = {48 8b ce 48 8d ?? ?? ?? ?? ?? ff 15 ?? ?? ?? ?? 48 8b d6 48 89 75 80 48 8d ?? ?? ?? ?? ?? e8 88 ?? ?? ?? 41 b9 14 80 00 00 4c 8d ?? ?? ?? ba 02 00 00 00 33 c9 ff 15 ?? ?? ?? ?? 8b}  //weight: 1, accuracy: Low
        $x_1_4 = {4c 8b 44 24 60 33 c9 48 8b 54 24 68 ff 15 ?? ?? ?? ?? 8b d0 48 8d ?? ?? ?? ?? ?? e8 59 ?? ?? ?? ff 15 ?? ?? ?? ?? 8b}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

