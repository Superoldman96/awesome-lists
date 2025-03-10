rule VirTool_Win64_AccessMe_A_2147755439_0
{
    meta:
        author = "defender2yara"
        detection_name = "VirTool:Win64/AccessMe.A!MTB"
        threat_id = "2147755439"
        type = "VirTool"
        platform = "Win64: Windows 64-bit platform"
        family = "AccessMe"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {ff d0 89 85 ?? ?? ?? 00 b9 e8 03 00 00 48 8b 05 ?? ?? ?? 00 ff d0 48 8b 05 ?? ?? ?? 00 ff d0}  //weight: 2, accuracy: Low
        $x_2_2 = {48 8d 70 01 48 89 f1 e8 ?? ?? 00 00 49 89 f0 48 89 44 dd 00 48 8b 14 df 48 89 c1 e8 ?? ?? 00 00}  //weight: 2, accuracy: Low
        $x_2_3 = "C:\\WINDOWS\\WindowsUpdate.log" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

