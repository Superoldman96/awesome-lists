rule Trojan_Win32_Shellcode_GPA_2147902460_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Shellcode.GPA!MTB"
        threat_id = "2147902460"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Shellcode"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_4_1 = {8d 74 26 00 89 c1 83 e1 1f 0f b6 0c 0c 30 0c 02 83 c0 01 39 c3 75 ed}  //weight: 4, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Shellcode_EARU_2147934425_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Shellcode.EARU!MTB"
        threat_id = "2147934425"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Shellcode"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_5_1 = {8b d6 c1 ea 05 89 55 fc 8b 45 e4 01 45 fc 8b 45 f4 c1 e6 04 03 75 dc 8d 0c 03 33 f1}  //weight: 5, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Shellcode_EART_2147934426_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Shellcode.EART!MTB"
        threat_id = "2147934426"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Shellcode"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {8b 55 fc 33 d6 2b fa 81 c3 ?? ?? ?? ?? 83 6d ec 01 89 7d f0}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

