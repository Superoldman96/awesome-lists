rule Trojan_MSIL_Noon_NBL_2147895313_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Noon.NBL!MTB"
        threat_id = "2147895313"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Noon"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {11 0e 11 16 8f 05 00 00 01 25 47 7e 03 00 00 04 19 11 16 5f 19 62 1f 1f 5f 63 d2 61 d2 52 17 11 16 58 13 16 11 16 11 0e 8e 69 33 d4}  //weight: 1, accuracy: High
        $x_1_2 = {11 34 11 0d 1d 5f 91 13 1f 11 1f 19 62 11 1f 1b 63 60 d2 13 1f 11 05 11 0d 11 05 11 0d 91 11 1f 61 d2 9c 11 0d 17 58 13 0d 11 0d 11 08 32 d1}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Noon_NBL_2147895313_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Noon.NBL!MTB"
        threat_id = "2147895313"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Noon"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {1a 7e 27 00 00 04 60 80 27 00 00 04 38 80 00 00 00 11 07 2d 56 11 05 11 06 28 58 00 00 06 2c 28 06 20 02 7e c3 04 07 61 09 58 66 66 65 65 66 65 66 66 65 65 66 08 59 61 0a 1f 10 7e 27 00 00 04 60 80 27 00 00 04 2b 49}  //weight: 1, accuracy: High
        $x_1_2 = {17 11 0b 5f 2d 20 11 21 20 ff ed 49 bf 06 61 07 61 5a 20 c1 30 ed 66 06 59 07 58 58 13 21 11 21 1f 10 64 d1 13 1b 11 1b d2 13 2d 11 1b 1e 63 d1 13 1b 11 1a 11 0b 91 13 29 11 1a 11 0b 11 29 11 25 61 19 11 1f 58 61 11 2d 61 d2 9c 11 29 13 1f 17 11 0b 58 13 0b}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Noon_KAC_2147896276_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Noon.KAC!MTB"
        threat_id = "2147896276"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Noon"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {00 11 15 09 5d 13 16 11 15 11 04 5d 13 17 07 11 16 91 13 18 08 11 17 6f ?? 00 00 0a 13 19 07 11 15 17 58 09 5d 91 13 1a 11 18 11 19 11 1a 28 ?? 00 00 06 13 1b 07 11 16 11 1b 20 ?? ?? 00 00 5d d2 9c 00 11 15 17 59 13 15 11 15 16 fe 04 16 fe 01 13 1c 11 1c 2d a9}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Noon_KAD_2147896280_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Noon.KAD!MTB"
        threat_id = "2147896280"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Noon"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {11 09 09 5d 13 0a 11 09 11 04 5d 13 0b 07 11 0a 91 13 0c 08 11 0b 6f ?? 00 00 0a 13 0d 02 07 11 09 28 ?? 00 00 06 13 0e 02 11 0c 11 0d 11 0e 28 ?? 00 00 06 13 0f 07 11 0a 11 0f 20 ?? ?? 00 00 5d d2 9c 11 09 17 59 13 09 11 09 16 2f b2}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Noon_MBYP_2147912642_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Noon.MBYP!MTB"
        threat_id = "2147912642"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Noon"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {91 11 12 61 13 13 11 04 17 58 11 05 8e 69 5d}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Noon_PLIPH_2147932024_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Noon.PLIPH!MTB"
        threat_id = "2147932024"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Noon"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "11"
        strings_accuracy = "Low"
    strings:
        $x_6_1 = {01 25 16 02 1f 10 63 20 ?? 00 00 00 5f d2 9c 25 17 02 1e 63 20 ?? 00 00 00 5f d2 9c 25 18 02 20 ?? 00 00 00 5f d2 9c 2a}  //weight: 6, accuracy: Low
        $x_5_2 = {0f 00 18 1f 5f 28 ?? 00 00 06 1f 10 62 0f 00 20 9d 02 00 00 20 c3 02 00 00 28 ?? 00 00 06 1e 62 60 0f 00 28 ?? 00 00 0a 60 2a}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Noon_HHM_2147935596_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Noon.HHM!MTB"
        threat_id = "2147935596"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Noon"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "11"
        strings_accuracy = "Low"
    strings:
        $x_6_1 = {01 25 16 0f 00 28 ?? 00 00 0a 9c 25 17 0f 00 28 ?? 00 00 0a 9c 25 18 0f 00 28 ?? 00 00 0a 9c 6f ?? 00 00 0a 00 00}  //weight: 6, accuracy: Low
        $x_5_2 = {0a 61 d2 0d 1a 00 00 0f 00 28 ?? 00 00 0a 0f 00 28 ?? 00 00 0a 61 0f 00 28 ?? 00 00}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Noon_ZHH_2147936579_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Noon.ZHH!MTB"
        threat_id = "2147936579"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Noon"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "11"
        strings_accuracy = "Low"
    strings:
        $x_6_1 = {01 25 16 0f 00 28 ?? 00 00 0a 9c 25 17 0f 00 28 ?? 00 00 0a 9c 25 18 0f 00 28 ?? 00 00 0a 9c 6f ?? 00 00 0a 11 0c}  //weight: 6, accuracy: Low
        $x_5_2 = {9c 25 17 0f 00 28 ?? 00 00 0a 9c 25 18 0f 00 28 ?? 00 00 0a 9c 13 08}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

