rule Trojan_Win64_Razy_RB_2147844061_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Razy.RB!MTB"
        threat_id = "2147844061"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Razy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {48 63 44 24 40 48 3d 00 06 03 00 73 26 48 63 44 24 40 48 8d 0d ?? ?? 00 00 0f b6 04 01 35 ad 00 00 00 48 63 4c 24 40 48 8d 15 ?? ?? 00 00 88 04 0a eb c3}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Razy_NR_2147849145_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Razy.NR!MTB"
        threat_id = "2147849145"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Razy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {48 81 ee 04 00 00 00 41 81 f2 ?? ?? ?? ?? 66 41 81 c2 ?? ?? 44 8b 16 45 33 d3 e9 ?? ?? ?? ?? 4c 8b 0f 66 d3 f2 48 81 c7 ?? ?? ?? ?? 40 c0 ed 1e}  //weight: 5, accuracy: Low
        $x_1_2 = "JNZNIzGYB" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

