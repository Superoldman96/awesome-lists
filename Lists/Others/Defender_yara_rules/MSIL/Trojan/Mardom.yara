rule Trojan_MSIL_Mardom_NEAA_2147840111_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Mardom.NEAA!MTB"
        threat_id = "2147840111"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Mardom"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "14"
        strings_accuracy = "High"
    strings:
        $x_10_1 = {d0 1b 00 00 02 28 2a 00 00 0a 00 28 16 00 00 0a 72 43 00 00 70 28 17 00 00 0a 6f 18 00 00 0a 1f 28 28 31 00 00 0a 0a 06 14 28 32 00 00 0a 2c}  //weight: 10, accuracy: High
        $x_2_2 = "TnRDcmVhdGVFdmVudA==" wide //weight: 2
        $x_2_3 = "TnRBbGxvY2F0ZVZpcnR1YWxNZW1vcnk=" wide //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Mardom_AMR_2147844016_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Mardom.AMR!MTB"
        threat_id = "2147844016"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Mardom"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {0d 16 0b 2b 13 09 07 9a 03 28 ?? ?? ?? 06 13 04 11 04 2d 0c 07 17 58 0b 07 09 8e 69 32 e7}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Mardom_SPL_2147846791_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Mardom.SPL!MTB"
        threat_id = "2147846791"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Mardom"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {11 3d 11 3e 16 9e 00 11 3e 17 58 13 3e 11 3e 11 3d 8e 69 fe 04 13 3f 11 3f 3a e1 ff ff ff}  //weight: 1, accuracy: High
        $x_1_2 = "_ALVgaewDiwada" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Mardom_AMD_2147849940_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Mardom.AMD!MTB"
        threat_id = "2147849940"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Mardom"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {0b 2b f8 02 50 06 91 18 2d 18 26 02 50 06 02 50 07 91 9c 02 50 07 08 9c 06 17 58 0a 07 17 59 0b 2b 03 0c 2b e6 06 07 32 da}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Mardom_AMA_2147850007_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Mardom.AMA!MTB"
        threat_id = "2147850007"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Mardom"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {0b 2b f8 02 50 06 91 1d 2d 18 26 02 50 06 02 50 07 91 9c 02 50 07 08 9c 06 17 58 0a 07 17 59 0b 2b 03 0c 2b e6 06 07 32 da}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Mardom_MBFX_2147850551_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Mardom.MBFX!MTB"
        threat_id = "2147850551"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Mardom"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "7"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {17 0a 20 60 ea 00 00 0b 06 16 fe 01 13 0d 11 0d 2d 09 00 07}  //weight: 2, accuracy: High
        $x_2_2 = {45 00 4f 00 66 00 57 00 53 00 75 00 67 00 53 00 39 00 74 00 6d 00 59 00 37 00 46 00 65 00 6d 00 59 00 67 00 65 00 31 00 34 00 30 00 4a 00 57 00 4a 00 2f 00 64 00 46 00 4b 00 6f}  //weight: 2, accuracy: High
        $x_2_3 = "Rn1goaG3UC" wide //weight: 2
        $x_1_4 = "CryptoStream" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Mardom_AAJB_2147852472_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Mardom.AAJB!MTB"
        threat_id = "2147852472"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Mardom"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {02 08 02 8e 69 5d 02 08 02 8e 69 5d 91 07 08 07 8e 69 5d 91 61 28 ?? 00 00 0a 02 08 1e 58 1d 59 02 8e 69 5d 91 59 20 fd 00 00 00 58 19 58 20 00 01 00 00 5d d2 9c 08 17 58 0c 08 6a 02 8e 69 17 59 6a 06 17 58 6e 5a 31 b7}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Mardom_AAKC_2147852957_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Mardom.AAKC!MTB"
        threat_id = "2147852957"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Mardom"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_4_1 = {07 8e 69 8d ?? 00 00 01 0c 16 0d 38 ?? ?? 00 00 08 09 07 09 91 06 09 06 6f ?? 00 00 0a 5d 6f ?? 00 00 0a 61 d2 9c 09 17 58 0d 09 07 8e 69 32 e0}  //weight: 4, accuracy: Low
        $x_1_2 = "ReadAsByteArrayAsync" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Mardom_KA_2147892121_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Mardom.KA!MTB"
        threat_id = "2147892121"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Mardom"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "Low"
    strings:
        $x_10_1 = {16 2d 1d 06 09 11 04 09 8e 69 5d 91 08 11 04 91 61 d2 6f ?? 00 00 0a 11 04 17 58 1d 2c de 13 04 11 04 08 8e 69 32 d9}  //weight: 10, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Mardom_AMSA_2147894274_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Mardom.AMSA!MTB"
        threat_id = "2147894274"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Mardom"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {07 09 16 6f ?? 00 00 0a 13 04 12 04 28 ?? 00 00 0a 13 05 08 11 05 6f ?? 00 00 0a 09 17 58 0d 09 07 6f ?? 00 00 0a 32 d8 08 6f ?? 00 00 0a 13 06}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Mardom_AAFY_2147896759_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Mardom.AAFY!MTB"
        threat_id = "2147896759"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Mardom"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "Low"
    strings:
        $x_3_1 = {0a 03 50 6f ?? 00 00 0a 6f ?? 00 00 0a 0b 73 ?? 00 00 0a 0c 08 07 6f ?? 00 00 0a 08 18 6f ?? 00 00 0a 08 6f ?? 00 00 0a 02 50 16 02 50 8e 69 6f ?? 00 00 0a 2a}  //weight: 3, accuracy: Low
        $x_1_2 = "FromBase64String" ascii //weight: 1
        $x_1_3 = "CreateDecryptor" ascii //weight: 1
        $x_1_4 = "TransformFinalBlock" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Mardom_AAWT_2147896827_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Mardom.AAWT!MTB"
        threat_id = "2147896827"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Mardom"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {04 08 04 8e 69 5d 1c 58 1c 59 1d 58 1d 59 04 08 04 8e 69 5d 91 07 08 07 8e 69 5d 1c 58 1c 59 1d 58 1d 59 91 61 28 ?? 00 00 0a 04 08 20 87 10 00 00 58 20 86 10 00 00 59 04 8e 69 5d 91 59 20 fa 00 00 00 58 1c 58 20 00 01 00 00 5d d2 9c 08 17 58 0c 08 6a 04 8e 69 17 59 6a 06 17 58 6e 5a 31 9f}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Mardom_SM_2147897434_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Mardom.SM!MTB"
        threat_id = "2147897434"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Mardom"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {16 13 04 16 13 05 1f 10 8d 1d 01 00 01 13 06 06 1a 5a 8d 93 00 00 01 13 07 38 5b 01 00 00 16 13 09 2b 12 11 06 11 09 07 11 04 11 09 58 95 9e 11 09 17 58 13 09 11 09 1f 10 32 e8}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Mardom_CCFW_2147899739_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Mardom.CCFW!MTB"
        threat_id = "2147899739"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Mardom"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {02 07 02 8e b7 5d 02 07 02 8e b7 5d 91 08 07 08 8e b7 5d 91 61 02 07 17 58 02 8e b7 5d 91 59}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Mardom_BNAA_2147901308_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Mardom.BNAA!MTB"
        threat_id = "2147901308"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Mardom"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_4_1 = {04 03 04 58 11 01 58}  //weight: 4, accuracy: High
        $x_1_2 = "Reverse" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Mardom_SPD_2147901347_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Mardom.SPD!MTB"
        threat_id = "2147901347"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Mardom"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {0b 73 19 00 00 0a 25 07 6f ?? ?? ?? 0a 25 18 6f ?? ?? ?? 0a 25 18 6f ?? ?? ?? 0a 25 6f ?? ?? ?? 0a 06 16 06 8e 69}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Mardom_CIAA_2147901544_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Mardom.CIAA!MTB"
        threat_id = "2147901544"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Mardom"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {0a 06 07 28 ?? 00 00 0a 91 8c ?? 00 00 01 09 07 09 8e b7 8c ?? 00 00 01 28 ?? 00 00 0a 28 ?? 00 00 0a 91 8c ?? 00 00 01 07 04 8c ?? 00 00 01 28 ?? 00 00 0a 09 8e b7 8c ?? 00 00 01 28 ?? 00 00 0a 28 ?? 00 00 0a 11 04 28 ?? 00 00 0a 28 ?? 00 00 0a 28 ?? 00 00 0a 9c 07 11 07 12 01}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Mardom_NB_2147903262_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Mardom.NB!MTB"
        threat_id = "2147903262"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Mardom"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {02 03 02 4b 03 04 61 05 61 58 0e 07 0e 04 95 58 7e ?? 08 00 04 0e 06 17 59 95 58 0e 05 28 d2 0d 00 06 58 54 2a}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Mardom_NN_2147904132_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Mardom.NN!MTB"
        threat_id = "2147904132"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Mardom"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {02 03 02 4b 03 04 61 05 61 58 ?? ?? ?? ?? 95 58 7e ad 08 ?? ?? 0e 06 17 59 95 58 0e 05}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Mardom_NA_2147904304_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Mardom.NA!MTB"
        threat_id = "2147904304"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Mardom"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_5_1 = {0a 5d 6f 19 00 00 0a 61 d2}  //weight: 5, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Mardom_NC_2147904792_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Mardom.NC!MTB"
        threat_id = "2147904792"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Mardom"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {07 08 17 59 25 0c 91 61 1f 10 1f 1f 5f 62 58 ?? ?? 08 00 06 0d 09 06 16}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Mardom_ND_2147906431_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Mardom.ND!MTB"
        threat_id = "2147906431"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Mardom"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "High"
    strings:
        $x_10_1 = {11 27 11 20 61 11 1d 19 58 61 11 32 61 d2}  //weight: 10, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Mardom_NE_2147910555_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Mardom.NE!MTB"
        threat_id = "2147910555"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Mardom"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "12"
        strings_accuracy = "High"
    strings:
        $x_5_1 = {06 18 5d 26 06 19 5d 2c 04 06 1b 5d 26 06 17 58 0a 06}  //weight: 5, accuracy: High
        $x_5_2 = {07 18 5d 2d 06 11 06 07 58 13 06 07 17 58 0b 07 09 31 ed}  //weight: 5, accuracy: High
        $x_1_3 = "System.Security.Cryptography" ascii //weight: 1
        $x_1_4 = "Rijndael" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Mardom_SSXP_2147910850_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Mardom.SSXP!MTB"
        threat_id = "2147910850"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Mardom"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_4_1 = {2b 1e 11 0b 6f e7 00 00 0a 13 23 11 0c 11 23 11 10 59 61 13 0c 11 10 11 0c 19 58 1e 63 59 13 10 11 0b 6f b4 00 00 06 2d d9 de 0c}  //weight: 4, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Mardom_SQ_2147917683_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Mardom.SQ!MTB"
        threat_id = "2147917683"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Mardom"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "Zklymrrqljc" ascii //weight: 2
        $x_2_2 = "$697ceff4-130f-468a-bbee-4b7a0801a6f0" ascii //weight: 2
        $x_2_3 = "toyscenter.cl" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Mardom_YZAA_2147923082_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Mardom.YZAA!MTB"
        threat_id = "2147923082"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Mardom"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "Low"
    strings:
        $x_3_1 = {02 25 17 58 10 00 91 7e 64 02 00 04 02 25 17 58 10 00 91 1e 62 60 7e 64 02 00 04 02 25 17 58 10 00 91 1f 10 62 60 7e 64 02 00 04 02 25 17 58 10 00 91 1f 18 62 60 13 04 7e 64 02 00 04 02 25 17 58 10 00 91 7e 64 02 00 04 02 25 17 58 10 00 91 1e 62 60 7e 64 02 00 04 02 25 17 58 10 00 91 1f 10 62 60 7e 64 02 00 04 02 25 17 58 10 00 91 1f 18 62 60 13 05 d0 07 00 00 1b 28 ?? 00 00 0a 6f e7 02 00 0a 11 05 28 ?? 02 00 0a 13 06 7e 64 02 00 04 02 11 06 16 11 04 1a 59 28 ?? 00 00 0a 11 06 a5 07 00 00 1b 0b 0f 00 28 ?? 02 00 0a 10 02 07 2a}  //weight: 3, accuracy: Low
        $x_1_2 = "vQUnpzyUdRyZdxxBTmFpzZTzGDjdiYqHXJCFsEwliolSkMZGRwSwasFWwVhlQVmFbrBUus" ascii //weight: 1
        $x_1_3 = "LTXTVvWXwYQtfMCFqSXiEtWlgYMPLKXoIt" ascii //weight: 1
        $x_1_4 = "QzILOMHiwEIXJPbnfjuqYJPXrmfQELrJWYMUcLztEbZifnpxdtAIfJrGjkUchqdlMyBkCHLUkBmxjhsEwhnLKjeMgFkr" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Mardom_AABA_2147924089_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Mardom.AABA!MTB"
        threat_id = "2147924089"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Mardom"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_4_1 = {13 04 11 04 07 28 ?? 00 00 06 73 ?? 00 00 0a 13 05 09 11 05 09 6f ?? 00 00 0a 28 ?? 00 00 06 5b 6f ?? 00 00 0a 6f ?? 00 00 0a 09 11 05 09 6f ?? 00 00 0a 28 ?? 00 00 06 5b 6f ?? 00 00 0a 6f ?? 00 00 0a 09 28 ?? 00 00 06 6f ?? 00 00 0a 08 09 6f ?? 00 00 0a 28 ?? 00 00 06 73 ?? 00 00 0a 13 06 11 06 02 28 ?? 00 00 06 02 8e 69 6f ?? 00 00 0a 11 06 6f ?? 00 00 0a de 0c}  //weight: 4, accuracy: Low
        $x_1_2 = "CreateDecryptor" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Mardom_GPN_2147927076_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Mardom.GPN!MTB"
        threat_id = "2147927076"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Mardom"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {61 d2 9c 20 05 00 00 00 38 66 ff ff ff 38 96 00 00 00 20 05 00}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Mardom_MM_2147931492_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Mardom.MM!MTB"
        threat_id = "2147931492"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Mardom"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_3_1 = {08 72 01 00 00 70 28 05 00 00 0a 72 33 00 00 70 28 05 00 00 0a 6f 06 00 00 0a 0d 73 07 00 00 0a 13 04 07 73 08 00 00 0a 13 05}  //weight: 3, accuracy: High
        $x_2_2 = {11 06 11 04 6f 0a 00 00 0a 11 04 6f 0b 00 00 0a 0b dd 2b 00 00 00}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Mardom_SAJ_2147931940_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Mardom.SAJ!MTB"
        threat_id = "2147931940"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Mardom"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {73 24 00 00 0a 25 73 25 00 00 0a 25 00 28 11 00 00 0a 72 ?? ?? ?? 70 28 12 00 00 0a 6f 13 00 00 0a 6f 26 00 00 0a 00 25 00 28 11 00 00 0a 72 ?? ?? ?? 70 28 12 00 00 0a}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Mardom_GTR_2147935041_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Mardom.GTR!MTB"
        threat_id = "2147935041"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Mardom"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "Low"
    strings:
        $x_10_1 = {0b 00 07 20 ?? ?? ?? ?? fe 01 39 ?? ?? ?? ?? fe 0d 00 00 7c ?? ?? ?? ?? fe 0d 00 00 28 ?? ?? ?? ?? 20 ?? ?? ?? 00 0b 00 07 20 ?? ?? ?? 00 fe 01 39}  //weight: 10, accuracy: Low
        $x_10_2 = {0b 00 07 20 ?? ?? ?? ?? fe 01 39 ?? ?? ?? 00 fe 0d 00 00 20 ?? ?? ?? ff 7d ?? ?? ?? 04 20 ?? ?? ?? 00 0b 00 07 20 ?? ?? ?? 00 fe 01}  //weight: 10, accuracy: Low
    condition:
        (filesize < 20MB) and
        (1 of ($x*))
}

rule Trojan_MSIL_Mardom_AYA_2147935290_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Mardom.AYA!MTB"
        threat_id = "2147935290"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Mardom"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {1b 2c 3b 00 16 2d 08 2b 15 2b 16 1a 2d 1a 26 2b 1a 2b 1b 2b 1c 1b 2d 20 26 16 2d f3 de 20 02 2b e8 28 04 00 00 06 2b e3 0a 2b e4 06 2b e3 02 2b e2 28 06 00 00 06 2b dd 0b 2b de 26 de c2 1b 2c bf}  //weight: 2, accuracy: High
        $x_1_2 = "$a5877a5d-1828-4b3d-8bf8-48aae6120d1a" ascii //weight: 1
        $x_1_3 = "CreateDecryptor" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

