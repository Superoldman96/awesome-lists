rule Trojan_Win32_Mint_GNA_2147890164_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Mint.GNA!MTB"
        threat_id = "2147890164"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Mint"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_4_1 = {49 81 c9 00 ff ff ff 41 8b 45 08 03 85 c8 fb ff ff 0f b6 10 33 94 8d e0 fb ff ff 8b 45 08 03 85 c8 fb ff ff 88 10 e9}  //weight: 4, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Mint_GN_2147896245_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Mint.GN!MTB"
        threat_id = "2147896245"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Mint"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_4_1 = {03 f9 8b 4d f8 81 45 f8 47 86 c8 61 8b c6 c1 e8 05 03 45 e8 03 ce 33 f9 33 f8 2b df ff 4d f4}  //weight: 4, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Mint_NBL_2147896418_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Mint.NBL!MTB"
        threat_id = "2147896418"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Mint"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {33 c9 8a 81 ?? ?? ?? 00 c0 c8 03 32 83 ?? ?? ?? 00 88 81 ?? ?? ?? 00 8d 43 01}  //weight: 1, accuracy: Low
        $x_1_2 = "VirtualAlloc" ascii //weight: 1
        $x_1_3 = "IsProcessorFeaturePresent" ascii //weight: 1
        $x_1_4 = "IsDebuggerPresent" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Mint_SPDB_2147907936_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Mint.SPDB!MTB"
        threat_id = "2147907936"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Mint"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {31 c0 eb 15 6a 04 68 00 10 00 00 57 56 ff 15 88 67 41 00 85 c0 74 02}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Mint_AC_2147939488_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Mint.AC!MTB"
        threat_id = "2147939488"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Mint"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {33 c0 89 08 50 45 43 6f 6d 70 61 63 74 32 00 00 4c 6a 00 8b 4f 0e a3 00 4c 6a 00 8b 09 62 8b 5d 40 e1 6d}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

