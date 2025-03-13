rule Trojan_Win64_DllHijack_DA_2147845629_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/DllHijack.DA!MTB"
        threat_id = "2147845629"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "DllHijack"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {0f b6 01 48 8d 49 01 04 4b ff c2 34 3f 2c 4b 88 41 ff 3b 54 24 48}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_DllHijack_DA_2147845629_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/DllHijack.DA!MTB"
        threat_id = "2147845629"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "DllHijack"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {49 8b 45 08 48 8d 50 f0 48 39 ca 76 ?? 48 89 c8 31 d2 4c 8b 4c 24 40 48 f7 74 24 48 49 8b 45 00 41 8a 14 11 32 54 08 10 89 c8 41 0f af c0 31 c2 88 14 0b 48 ff c1 eb}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_DllHijack_AG_2147913606_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/DllHijack.AG!MTB"
        threat_id = "2147913606"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "DllHijack"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_4_1 = {0f b6 08 0f b6 45 f7 48 8b 55 10 48 98 0f b6 54 02 02 4c 8b 45 ?? 48 8b 45 f8 4c 01 c0 31 ca 88 10 48 83 45 f8 01 48 8b 45 f8 48 3b 45 ?? 0f}  //weight: 4, accuracy: Low
        $x_1_2 = {b9 e8 03 00 00 48 8b 05 b1 50 01 00 ff d0 8b 05 ?? ?? ?? 00 85 c0 74}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_DllHijack_GZT_2147922425_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/DllHijack.GZT!MTB"
        threat_id = "2147922425"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "DllHijack"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "High"
    strings:
        $x_10_1 = {4f b7 44 86 df 14 a2 5a 6a aa 00 2f 5b 33 f4 20 d1}  //weight: 10, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_DllHijack_GZT_2147922425_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/DllHijack.GZT!MTB"
        threat_id = "2147922425"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "DllHijack"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "11"
        strings_accuracy = "High"
    strings:
        $x_5_1 = {5b 5d 9c 31 66 ab b6 2a 8b 64 ac 4a}  //weight: 5, accuracy: High
        $x_5_2 = {b0 02 6b 28 d4 2a 0e 31 d0}  //weight: 5, accuracy: High
        $x_1_3 = "eqf.dll" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_DllHijack_ADH_2147924704_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/DllHijack.ADH!MTB"
        threat_id = "2147924704"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "DllHijack"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {d3 2a 45 3c 13 ab 65 ad 1b e3 0d a4 c3 ab ed 34 0b 43 35 2d 33 3a ad}  //weight: 5, accuracy: High
        $x_3_2 = {66 44 1b d7 4c 33 c7 45 8d 80 ?? ?? ?? ?? 45 0f b6 da 4a 8d 3c d5 ?? ?? ?? ?? 49 d1 f0 66 41 81 ea 87 39 66 41 c1 fa 24 41 0f 97 c2}  //weight: 3, accuracy: Low
        $x_2_3 = {51 41 53 f6 d3 8b 9c 1c ?? ?? ?? ?? 41 81 e0 11 b0 1b 67 81 f3 9a 5f 94 82 48 c1 cf a8 d1 c3 42 8d 9c 03 ?? ?? ?? ?? 41 87 fa 44 32 c7 41 50 f7 d3}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_DllHijack_MKV_2147924865_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/DllHijack.MKV!MTB"
        threat_id = "2147924865"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "DllHijack"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {01 d0 99 f7 f9 48 63 d2 0f b6 84 14 ?? ?? ?? ?? 42 32 04 07 42 88 44 05 00 49 83 c0 01 4c 39 c6 75}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_DllHijack_AMC_2147930142_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/DllHijack.AMC!MTB"
        threat_id = "2147930142"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "DllHijack"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {44 8b 44 24 20 4c 8d 4c 24 20 ba 01 00 00 00 48 8b cf ff d0}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_DllHijack_ASJ_2147932688_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/DllHijack.ASJ!MTB"
        threat_id = "2147932688"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "DllHijack"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {48 f7 f1 48 8b c2 0f b6 44 04 ?? 8b 4c 24 ?? 33 c8 8b c1 48 63 4c 24 ?? 48 8b 54 24 ?? 88 04 0a eb}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_DllHijack_CCJU_2147935877_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/DllHijack.CCJU!MTB"
        threat_id = "2147935877"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "DllHijack"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "CreateBackdoor" ascii //weight: 2
        $x_2_2 = "QueryDeviceInformation" ascii //weight: 2
        $x_1_3 = "bindShell" ascii //weight: 1
        $x_1_4 = "rundll32 windowscoredeviceinfo.dll,CreateBackdoor" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_DllHijack_BS_2147935906_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/DllHijack.BS!MTB"
        threat_id = "2147935906"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "DllHijack"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {31 c3 0f b6 45 f8 ba 0e 00 00 00 89 c1 e8 ?? ?? ff ff 31 d8 48 8b 4d 20 8b 55 fc 48 63 d2 88 44 91 03 83 45 fc 01 83 7d fc 03 0f 8e}  //weight: 2, accuracy: Low
        $x_2_2 = {0f b6 45 ff 48 8b 55 10 48 01 d0 44 0f b6 00 0f b6 45 ff 48 8b 55 18 48 01 d0 0f b6 08 0f b6 45 ff 48 8b 55 10 48 01 c2 44 89 c0 31 c8 88 02 80 45 ff 01 80 7d ff 0f 76}  //weight: 2, accuracy: High
        $x_1_3 = "PrintUIEntryW" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

