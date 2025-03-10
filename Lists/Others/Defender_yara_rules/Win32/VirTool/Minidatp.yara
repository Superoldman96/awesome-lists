rule VirTool_Win32_Minidatp_A_2147758797_0
{
    meta:
        author = "defender2yara"
        detection_name = "VirTool:Win32/Minidatp.A!MTB"
        threat_id = "2147758797"
        type = "VirTool"
        platform = "Win32: Windows 32-bit platform"
        family = "Minidatp"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {ba fd 03 00 ac 41 b8 1f 00 10 00 ff 15 ?? ?? ?? ?? 8b d0 48 8d ?? ?? ?? ?? ?? e8 ?? ?? ?? ?? 48 8d ?? ?? ?? ?? ?? 4c 89 6d a0 48 8d ?? ?? ?? ?? ?? 48 89 45 98 e8 ?? ?? ?? ?? f2 0f 10 05 a5 b3 01 00 48 8d ?? ?? ?? ?? ?? 0f b7 05 9f b3 01 00 33 d2 41 b8 fe 01 00 00}  //weight: 1, accuracy: Low
        $x_1_2 = {48 8b 4c 24 70 ff 15 ?? ?? ?? ?? 4c 8b 44 24 78 48 8d ?? ?? 48 89 4c 24 30 41 b9 02 00 00 00 48 8b 4d 80 8b d0 4c 89 6c 24 28 4c 89 6c 24 20 ff 15}  //weight: 1, accuracy: Low
        $x_1_3 = {ba 04 01 00 00 48 8d ?? ?? ?? ?? ?? ff 15 ?? ?? ?? ?? 4c 8d ?? ?? ?? ?? ?? ba 04 01 00 00 48 8d ?? ?? ?? ?? ?? e8 ?? ?? ?? ?? 4c 8d ?? ?? ?? ?? ?? ba 04 01 00 00 48 8d ?? ?? ?? ?? ?? e8}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

