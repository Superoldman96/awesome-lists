rule Trojan_Win64_LummaC_AA_2147898573_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/LummaC.AA!MTB"
        threat_id = "2147898573"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "LummaC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {48 8b 04 24 8b 54 24 18 48 8b 4c 24 08 4c 63 44 24 1c 42 8b 0c 81 4c 63 c1 42 33 14 80 48 63 c9 89 14 88 8b 44 24 1c 83 c0 01 89 44 24 1c e9 bf ff ff ff}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_LummaC_CZ_2147926868_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/LummaC.CZ!MTB"
        threat_id = "2147926868"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "LummaC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "7"
        strings_accuracy = "High"
    strings:
        $x_1_1 = " Go build ID:" ascii //weight: 1
        $x_2_2 = "v4INt8xihDGvnrfjMDVXGxw9wrfxYyCjk0KbXjhR55s" ascii //weight: 2
        $x_2_3 = "RQqyEogx5J6wPdoxqL132b100j8KjcVHO1c0KLRoIhc" ascii //weight: 2
        $x_2_4 = "6EUwBLQ/Mcr1EYLE4Tn1VdW1A4ckqCQWZBw8Hr0kjpQ" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_LummaC_YAN_2147929558_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/LummaC.YAN!MTB"
        threat_id = "2147929558"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "LummaC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "11"
        strings_accuracy = "High"
    strings:
        $x_11_1 = {59 58 44 30 24 0f 49 31 cc 48 ff c1 48 89 c8}  //weight: 11, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_LummaC_AMCZ_2147930987_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/LummaC.AMCZ!MTB"
        threat_id = "2147930987"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "LummaC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {44 0f bf c2 c1 ea ?? 41 c1 f8 ?? 41 01 d0 44 89 c2 c1 e2 ?? 41 29 d0 44 01 c1 81 c1 ?? ?? ?? ?? 8d 51 ?? 66 83 f9 ?? 0f b6 d2 0f 42 d1 88 94 05 ?? ?? ?? ?? 48 ff c0 48 83 f8 ?? 75}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_LummaC_GA_2147932798_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/LummaC.GA!MTB"
        threat_id = "2147932798"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "LummaC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {41 03 c8 8b d1 89 50 20 8b c5 99 f7 f9 8d a8}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_LummaC_NZ_2147933340_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/LummaC.NZ!MTB"
        threat_id = "2147933340"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "LummaC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "7"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "Go build ID: " ascii //weight: 1
        $x_2_2 = "aTy974I1vPDYPFzoFH4vtJONrK4oRDvjUxteUan7beE" ascii //weight: 2
        $x_2_3 = "DrRLnoQFxHWJ5lJUmrH7X2L0xeUu6SUS95Dc61eW2Yc" ascii //weight: 2
        $x_2_4 = "RQqyEogx5J6wPdoxqL132b100j8KjcVHO1c0KLRoIhc" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_LummaC_YAP_2147934476_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/LummaC.YAP!MTB"
        threat_id = "2147934476"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "LummaC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "11"
        strings_accuracy = "Low"
    strings:
        $x_11_1 = {43 02 04 37 0f b6 c0 41 8a 04 07 4c 8b 7d ?? 48 8b 4d ?? 4c 8b 75 ?? 42 32 04 31 42 88 04 31}  //weight: 11, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_LummaC_CCIS_2147936486_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/LummaC.CCIS!MTB"
        threat_id = "2147936486"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "LummaC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {45 21 da 45 09 f9 44 09 d6 41 31 f1 44 88 4c 24 0b 44 8a 44 24 0b 48 8b 4c 24 10 48 63 54 24 0c 44 88 04 11 44 8b 54 24 0c}  //weight: 1, accuracy: High
        $x_1_2 = {44 21 de 09 f3 88 5c 24 2b 44 8a 44 24 2b 48 8b 4c 24 30 48 63 54 24 2c 44 88 04 11 44 8b 4c 24 2c}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (1 of ($x*))
}

rule Trojan_Win64_LummaC_CCJU_2147936885_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/LummaC.CCJU!MTB"
        threat_id = "2147936885"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "LummaC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "8"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "Stop reversing the binary" ascii //weight: 1
        $x_1_2 = "Reconsider your life choices" ascii //weight: 1
        $x_1_3 = "And go touch some grass" ascii //weight: 1
        $x_5_4 = "\\%SexBot%\\modules\\stubmain" ascii //weight: 5
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_LummaC_ALA_2147937736_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/LummaC.ALA!MTB"
        threat_id = "2147937736"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "LummaC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {48 03 c8 0f b6 01 43 88 04 08 44 88 11 43 0f b6 0c 08 49 03 ca 0f b6 c1 0f b6 8c 04 00 01 00 00 30 0f 48 ff c7 49 83 eb 01}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_LummaC_GTK_2147937737_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/LummaC.GTK!MTB"
        threat_id = "2147937737"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "LummaC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "Low"
    strings:
        $x_10_1 = {41 20 d0 41 88 c2 41 80 f2 ?? 41 80 e2 ?? 20 d0 45 08 c1 41 08 c2 45 30 d1 88 c8 44 20 c8 44 30 c9 08 c8 a8 01 41 be ?? ?? ?? ?? 41 bf ?? ?? ?? ?? 45 0f 45 fe 44 89 7d}  //weight: 10, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_LummaC_PGLC_2147937927_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/LummaC.PGLC!MTB"
        threat_id = "2147937927"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "LummaC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_5_1 = {34 01 24 00 41 80 e4 01 45 08 ee 44 08 e0 41 30 c6 41 80 f6 ff 40 88 f8 34 00 41 88 fc 41 80 f4 01 41 08 c6 41 80 cc 01 41 80 f6 ff 45 20 e6 40 88 f8}  //weight: 5, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

