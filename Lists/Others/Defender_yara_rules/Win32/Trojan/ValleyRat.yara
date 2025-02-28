rule Trojan_Win32_ValleyRat_AVA_2147929127_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ValleyRat.AVA!MTB"
        threat_id = "2147929127"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ValleyRat"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {53 56 57 6a 00 6a 00 68 04 01 00 00 8d 44 24 24 8b f9 50 68 b0 53 40 00 89 7c 24 24 6a 00 89 7c 24 28 ff 15}  //weight: 2, accuracy: High
        $x_1_2 = {2b 45 e0 6a 40 68 00 30 00 00 50 6a 00 ff 15 ?? ?? ?? ?? 8b f0 85 f6}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_ValleyRat_BSA_2147929167_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ValleyRat.BSA!MTB"
        threat_id = "2147929167"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ValleyRat"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "20"
        strings_accuracy = "High"
    strings:
        $x_10_1 = {8b 54 24 0c 8b 4c 24 04 85 d2 74 69 33 c0 8a 44 24 08 84 c0 75 16 81 fa 80 00 00 00 72 0e 83 3d 08 13 58 00 00 74 05 e9 0b 9d}  //weight: 10, accuracy: High
        $x_5_2 = {66 0f ef c0 51 53 8b c1 83 e0 0f 85 c0 75 7f 8b c2 83 e2 7f c1 e8 07 74 37 8d a4 24}  //weight: 5, accuracy: High
        $x_5_3 = {8b d8 f7 db 83 c3 10 2b d3 33 c0 52 8b d3 83 e2 03 74 06}  //weight: 5, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_ValleyRat_BSA_2147929167_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ValleyRat.BSA!MTB"
        threat_id = "2147929167"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ValleyRat"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "22"
        strings_accuracy = "Low"
    strings:
        $x_10_1 = {55 8b ec 56 eb 13 ?? ?? ?? ?? ?? 85 c0 74 19 ff 75 08 ff d0 59 85 c0 74 0f ff 75 08 e8 97 e9 0f 00 8b f0 59 85 f6 74 de 8b c6}  //weight: 10, accuracy: Low
        $x_2_2 = {85 c0 74 19 ff 75 08 ff d0 59 85 c0 74 0f ff 75 08}  //weight: 2, accuracy: High
        $x_2_3 = {ff 73 64 c7 45 d4 ?? ?? ?? ?? ff d6 6a 04 8d 45 d4 50 68}  //weight: 2, accuracy: Low
        $x_8_4 = {8b 44 24 10 89 6c 24 10 8d 6c 24 10 2b e0 53 56 57 a1 ?? ?? ?? ?? 31 45 fc 33 c5 50 89 65 e8 ff 75 f8 8b 45 fc c7 45 fc ?? ?? ?? ?? 89 45 f8 8d 45 f0 64 a3 00}  //weight: 8, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_ValleyRat_BJK_2147934531_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ValleyRat.BJK!MTB"
        threat_id = "2147934531"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ValleyRat"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {ff d5 99 b9 3e 00 00 00 f7 f9 46 3b f3 8a 54 14 10 88 54 3e ff}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_ValleyRat_MHS_2147934902_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ValleyRat.MHS!MTB"
        threat_id = "2147934902"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ValleyRat"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {8d 04 49 8d 04 45 07 00 00 00 35 84 18 f1 ba 03 05 c8 f6 42 00 68 08 0a 43 00 ff d0}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

