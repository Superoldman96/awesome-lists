rule Trojan_MSIL_MassLogger_GN_2147760436_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/MassLogger.GN!MTB"
        threat_id = "2147760436"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "MassLogger"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {01 0b 07 72 ?? ?? ?? 70 6f ?? ?? ?? 0a 14 72 ?? ?? ?? 70 17 8d ?? ?? ?? 01 25 16 72 ?? ?? ?? 70 a2 14 14 28 ?? ?? ?? 0a 74 ?? ?? ?? 01 0c 00 08 14 1a 8d ?? ?? ?? 01 25 d0 ?? ?? ?? 04 28 ?? ?? ?? 0a 73 ?? ?? ?? 0a 72 ?? ?? ?? 70 28 ?? ?? ?? 0a 18 8d ?? ?? ?? 01 25 17 03 a2 14 14 28 ?? ?? ?? 0a 26 72 ?? ?? ?? ?? 0d}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_MassLogger_GN_2147760436_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/MassLogger.GN!MTB"
        threat_id = "2147760436"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "MassLogger"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {17 0c 19 8d ?? ?? ?? 01 13 06 11 06 16 7e ?? ?? ?? 04 a2 11 06 17 7e ?? ?? ?? 04 a2 11 06 18 20 ?? ?? ?? ?? 28 ?? ?? ?? 06 a2 11 06 73 ?? ?? ?? 06 [0-32] 2a}  //weight: 1, accuracy: Low
        $x_1_2 = {17 13 05 17 13 06 19 8d ?? ?? ?? 01 13 07 11 07 16 7e ?? ?? ?? 04 a2 11 07 17 7e ?? ?? ?? 04 a2 11 07 18 72 ?? ?? ?? ?? a2 11 07 73 ?? ?? ?? 06 [0-32] 2a}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (1 of ($x*))
}

rule Trojan_MSIL_MassLogger_RM_2147763799_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/MassLogger.RM!MTB"
        threat_id = "2147763799"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "MassLogger"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = "oXCCFvgFvoMFCnfdtYEwdOHfBHtnA.resources" ascii //weight: 1
        $x_1_2 = "PpLYzkgfaYBngpiXMUeROfwGTnzE.resources" ascii //weight: 1
        $x_1_3 = "PxHmqfwUlXIcRAXxIAAcUbMcMkGj.resources" ascii //weight: 1
        $x_1_4 = "rUKPidMihJiyQHedSmumJFTtwtKtA.resources" ascii //weight: 1
        $x_1_5 = {57 69 6e 64 6f 77 73 46 6f 72 6d 73 41 70 70 ?? ?? 2e 50 72 6f 70 65 72 74 69 65 73}  //weight: 1, accuracy: Low
        $x_1_6 = "bqocVYTRKxKJWXGLYgkKJhRancbMA.resources" ascii //weight: 1
        $x_1_7 = "RVzywHBbhheccROJrSfRnGjzcJmN.resources" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (3 of ($x*))
}

rule Trojan_MSIL_MassLogger_SA_2147763803_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/MassLogger.SA!MTB"
        threat_id = "2147763803"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "MassLogger"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "wHIZWZTOEfkOAFCnOXKnkOwjuoLU.resources" ascii //weight: 1
        $x_1_2 = "scSVKGwfKLrAfdmOeFZNxTgRCEXC" ascii //weight: 1
        $x_1_3 = "PpEEfOBWMpjlWiEKhEwIbWlpHwTr.resources" ascii //weight: 1
        $x_1_4 = "YlAAwjFkQdxcLRhMugHSJoqFKqKv" ascii //weight: 1
        $x_1_5 = "Lime_Pony.exe" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_MassLogger_RDA_2147912634_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/MassLogger.RDA!MTB"
        threat_id = "2147912634"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "MassLogger"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {11 07 13 05 11 05 6f 80 00 00 0a 13 06 73 81 00 00 0a 0d 09 11 06 17}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_MassLogger_RDB_2147919302_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/MassLogger.RDB!MTB"
        threat_id = "2147919302"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "MassLogger"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {11 04 06 16 06 8e 69 6f 1c 00 00 0a 09 6f 1d 00 00 0a 0a}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_MassLogger_AML_2147920453_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/MassLogger.AML!MTB"
        threat_id = "2147920453"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "MassLogger"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {16 0b 2b 2d 02 06 07 28 ?? 00 00 06 0c 04 03 6f ?? 00 00 0a 59 0d 03 08 09 28 ?? 00 00 06 03 08 09 28 ?? 00 00 06 03 04 28 ?? 00 00 06 07 17 58 0b 07 02 6f}  //weight: 2, accuracy: Low
        $x_1_2 = "TicTacToeWinForms" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_MassLogger_AML_2147920453_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/MassLogger.AML!MTB"
        threat_id = "2147920453"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "MassLogger"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {16 13 07 38 3b 01 00 00 00 02 11 05 11 07 6f ?? 00 00 0a 13 08 04 03 6f ?? 00 00 0a 59 13 09 07 72 fa 03 00 70 28 ?? 00 00 0a 2c 08 11 09 1f 64 fe 02 2b 01 16 13 0a 11 0a 2c 0d 00 11 09 1f 64 28 ?? 00 00 0a 13 09 00 11 09 19 fe 04 16 fe 01 13 0b 11 0b 2c 70}  //weight: 2, accuracy: Low
        $x_1_2 = "Vector_International" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_MassLogger_AML_2147920453_2
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/MassLogger.AML!MTB"
        threat_id = "2147920453"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "MassLogger"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "FroggSecurityChecker.FroggAbout.resources" ascii //weight: 1
        $x_1_2 = "13f38eaa-447e-4059-8dbb-ab215d6a0eaa" ascii //weight: 1
        $x_2_3 = "powered by admin@frogg.fr" wide //weight: 2
        $x_2_4 = "Frogg Security Checker" wide //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_MassLogger_MBXU_2147920462_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/MassLogger.MBXU!MTB"
        threat_id = "2147920462"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "MassLogger"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "14"
        strings_accuracy = "High"
    strings:
        $x_5_1 = "CreateInstance" wide //weight: 5
        $x_4_2 = "DeveloperTools.QuickForms" wide //weight: 4
        $x_3_3 = "Split" ascii //weight: 3
        $x_2_4 = "GetPixel" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_MassLogger_MBXT_2147921633_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/MassLogger.MBXT!MTB"
        threat_id = "2147921633"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "MassLogger"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {02 06 07 6f ?? 00 00 0a 0c 03 6f ?? 00 00 0a 19 58 04 fe ?? 16 fe ?? 0d 09 2c}  //weight: 2, accuracy: Low
        $x_1_2 = {43 00 72 00 65 00 61 00 74 00 65 00 49 00 6e 00 73 00 74 00 61 00 6e 00 63 00 65}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_MassLogger_MBXT_2147921633_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/MassLogger.MBXT!MTB"
        threat_id = "2147921633"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "MassLogger"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "15"
        strings_accuracy = "High"
    strings:
        $x_5_1 = "CSE101_Final_Prep" wide //weight: 5
        $x_4_2 = {4c 00 6f 00 61 00 64}  //weight: 4, accuracy: High
        $x_3_3 = "Calculadora" wide //weight: 3
        $x_2_4 = "InvokeMember" ascii //weight: 2
        $x_1_5 = "Split" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_MassLogger_AMA_2147922166_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/MassLogger.AMA!MTB"
        threat_id = "2147922166"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "MassLogger"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {06 02 28 9f 00 00 06 72 39 1a 00 70 72 3d 1a 00 70 6f b1 00 00 0a 28 5b 00 00 06 7d ad 00 00 04 06 fe 06 b0 00 00 06 73 b2 00 00 0a 6f b3 00 00 0a 0c d0 6d 00 00 01 28 3a 00 00 0a 72 43 1a 00 70 17 8d 2d 00 00 01 25 16 d0 09 00 00 1b 28 3a 00 00 0a a2 28 b4 00 00 0a 25}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_MassLogger_AOIA_2147930394_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/MassLogger.AOIA!MTB"
        threat_id = "2147930394"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "MassLogger"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_5_1 = {59 91 61 02 08 20 0b 02 00 00 58 20 0a 02 00 00 59 1f 09 59 1f 09 58 02 8e 69 5d 1f 09 58 1f 0e 58 1f 17 59 91 59 20 fa 00 00 00 58 1c 58 20 00 01 00 00 5d d2 9c 08 17 58 0c}  //weight: 5, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_MassLogger_AHJA_2147931246_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/MassLogger.AHJA!MTB"
        threat_id = "2147931246"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "MassLogger"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_4_1 = {0a 0b 07 28 ?? 00 00 0a 03 6f ?? 00 00 0a 6f ?? 00 00 0a 0c 06 08 6f ?? 00 00 0a 00 06 18 6f ?? 00 00 0a 00 06 6f ?? 00 00 0a 05 16 02 8e 69 6f ?? 00 00 0a 0d 2b 00 09 2a}  //weight: 4, accuracy: Low
        $x_1_2 = "CreateDecryptor" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_MassLogger_AJJA_2147931380_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/MassLogger.AJJA!MTB"
        threat_id = "2147931380"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "MassLogger"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_4_1 = {0a 0b 07 28 ?? 00 00 0a 03 6f ?? 00 00 0a 6f ?? 00 00 0a 0c 06 08 6f ?? 00 00 0a 00 06 18 6f ?? 00 00 0a 00 06 6f ?? 00 00 0a 0e 04 16 0e 04 8e 69 6f ?? 00 00 0a 0d 2b 00 09 2a}  //weight: 4, accuracy: Low
        $x_1_2 = "CreateDecryptor" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_MassLogger_PLIMH_2147931746_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/MassLogger.PLIMH!MTB"
        threat_id = "2147931746"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "MassLogger"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "11"
        strings_accuracy = "Low"
    strings:
        $x_10_1 = {0a 00 06 08 6f ?? 00 00 0a 00 06 18 6f ?? 00 00 0a 00 06 6f ?? 00 00 0a 03 16 04 8e 69 6f ?? 00 00 0a 13 04 de 16}  //weight: 10, accuracy: Low
        $x_1_2 = "CreateDecryptor" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_MassLogger_AUJA_2147931897_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/MassLogger.AUJA!MTB"
        threat_id = "2147931897"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "MassLogger"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "7"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {0a 0b 07 28 ?? 00 00 0a 03 6f ?? 00 00 0a 6f ?? 00 00 0a 0c 06 08 6f ?? 00 00 0a 00 06 18 6f ?? 00 00 0a 00 06 6f ?? 00 00 0a 0e 05 16 0e 05 8e 69 6f ?? 00 00 0a 0d 2b 00 09 2a}  //weight: 5, accuracy: Low
        $x_1_2 = "AntiBossing" ascii //weight: 1
        $x_1_3 = "CreateDecryptor" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_MassLogger_AULA_2147933775_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/MassLogger.AULA!MTB"
        threat_id = "2147933775"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "MassLogger"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_3_1 = {0a 0b 07 28 ?? 00 00 0a 03 6f ?? 00 00 0a 6f ?? 00 00 0a 0c 06 08 6f ?? 00 00 0a 00 06 18 6f ?? 00 00 0a 00 06 6f ?? 00 00 0a 0e 06 16 0e 06 8e 69 6f ?? 00 00 0a 0d 2b 00 09 2a}  //weight: 3, accuracy: Low
        $x_1_2 = "AntiBossing" ascii //weight: 1
        $x_1_3 = "CreateDecryptor" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_MassLogger_AAD_2147933907_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/MassLogger.AAD!MTB"
        threat_id = "2147933907"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "MassLogger"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_4_1 = {0a 13 04 73 ?? 00 00 0a 13 05 11 05 11 04 08 09 6f ?? 00 00 0a 17 73 ?? 00 00 0a 13 06 11 06 06 16 06 8e 69 6f ?? 00 00 0a 11 05 6f ?? 00 00 0a 13 07 dd}  //weight: 4, accuracy: Low
        $x_1_2 = "CreateDecryptor" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_MassLogger_BN_2147934463_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/MassLogger.BN!MTB"
        threat_id = "2147934463"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "MassLogger"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_4_1 = {0a 0f 00 28 ?? 00 00 0a 58 0f 00 28 ?? 00 00 0a 58 0a 06 19 5a 20 00 01 00 00 5d 0a 19 8d ?? 00 00 01 25 16 0f 00 28 ?? 00 00 0a 1f 55 61 d2 9c 25 17}  //weight: 4, accuracy: Low
        $x_1_2 = {a2 0b 02 03 04 6f ?? 00 00 0a 0c 0e 04 05 6f ?? 00 00 0a 59 0d 06 1c fe 04 16 fe 01}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_MassLogger_HHF_2147935384_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/MassLogger.HHF!MTB"
        threat_id = "2147935384"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "MassLogger"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "Low"
    strings:
        $x_10_1 = {01 25 16 0f 00 28 ?? 00 00 0a 9c 25 17 0f 00 28 ?? 00 00 0a 9c 25 18 0f 00 28 ?? 00 00 0a 9c 6f ?? 00 00 0a 00 06 28 ?? 00 00 2b 00 2a}  //weight: 10, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_MassLogger_AFOA_2147936201_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/MassLogger.AFOA!MTB"
        threat_id = "2147936201"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "MassLogger"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {11 07 8f 01 00 00 01 25 71 01 00 00 01 11 07 0e 04 58 05 59 20 ff 00 00 00 5f d2 61 d2 81 01 00 00 01 1d 13 10 38 ?? fe ff ff 11 07 17 59}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_MassLogger_ARPA_2147937375_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/MassLogger.ARPA!MTB"
        threat_id = "2147937375"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "MassLogger"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_3_1 = {02 11 05 11 06 6f ?? 00 00 0a 13 07 04 03 6f ?? 00 00 0a 59 13 08 07 72 a9 00 00 70 28 ?? 00 00 0a 2c 11 11 08 1f 64 31 0b 11 08 1f 64 28 ?? 00 00 0a 13 08 11 08 19 32 60}  //weight: 3, accuracy: Low
        $x_2_2 = {01 25 16 12 07 28 ?? 00 00 0a 9c 25 17 12 07 28 ?? 00 00 0a 9c 25 18 12 07 28 ?? 00 00 0a 9c}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_MassLogger_AUPA_2147937710_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/MassLogger.AUPA!MTB"
        threat_id = "2147937710"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "MassLogger"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "7"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {11 0c 94 13 0d 11 04 11 0d 19 5a 11 0d 18 63 59 6a 58 13 04 11 04 11 04 1b 62 11 04 19 63 60 61 13 04 11 0c 17 58 13 0c 11 0c 11 0b 75 ?? 00 00 1b 8e 69 32 c4}  //weight: 5, accuracy: Low
        $x_2_2 = {11 07 11 07 1f 11 5a 11 07 18 62 61 20 aa 00 00 00 60 9e 11 07 17 58 13 07 11 07 06 74 ?? 00 00 1b 8e 69 fe 04 13 08 11 08 2d cf}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_MassLogger_ABQA_2147937840_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/MassLogger.ABQA!MTB"
        threat_id = "2147937840"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "MassLogger"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_3_1 = {11 0a 11 0b 94 13 0c 00 11 04 11 0c 19 5a 11 0c 18 63 59 6a 58 13 04 11 04 11 04 1b 62 11 04 19 63 60 61 13 04 00 11 0b 17 58 13 0b 11 0b 11 0a 8e 69 32 cc}  //weight: 3, accuracy: High
        $x_2_2 = {06 11 06 11 06 1f 11 5a 11 06 18 62 61 20 aa 00 00 00 60 9e 00 11 06 17 58 13 06 11 06 06 8e 69 fe 04 13 07 11 07 2d d7}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

