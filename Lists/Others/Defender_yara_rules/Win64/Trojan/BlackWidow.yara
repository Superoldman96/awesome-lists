rule Trojan_Win64_BlackWidow_RPZ_2147910377_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/BlackWidow.RPZ!MTB"
        threat_id = "2147910377"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "BlackWidow"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {48 05 00 30 00 00 48 8b 8c 24 f0 00 00 00 48 89 81 b0 00 00 00 8b 44 24 44 35 1b 0f 00 00 89 44 24 44 8b 44 24 50 35 ca 05 00 00 89 84 24 84 00 00 00 8b 44 24 54 2d 29 05 00 00 89 84 24 80 00 00 00 8b 44 24 54 05 b1 00 00 00 89 44 24 7c 8b 44 24 4c 35 74 0a 00 00 89 44 24 78 8b 44 24 4c 05 6f 05 00 00 89 44 24 74}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_BlackWidow_RPX_2147910378_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/BlackWidow.RPX!MTB"
        threat_id = "2147910378"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "BlackWidow"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {48 8b 8c 24 c0 00 00 00 8b 89 dc 00 00 00 33 c8 8b c1 48 8b 8c 24 c0 00 00 00 89 81 dc 00 00 00 48 63 44 24 3c 48 8b 8c 24 c0 00 00 00 48 8b 89 b0 00 00 00 48 8b 94 24 c0 00 00 00 8b 52 5c 8b 04 81 33 c2 48 63 4c 24 3c}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_BlackWidow_RPY_2147910379_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/BlackWidow.RPY!MTB"
        threat_id = "2147910379"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "BlackWidow"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {48 8b 44 24 30 8b 40 20 48 8b 4c 24 70 48 03 c8 48 8b c1 8b 4c 24 20 48 8d 04 88 48 89 44 24 38 48 8b 44 24 38 8b 00 48 8b 4c 24 70 48 03 c8 48 8b c1 48 89 44 24 28 48 8b 4c 24 28}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_BlackWidow_GA_2147927843_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/BlackWidow.GA!MTB"
        threat_id = "2147927843"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "BlackWidow"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {48 31 d2 49 f7 f0 45 8a 14 11 44 30 14 0f 48 ff c1 48 89 c8 48 81 f9 a7 8c 0a 00 76 e3}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_BlackWidow_GB_2147928730_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/BlackWidow.GB!MTB"
        threat_id = "2147928730"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "BlackWidow"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {8a 44 0c 20 42 32 04 16 41 88 02 4d 03 d5 44 3b cb 72 cb}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_BlackWidow_GVA_2147929883_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/BlackWidow.GVA!MTB"
        threat_id = "2147929883"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "BlackWidow"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {8a 44 0c 20 43 32 04 13 41 88 02 4d 03 d4}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_BlackWidow_GVB_2147929884_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/BlackWidow.GVB!MTB"
        threat_id = "2147929884"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "BlackWidow"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {48 2b c8 0f b6 44 0c 20 43 32 44 0c fb 41 88 41 fb}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_BlackWidow_GNQ_2147929894_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/BlackWidow.GNQ!MTB"
        threat_id = "2147929894"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "BlackWidow"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "Low"
    strings:
        $x_10_1 = {c5 c5 fd cb c5 c5 73 dc ?? c5 e5 69 d7 44 30 14 0f c5 dd 60 e1 48 ff c1 c5 c5 68 f9 48 89 c8 c4 e3 fd 00 ff ?? 48 81 f9}  //weight: 10, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_BlackWidow_GNQ_2147929894_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/BlackWidow.GNQ!MTB"
        threat_id = "2147929894"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "BlackWidow"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "Low"
    strings:
        $x_10_1 = {48 8b c1 48 2b c2 48 d1 e8 48 03 c2 48 c1 e8 ?? 48 6b c0 ?? 48 2b c8 0f b6 44 0c ?? 43 32 44 08 ?? 41 88 41 ?? 49 ff cb 0f 85}  //weight: 10, accuracy: Low
        $x_10_2 = {48 8b c1 48 2b c2 48 d1 e8 48 03 c2 48 c1 e8 ?? 48 6b c0 ?? 48 2b c8 48 0f af cb 8a 44 0c ?? 43 32 04 13 41 88 02 4d 03 d4 45 3b cd}  //weight: 10, accuracy: Low
    condition:
        (filesize < 20MB) and
        (1 of ($x*))
}

rule Trojan_Win64_BlackWidow_GVC_2147930060_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/BlackWidow.GVC!MTB"
        threat_id = "2147930060"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "BlackWidow"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "7"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {45 8a 14 11}  //weight: 1, accuracy: High
        $x_3_2 = {44 30 14 0f}  //weight: 3, accuracy: High
        $x_1_3 = {49 81 c1 12 ce 2b 00}  //weight: 1, accuracy: High
        $x_2_4 = {48 81 f9 d3 ?? ?? ?? 0f 86 07 f6 ff ff}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_BlackWidow_GVD_2147931011_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/BlackWidow.GVD!MTB"
        threat_id = "2147931011"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "BlackWidow"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {44 30 14 0f [0-16] 48 ff c1 [0-16] 48 89 c8 [0-16] 48 81 f9 [0-16] [0-16] 48 31 d2 [0-16] 49 f7 f0 [0-16] 45 8a 14 11}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_BlackWidow_MKZ_2147932214_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/BlackWidow.MKZ!MTB"
        threat_id = "2147932214"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "BlackWidow"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {49 f7 f1 66 0f 62 c1 45 8a 14 10 45 0f 5f ca 45 0f 5d dc 45 0f 52 d6 44 0f c2 f8 ?? c5 f1 61 c2 c5 d9 6a dd c4 c1 41 f9 f0 c5 f5 61 c2 c5 dd 6a dd 44 30 14 0f 66 0f 6a f9 48 ff c1 66 0f 6a d5 48 89 c8 66 0f 6d ce 48 81 f9 d3 3b 01 00 76}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_BlackWidow_MKK_2147932379_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/BlackWidow.MKK!MTB"
        threat_id = "2147932379"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "BlackWidow"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {49 f7 f1 c5 e5 71 f3 07 c4 e3 fd 00 f6 ?? c4 e3 fd 00 ff ?? 45 8a 14 10 c5 ed fd e2 c5 f5 fd f9 c5 e5 fd c3 44 30 14 0f c5 f5 ef c9 c5 e5 75 db 48 ff c1 c5 fd 69 f4 c5 fd 61 c4 48 89 c8 c5 fd 62 c3 48 81 f9 d3 3b 01 00 76}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_BlackWidow_MIP_2147932477_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/BlackWidow.MIP!MTB"
        threat_id = "2147932477"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "BlackWidow"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {48 31 d2 c5 f5 ef c9 49 f7 f1 c5 e5 75 db c5 e5 71 f3 ?? 45 8a 14 10 c5 ed fd e2 c5 f5 fd f9 c5 e5 fd c3 c5 cd 75 f6 c5 cd 71 d6 ?? c5 cd db f7 44 30 14 0f c5 c5 fd cb 48 ff c1 c5 e5 67 db 48 89 c8 c5 fd 69 f4 48 81 f9 d3 3b 01 00 76}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_BlackWidow_LMK_2147932721_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/BlackWidow.LMK!MTB"
        threat_id = "2147932721"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "BlackWidow"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {c5 cd 68 f1 49 f7 f1 c5 d5 fd f5 c5 ed fd e2 c5 f5 fd f9 45 8a 14 10 66 0f 38 de f1 66 0f 38 de f9 66 44 0f 38 de c1 66 44 0f 38 de c9 44 30 14 0f c5 cd fd eb c5 dd fd d3 c5 c5 fd cb c5 fd fd db c5 d5 fd f5 48 ff c1 c5 fd 6f da c5 fd 6f ec c5 fd fd c6 48 89 c8 ?? 48 81 f9 d3 3d 01 00 0f 86}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_BlackWidow_MMD_2147932722_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/BlackWidow.MMD!MTB"
        threat_id = "2147932722"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "BlackWidow"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {49 f7 f1 66 0f 38 40 d6 45 8a 14 10 66 0f 38 40 d6 0f 28 dc 0f 28 d5 0f 14 e7 0f 14 ee 0f 28 c3 66 0f 70 dc ?? 44 30 14 0f c4 e2 6d 40 d4 48 ff c1 66 0f 70 dc ?? 66 0f 70 e5 00 48 89 c8 66 0f 70 fa 00 48 81 f9 d3 3d 01 00 76}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_BlackWidow_ZZP_2147932786_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/BlackWidow.ZZP!MTB"
        threat_id = "2147932786"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "BlackWidow"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {49 f7 f0 c4 43 2d 0f d2 08 45 8a 14 11 c4 43 1d 0f e4 ?? c4 43 1d 46 e0 13 c4 e3 5d 0f e4 04 c4 43 1d 0f e4 0c c4 43 2d 0f d2 08 c4 43 0d 0f f6 04 c5 cd 72 d6 19 48 83 c7 02 0f f5 c2 44 30 54 0f ?? c4 43 1d 0f e4 0c 48 83 ef 02 c4 e3 5d 0f e4 04 48 ff c1 c4 43 1d 46 e0 13 48 89 c8 0f 6a cc 48 81 f9 d3 35 01 00 0f 86}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_BlackWidow_LLZ_2147934028_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/BlackWidow.LLZ!MTB"
        threat_id = "2147934028"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "BlackWidow"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "9"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {c5 dd fd e6 c5 d5 fd ef c5 dd 67 e4 c5 d5 67 ed c5 fd 60 c2 c5 dd 60 e1 44 30 14 0f c5 c5 73 d8 02 c5 fd 69 f4 c5 fd 61 c4 c5 dd 73 dc 02 c5 f5 73 db ?? c5 e5 69 d7 c5 e5 61 df c5 dd 69 e9 c5 dd 61 e1}  //weight: 5, accuracy: Low
        $x_4_2 = {48 ff c1 c5 f5 ef c9 c5 e5 75 db c5 e5 71 f3 07 c4 e3 fd 00 f6 d8 c4 e3 fd 00 ff d8 c5 cd 60 e1 c5 cd 68 f1 c5 c5 60 c1 48 89 c8 c5 e5 67 db c5 dd fd e6 c5 d5 fd ef c5 dd 67 e4 c5 d5 67 ed c5 fd 60 c2 c5 dd 60 e1 c5 e5 60 dd c5 c5 73 d8 ?? c5 fd 69 f4 c5 fd 61 c4 48 81 f9 94 fc 01 00 0f 86}  //weight: 4, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_BlackWidow_MYZ_2147934286_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/BlackWidow.MYZ!MTB"
        threat_id = "2147934286"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "BlackWidow"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {45 03 cd 48 f7 e1 48 c1 ea 04 48 8d 04 d2 48 03 c0 48 2b c8 49 0f af cb 8a 44 0c ?? 42 32 04 16 41 88 02 4d 03 d5 44 3b cb 72}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_BlackWidow_MHD_2147934505_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/BlackWidow.MHD!MTB"
        threat_id = "2147934505"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "BlackWidow"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {44 03 de 48 f7 e1 48 8b c1 48 2b c2 48 d1 e8 48 03 c2 48 c1 e8 ?? 48 6b c0 19 48 2b c8 8a 44 0c 20 42 32 04 13 41 88 02 4c 03 d6 45 3b dc 72}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_BlackWidow_UTD_2147934829_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/BlackWidow.UTD!MTB"
        threat_id = "2147934829"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "BlackWidow"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "9"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {49 f7 f1 c5 fd 6f da c5 fd 6f ec c5 fd fd c6 c5 f5 fd cf c5 fd 67 c0 c5 f5 67 c9 c5 ed fd d6 c5 e5 fd df c5 ed 67 d2 c5 e5 67 db 45 8a 14 10 c5 dd fd e6 c5 d5 fd ef c5 dd 67 e4 c5 d5 67 ed c5 fd 60 c2 c5 dd 60 e1 44 30 14 0f c5 c5 73 d8 02}  //weight: 5, accuracy: High
        $x_4_2 = {48 ff c1 c5 f5 ef c9 c5 e5 75 db c5 e5 71 f3 07 c4 e3 fd 00 f6 d8 c4 e3 fd 00 ff d8 c5 cd 60 e1 c5 cd 68 f1 c5 c5 60 c1 48 89 c8 c5 e5 67 db c5 dd fd e6 c5 d5 fd ef c5 dd 67 e4 c5 d5 67 ed c5 fd 60 c2 c5 dd 60 e1 c5 e5 60 dd c5 c5 73 d8 ?? c5 fd 69 f4 c5 fd 61 c4 48 81 f9 d3 41 00 00 0f 86}  //weight: 4, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

