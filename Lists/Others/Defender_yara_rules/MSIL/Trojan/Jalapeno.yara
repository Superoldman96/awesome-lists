rule Trojan_MSIL_Jalapeno_AJL_2147910601_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.AJL!MTB"
        threat_id = "2147910601"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {11 26 13 14 20 b4 00 00 00 95 58 80 ?? 00 00 04 11 2c 7e ?? 00 00 04 20 26 04 00 00 95 58 13 2c 11 2c 7e ?? 00 00 04 20 22 04 00 00 95 33 50 11 28 7e ?? 00 00 04 25 17 58}  //weight: 2, accuracy: Low
        $x_1_2 = "kbdes2Seard" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_AJL_2147910601_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.AJL!MTB"
        threat_id = "2147910601"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "13"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "Tilesetter 2024" wide //weight: 1
        $x_2_2 = "20F3B949-149A-4515-B752-5497C04E16D4" ascii //weight: 2
        $x_5_3 = "Burstein.dll" wide //weight: 5
        $x_5_4 = "Burstein Applebee" wide //weight: 5
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_AJL_2147910601_2
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.AJL!MTB"
        threat_id = "2147910601"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "46"
        strings_accuracy = "High"
    strings:
        $x_10_1 = "Steam Unlocker.exe" wide //weight: 10
        $x_10_2 = "0d4bf89c-3b30-4d70-bac8-5b9a0a979592" ascii //weight: 10
        $x_10_3 = "Daniel\\source\\repos\\Steam Unlocker\\Steam Unlocker\\obj\\Release\\Steam Unlocker.pdb" ascii //weight: 10
        $x_10_4 = "Trying elevate previleges to administrator" wide //weight: 10
        $x_5_5 = "http://adpk.duckdns.org:58630" wide //weight: 5
        $x_5_6 = "http://3.80.28.180/IwwpdjJD/chan.exe" wide //weight: 5
        $x_1_7 = "\\AppData\\Roaming\\Microsoft\\Windows\\FILE.exe" wide //weight: 1
        $x_1_8 = "\\AppData\\Roaming\\Microsoft\\Windows\\chan.exe" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((4 of ($x_10_*) and 1 of ($x_5_*) and 1 of ($x_1_*))) or
            ((4 of ($x_10_*) and 2 of ($x_5_*))) or
            (all of ($x*))
        )
}

rule Trojan_MSIL_Jalapeno_OXAA_2147912526_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.OXAA!MTB"
        threat_id = "2147912526"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "9"
        strings_accuracy = "High"
    strings:
        $x_5_1 = {16 13 0a 2b 2b 11 05 11 0a 8f 29 00 00 01 25 47 08 d2 61 d2 52 11 0a 20 ff 00 00 00 5f 2d 0b 08 08 5a 20 b7 5c 8a 00 6a 5e 0c 11 0a 17 58 13 0a 11 0a 11 05 8e 69 32 cd}  //weight: 5, accuracy: High
        $x_1_2 = "CreateInstance" ascii //weight: 1
        $x_1_3 = "ReverseDecode" ascii //weight: 1
        $x_1_4 = "Invoke" ascii //weight: 1
        $x_1_5 = "IsLogging" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_NE_2147913834_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.NE!MTB"
        threat_id = "2147913834"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "15"
        strings_accuracy = "High"
    strings:
        $x_5_1 = {00 00 95 11 05 13 05 61}  //weight: 5, accuracy: High
        $x_5_2 = {00 00 95 11 0f 13 0f 61}  //weight: 5, accuracy: High
        $x_5_3 = {95 11 0a 13 0a 61}  //weight: 5, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_SCAA_2147916554_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.SCAA!MTB"
        threat_id = "2147916554"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {02 06 02 06 91 66 d2 9c 08}  //weight: 1, accuracy: High
        $x_2_2 = {02 06 8f 24 00 00 01 25 71 ?? 00 00 01 20 ?? 00 00 00 59 d2 81 ?? 00 00 01 08}  //weight: 2, accuracy: Low
        $x_2_3 = {02 06 8f 24 00 00 01 25 71 ?? 00 00 01 1f ?? 58 d2 81 ?? 00 00 01 08}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_SNAA_2147916916_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.SNAA!MTB"
        threat_id = "2147916916"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {11 04 11 05 6f ?? 00 00 0a 11 05 20 00 01 00 00 5d d2 59 20 ff 00 00 00 5f d2 13 06 11 06 0f 02 28 ?? 00 00 0a 20 00 01 00 00 5d d2 61 d2 13 06 11 04 11 05 11 06 6f ?? 00 00 0a 00 00 11 05 17 58 13 05 11 05 11 04 6f ?? 00 00 0a fe 04 13 07 11 07 2d ab}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_NL_2147917177_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.NL!MTB"
        threat_id = "2147917177"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "Low"
    strings:
        $x_3_1 = {7e 02 00 00 04 7e ?? 00 00 04 6f ?? 00 00 0a 73 ?? 00 00 0a 25 72 ?? 00 00 70 6f ?? 00 00 0a 25 72 ?? 00 00 70 7e ?? 00 00 04 72 ?? 00 00 70 28 ?? 00 00 0a 6f ?? 00 00 0a 25}  //weight: 3, accuracy: Low
        $x_1_2 = "PorroQuisquamEst" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_NL_2147917177_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.NL!MTB"
        threat_id = "2147917177"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_3_1 = {02 7b bc 01 00 04 1c 8d 78 00 00 01 25 16 02 7c b8 00 00 04 28 57 00 00 0a a2 25 17 72 95 32 00 70 a2 25 18 02 7c b6 00 00 04 28 57 00 00 0a a2 25 19 72 a7 32 00 70 a2 25 1a 02 7c b7 00 00 04 28 57 00 00 0a a2 25 1b 72 ab 32 00 70 a2 28 5e 00 00 0a 6f 2a 00 00 0a}  //weight: 3, accuracy: High
        $x_1_2 = "done_droped" wide //weight: 1
        $x_1_3 = "eDba.exe" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_SWAA_2147917323_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.SWAA!MTB"
        threat_id = "2147917323"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {15 59 91 61 ?? 08 20 0d 02 00 00 58 20 0c 02 00 00 59 1d 59 1d 58 ?? 8e 69 5d 1f 09 58 1f 0c 58 1f 15 59 91 59 20 fb 00 00 00 58 1b 58 20 00 01 00 00 5d d2 9c 08 17 58 0c}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_PPF_2147917736_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.PPF!MTB"
        threat_id = "2147917736"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR"
        threshold = "7"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "cdn.gosth.ltd/launcher.exe" wide //weight: 2
        $x_2_2 = "Temp\\eu.png" wide //weight: 2
        $x_1_3 = "Gosth Injected!" wide //weight: 1
        $x_1_4 = "all traces destroyed!" wide //weight: 1
        $x_1_5 = "Self Delete" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_PJ_2147917932_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.PJ!MTB"
        threat_id = "2147917932"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {73 5a 03 00 0a 0d 08 6f ?? ?? ?? 0a 16 09 a2 28 ?? ?? ?? 0a 28 ?? ?? ?? 06 13 04 06 7e 4a 01 00 04 11 04 08 6f ?? ?? ?? 0a 08 2c 06}  //weight: 2, accuracy: Low
        $x_2_2 = {7e 4a 01 00 04 6f ?? ?? ?? 0a 6f ?? ?? ?? 0a 6f ?? ?? ?? 0a 28 ?? ?? ?? 06 26 7e 4c 01 00 04 28 ?? ?? ?? 0a de 0a}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_NJ_2147917953_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.NJ!MTB"
        threat_id = "2147917953"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_3_1 = {28 fb 03 00 0a 6f fc 03 00 0a 28 fd 03 00 0a 28 fe 03 00 0a 28 07 00 00 2b 17 fe 02 0a 06}  //weight: 3, accuracy: High
        $x_1_2 = "SuDungSoLuong" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_NJ_2147917953_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.NJ!MTB"
        threat_id = "2147917953"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_3_1 = {06 8d 5d 00 00 01 0b 16 72 01 00 00 70 72 01 00 00 70 07 06 02 7b 5b 00 00 04 28 0e 01 00 06 0c 08 06 18 59 fe 04 0d 09 13 04 11 04 2c 03 00 2b 07 06 18 5a 0a}  //weight: 3, accuracy: High
        $x_2_2 = {28 3f 00 00 0a 07 16 08 08 16 30 03 16 2b 01 17 59 6f 00 01 00 0a}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_NJ_2147917953_2
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.NJ!MTB"
        threat_id = "2147917953"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "7"
        strings_accuracy = "High"
    strings:
        $x_3_1 = {73 a3 00 00 0a 0a 28 e3 01 00 06 0b 07 1f 20 8d 58 00 00 01 25 d0 6a 02 00 04 28 8b 00 00 0a 6f c8 00 00 0a 07 1f 10 8d 58 00 00 01 25 d0 6c 02 00 04 28 8b 00 00 0a 6f c9 00 00 0a}  //weight: 3, accuracy: High
        $x_2_2 = {6f ca 00 00 0a 17 73 a4 00 00 0a 25 02 16 02 8e 69 6f a5 00 00 0a 6f a8 00 00 0a 06 6f a7 00 00 0a}  //weight: 2, accuracy: High
        $x_1_3 = "set_ClientCredential" ascii //weight: 1
        $x_1_4 = "WindowsApplication11.pdb" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_NJ_2147917953_3
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.NJ!MTB"
        threat_id = "2147917953"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_3_1 = {07 6f 23 00 00 0a a5 19 00 00 01 0c 12 02 28 24 00 00 0a 6f 25 00 00 0a 0d 12 02 28 26 00 00 0a 13 04 11 04 75 01 00 00 1b 2c 5a 11 04 74 01 00 00 1b 13 05 09 72 3b 00 00 70 1b 6f 27 00 00 0a 2c 15 06 09 72 4d 00 00 70 28 28 00 00 0a 28 1b 00 00 0a 13 06 2b 1c 09 28 29 00 00 0a 13 07 06 11 07 72 57 00 00 70 28 28 00 00 0a 28 1b 00 00 0a 13 06 11 06 28 1c 00 00 0a 2d 09 11 06 11 05 28 2a 00 00 0a 07 6f 2b 00 00 0a 3a 70 ff ff ff}  //weight: 3, accuracy: High
        $x_2_2 = {6f 2d 00 00 06 6f 3d 00 00 0a 25 03 6f 31 00 00 06 25 03 28 3e 00 00 0a 6f 34 00 00 06 6f 36 00 00 06 de 19}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_NJ_2147917953_4
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.NJ!MTB"
        threat_id = "2147917953"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "Low"
    strings:
        $x_3_1 = {72 55 00 00 70 6f ?? 00 00 0a 00 25 72 65 00 00 70 11 04 72 cf 00 00 70 28 28 00 00 0a 6f ?? 00 00 0a 00 25 17 6f ?? 00 00 0a 00 25 17}  //weight: 3, accuracy: Low
        $x_1_2 = "trojam.Properties.Resources" wide //weight: 1
        $x_1_3 = "SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_3_*) and 1 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Trojan_MSIL_Jalapeno_TMAA_2147917980_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.TMAA!MTB"
        threat_id = "2147917980"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {16 59 91 61 ?? 08 20 0d 02 00 00 58 20 0c 02 00 00 59 1d 59 1d 58 ?? 8e 69 5d 1f 09 58 1f 0c 58 1f 15 59 91 59 20 fb 00 00 00 58 1b 58 20 00 01 00 00 5d d2 9c 08 17 58 0c}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_BZ_2147918059_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.BZ!MTB"
        threat_id = "2147918059"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "CryptedFile.exe" ascii //weight: 1
        $x_1_2 = "Soraadd.Resources" ascii //weight: 1
        $x_1_3 = "SoraAdd.exe" ascii //weight: 1
        $x_1_4 = "36537493-e85c-4d7e-96bc-32c472e96b4c" ascii //weight: 1
        $x_1_5 = "7c23ff90-33af-11d3-95da-00a024a85b51" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_NF_2147919249_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.NF!MTB"
        threat_id = "2147919249"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {1f 0b 11 26 58 1d 11 22 58 61 d2 13 1a}  //weight: 2, accuracy: High
        $x_1_2 = {11 19 18 91 11 19 19 91 1f 10 62 60 11 19 16 91 1e 62 60 11 19 17 91 1f 18 62 60 02 65 61}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_NF_2147919249_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.NF!MTB"
        threat_id = "2147919249"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "7"
        strings_accuracy = "High"
    strings:
        $x_3_1 = {02 6f 0f 00 00 0a 0a 20 5e 1d 44 4c 03 58 20 24 00 00 00 d3}  //weight: 3, accuracy: High
        $x_2_2 = {5f 07 25 17 58 0b 61 d2 0d 25 1e 63 07 25 17 58 0b 61 d2}  //weight: 2, accuracy: High
        $x_1_3 = "ContainsKey" ascii //weight: 1
        $x_1_4 = "49CC6B38-355C-4F68-BFDC-1205742F5A93" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_ULAA_2147919544_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.ULAA!MTB"
        threat_id = "2147919544"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_5_1 = {59 91 61 04 08 20 0c 02 00 00 58 20 0b 02 00 00 59 1b 59 1b 58 04 8e 69 5d 1f 09 58 1f 0d 58 1f 16 59 91 59 20 fb 00 00 00 58 1b 58 20 00 01 00 00 5d d2 9c 08 17 58 0c}  //weight: 5, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_UTAA_2147919833_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.UTAA!MTB"
        threat_id = "2147919833"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_5_1 = {59 91 61 03 08 20 0c 02 00 00 58 20 0b 02 00 00 59 1b 59 1b 58 03 8e 69 5d 1f 09 58 1f 0d 58 1f 16 59 91 59 20 fb 00 00 00 58 1b 58 20 00 01 00 00 5d d2 9c 08 17 58 0c}  //weight: 5, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_VEAA_2147920050_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.VEAA!MTB"
        threat_id = "2147920050"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {2b 1b 12 05 2b 1b 08 07 09 18 6f ?? 00 00 0a 1f 10 28 ?? 00 00 0a 6f ?? 00 00 0a de 1d 11 04 2b e1 28 ?? 00 00 0a 2b de 1e 2c 0b 11 05 2c 07 11 04 28 ?? 00 00 0a 1c 2c f6 dc 17 2c bd 09 18 25 2c 09 58 0d 09 07 6f ?? 00 00 0a 3f}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_XMAA_2147921703_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.XMAA!MTB"
        threat_id = "2147921703"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "7"
        strings_accuracy = "Low"
    strings:
        $x_3_1 = {11 05 2a 00 11 00 72 97 00 00 70 28 ?? 00 00 06 72 c9 00 00 70 28 ?? 00 00 06 28 ?? 00 00 06 13 09 20 01 00 00 00 7e ?? 00 00 04 7b ?? 00 00 04 3a ?? 00 00 00 26}  //weight: 3, accuracy: Low
        $x_2_2 = {11 03 11 07 16 11 07 8e 69 28 ?? 00 00 06 20}  //weight: 2, accuracy: Low
        $x_1_3 = "CreateDecryptor" ascii //weight: 1
        $x_1_4 = "GetByteArrayAsync" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_XRAA_2147921705_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.XRAA!MTB"
        threat_id = "2147921705"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_3_1 = {16 13 04 2b 28 08 11 04 02 11 04 91 07 61 06 09 91 61 d2 9c 09 03 6f ?? 00 00 0a 17 59 33 04 16 0d 2b 04 09 17 58 0d 11 04 17 58 13 04 11 04 02 8e 69 32 d1}  //weight: 3, accuracy: Low
        $x_2_2 = {02 02 8e 69 17 59 91 1f 70 61 0b 02 8e 69 8d ?? 00 00 01 0c 16 0d}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_SK_2147921710_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.SK!MTB"
        threat_id = "2147921710"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {07 72 15 00 00 70 6f 29 00 00 0a 0a dd 0d 00 00 00}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_SARA_2147921756_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.SARA!MTB"
        threat_id = "2147921756"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "High"
    strings:
        $x_10_1 = {d1 13 14 11 1d 11 09 91 13 22 11 1d 11 09 11 22 11 21 61 11 1f 19 58 61 11 34 61 d2 9c}  //weight: 10, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_AMB_2147921788_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.AMB!MTB"
        threat_id = "2147921788"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_4_1 = {0a 0c 08 06 07 6f ?? 00 00 0a 0d 73 ?? 00 00 0a 13 04 11 04 09 17 73 ?? 00 00 0a 13 05 11 05 02 16 02 8e 69 6f ?? 00 00 0a 11 04 6f ?? 00 00 0a 10 00 dd ?? 00 00 00 11 05 39 ?? 00 00 00 11 05 6f ?? 00 00 0a dc 11 04 39}  //weight: 4, accuracy: Low
        $x_1_2 = "CreateDecryptor" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_VV_2147921878_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.VV!MTB"
        threat_id = "2147921878"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {73 33 00 00 0a 80 01 00 00 04 73 34 00 00 0a 80 02 00 00 04 73 35 00 00 0a 80 03 00 00 04 73 35 00 00 0a 80 04 00 00 04 7e 03 00 00 04}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_MBXT_2147922236_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.MBXT!MTB"
        threat_id = "2147922236"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {32 31 37 44 31 35 00 34 35 42 37 37 43 31 38 00 46 30 33 46 35 30}  //weight: 2, accuracy: High
        $x_1_2 = "16B7C39A.resources" ascii //weight: 1
        $x_1_3 = "unknownspf_loader" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_YJAA_2147922431_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.YJAA!MTB"
        threat_id = "2147922431"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {11 05 11 04 1f 10 6f ?? 01 00 0a 6f ?? 01 00 0a 00 11 05 11 05 6f ?? 01 00 0a 11 05 6f ?? 01 00 0a 6f ?? 01 00 0a 13 06 11 06 02 74 ?? 00 00 1b 16 02 14 72 1e 2c 00 70 16 8d ?? 00 00 01 14 14 14 28 ?? 00 00 0a 28 ?? 00 00 0a 6f ?? 01 00 0a 0b 07 74 ?? 00 00 1b 28 ?? 01 00 06 14 72 44 2c 00 70 16 8d ?? 00 00 01 14 14 14 28 ?? 00 00 0a 74 ?? 00 00 1b 0a}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_SL_2147922694_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.SL!MTB"
        threat_id = "2147922694"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "$675282ac-a345-491b-9292-f1e54d17c1cc" ascii //weight: 2
        $x_2_2 = "Lab06_Bai01" ascii //weight: 2
        $x_2_3 = "Control_Viewer.Properties.Resources" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_SM_2147922696_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.SM!MTB"
        threat_id = "2147922696"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {00 06 07 07 18 5a 9e 00 07 17 58 0b 07 20 e8 03 00 00 fe 04 0c 08 2d e8}  //weight: 2, accuracy: High
        $x_1_2 = "$5ec208b3-0188-4bc1-9cc3-0bfa6e6f2c39" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_NG_2147922727_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.NG!MTB"
        threat_id = "2147922727"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {11 07 11 0c 25 17 58 13 0c 11 0b 1e 64 d2 9c}  //weight: 2, accuracy: High
        $x_1_2 = {11 03 11 07 d2 6e 1e 11 06 5a 1f 3f 5f 62 60}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_VGV_2147922955_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.VGV!MTB"
        threat_id = "2147922955"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {06 11 06 7e 01 00 00 04 11 06 91 20 82 00 00 00 61 d2 9c 11 06 17 58 13 06 20 0f 00 68 33 fe 0e 0a 00 fe 0d 0a 00 00 48 68 d3 13 09}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_AS_2147923705_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.AS!MTB"
        threat_id = "2147923705"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {06 72 c9 00 00 70 15 16 28 5b 00 00 0a 0b 19 08 72 ef 00 00 70 07 19 9a 28 ?? 00 00 0a 1f 20 19 15 15 28 ?? 00 00 0a 19 07 17 9a 21 ff ff ff ff ff ff ff ff 16 28 ?? 00 00 0a 17 8d 26 00 00 01 0d 09 16 19 9e 09 28 ?? 00 00 0a 19 08 72 ef 00 00 70 07 1a 9a 28 ?? 00 00 0a 1f 20 19 15 15 28 ?? 00 00 0a 19 07 18 9a 21 ff ff ff ff ff ff ff ff 16 28 ?? 00 00 0a 17 8d 26 00 00 01 0d 09 16 19 9e 09 28 ?? 00 00 0a 08 07 19 9a 28 ?? 00 00 0a 28 ?? 00 00 0a 26 08}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_SN_2147923794_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.SN!MTB"
        threat_id = "2147923794"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "8ae50c39.Resources.resources" ascii //weight: 1
        $x_1_2 = "$d2d22a78-cd4e-4d99-a9de-306d662558b5" ascii //weight: 1
        $x_1_3 = "ProDRENALIN.exe" ascii //weight: 1
        $x_1_4 = "proDAD 2013-2017" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_GM_2147923800_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.GM!MTB"
        threat_id = "2147923800"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {02 28 11 00 00 0a 20 00 f2 2b 00}  //weight: 1, accuracy: High
        $x_1_2 = {80 01 00 00 04 73 36 00 00 0a 80 02 00 00 04 73 37 00 00 0a 80 03 00 00 04 73 37 00 00 0a 80 04 00 00 04}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_ADBA_2147924124_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.ADBA!MTB"
        threat_id = "2147924124"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_3_1 = {2b 3b 2b 40 2b 45 72 ?? ?? 03 70 2b 45 2b 4a 1d 2c 07 2b 48 14 2b 48 2c 03 2b 4b 7a 16 2d f0 17 2c ed d0 ?? 00 00 01 2b 44 06 72 ?? ?? 03 70 28 ?? 00 00 0a 80 ?? 00 00 04 16 2d d3 2a 28 ?? 00 00 0a 2b be 28 ?? ?? 00 06 2b b9 6f ?? 00 00 0a 2b b4 6f ?? 00 00 0a 2b b4 0a 2b b3 06 2b b5 28 ?? 00 00 0a 2b b1}  //weight: 3, accuracy: Low
        $x_1_2 = "FromBase64String" ascii //weight: 1
        $x_1_3 = "CreateDecryptor" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_ARAX_2147924449_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.ARAX!MTB"
        threat_id = "2147924449"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {07 11 18 07 11 18 93 66 d1 9d 11 18 17 58 13 18 11 18 07 8e 69 32 e9}  //weight: 2, accuracy: High
        $x_2_2 = {07 11 12 07 11 12 93 66 d1 9d 11 12 17 58 13 12 11 12 07 8e 69 32 e9}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (1 of ($x*))
}

rule Trojan_MSIL_Jalapeno_NK_2147924509_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.NK!MTB"
        threat_id = "2147924509"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_3_1 = {28 21 00 00 0a 13 09 11 09 28 03 00 00 06 11 09 14 fe 06 09 00 00 06 73 29 00 00 0a 28 08 00 00 06}  //weight: 3, accuracy: High
        $x_1_2 = "AfhostRandomFolder" ascii //weight: 1
        $x_1_3 = "MicrosoftEdge.Properties.Resources.resources" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_AJA_2147924828_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.AJA!MTB"
        threat_id = "2147924828"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_3_1 = {16 13 07 2b 12 00 11 06 11 07 58 05 11 07 91 52 00 11 07 17 58 13 07 11 07 05 8e 69 fe 04 13 08 11 08 2d e1}  //weight: 3, accuracy: High
        $x_2_2 = {16 13 09 2b 24 00 06 11 07 11 09 58 91 07 11 09 91 fe 01 16 fe 01 13 0a 11 0a 2c 06 00 16 13 08 2b 14 00 11 09 17 58 13 09 11 09 07 8e 69 fe 04 13 0b 11 0b 2d cf 11 08 13 0c 11 0c 2c 0b 00 08 11 07}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_VG_2147924830_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.VG!MTB"
        threat_id = "2147924830"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {06 11 05 7e ?? 00 00 04 11 05 91 20 82 00 00 00 61 d2 9c 11 05 17 58 13 05 20 ?? ?? ?? ?? 00 fe 0e [0-6] fe 0d 09 [0-4] 48 68 d3 13 08}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_ACCA_2147924914_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.ACCA!MTB"
        threat_id = "2147924914"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_3_1 = {38 d4 00 00 00 08 72 ?? 00 00 70 28 ?? 00 00 0a 6f ?? 00 00 0a 1c 2c ed 17 2c ea 08 72 ?? 00 00 70 28 ?? 00 00 0a 6f ?? 00 00 0a 08 08 6f ?? 00 00 0a 08 6f ?? 00 00 0a 6f ?? 00 00 0a 0d 73 ?? 00 00 0a 13 04 11 04 09 17 73 ?? 00 00 0a 13 05 2b 1e 2b 20 16 07 8e 69 6f ?? 00 00 0a 11 04 6f ?? 00 00 0a 28 ?? 00 00 0a 13 06 1c 2c e2 de 32 11 05 2b de 07 2b dd}  //weight: 3, accuracy: Low
        $x_1_2 = "FromBase64String" ascii //weight: 1
        $x_1_3 = "CreateDecryptor" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_AJCA_2147925102_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.AJCA!MTB"
        threat_id = "2147925102"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "Low"
    strings:
        $x_3_1 = {0a 26 06 72 f7 01 00 70 18 18 8d ?? 00 00 01 25 16 04 a2 25 17 05 a2 28 ?? 00 00 0a 0b 03 73 ?? 00 00 0a 0c 08 07 74 ?? 00 00 01 16 73 ?? 00 00 0a 0d 73 ?? 00 00 0a 13 04 00 09 11 04 6f ?? 00 00 0a 00 11 04 6f ?? 00 00 0a 13 05 de 23}  //weight: 3, accuracy: Low
        $x_2_2 = {0a 26 06 72 d9 01 00 70 1e 17 8d ?? 00 00 01 25 16 04 a2 28 ?? 00 00 0a 26 06 72 e9 01 00 70 1e 17 8d ?? 00 00 01 25 16 05 a2}  //weight: 2, accuracy: Low
        $x_1_3 = "CreateDecryptor" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_MBXW_2147925128_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.MBXW!MTB"
        threat_id = "2147925128"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_3_1 = {20 79 01 00 00 91 1f 45 58 13 17}  //weight: 3, accuracy: High
        $x_2_2 = "FinalProjectForNETD" ascii //weight: 2
        $x_1_3 = "063c10458dd7" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_AMY_2147925623_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.AMY!MTB"
        threat_id = "2147925623"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_4_1 = "DDrLe9PDDDsyfDDDFk\\rLzDDFke.DV3FIlrKe9TDDDrOFJ" wide //weight: 4
        $x_1_2 = "kH7H}TUQETXI73vDDDEH}nURU\\[qEH8I" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_SZDF_2147925747_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.SZDF!MTB"
        threat_id = "2147925747"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "9"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {08 11 05 11 04 11 06 1f 1f 5f 62 60 20 ff 00 00 00 5f d2 6f ?? 00 00 0a 00 00 08 6f ?? 00 00 0a 13 0f 2b 00 11 0f 2a}  //weight: 5, accuracy: Low
        $x_4_2 = {08 11 05 20 ff 00 00 00 5f d2 6f ?? 00 00 0a 00 11 05 1e 63 13 05 11 06 1e 59 13 06 00 11 06 1d fe 02 13 0c 11 0c 2d d7}  //weight: 4, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_AUCA_2147925822_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.AUCA!MTB"
        threat_id = "2147925822"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "12"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "Lwe understand understand galaxy support large communicate network teach grow" ascii //weight: 2
        $x_2_2 = "quick vision slow white organize" ascii //weight: 2
        $x_2_3 = "lead inspire change" ascii //weight: 2
        $x_2_4 = "direct small direct" ascii //weight: 2
        $x_1_5 = "us collaborate connect" ascii //weight: 1
        $x_1_6 = "support green you" ascii //weight: 1
        $x_1_7 = "$548acdbc-fce2-4d83-aa05-7b61ca75b9be" ascii //weight: 1
        $x_1_8 = "FromBase64String" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_PMOH_2147926033_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.PMOH!MTB"
        threat_id = "2147926033"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "Low"
    strings:
        $x_9_1 = {00 02 04 05 28 ?? 00 00 06 0a 0e 04 03 6f ?? 00 00 0a 59 0b 03 06 07 28 ?? 00 00 06 00 2a}  //weight: 9, accuracy: Low
        $x_1_2 = {4c 00 6f 00 61 00 64 00 00 21 47 00 65 00 74 00 45 00 78 00 70 00 6f 00 72 00 74 00 65 00 64 00 54 00 79 00 70 00 65 00 73}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_AYA_2147926813_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.AYA!MTB"
        threat_id = "2147926813"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "Thread_hijacking" ascii //weight: 2
        $x_1_2 = "$009ab3ac-373b-4ddb-a8f3-5A50D13265EA" ascii //weight: 1
        $x_1_3 = "TheAttack.exe" ascii //weight: 1
        $x_1_4 = "ProcessInject" ascii //weight: 1
        $x_1_5 = "Successfully created the process..." wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_NIT_2147926893_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.NIT!MTB"
        threat_id = "2147926893"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {12 00 28 1e 00 00 0a 7d 04 00 00 04 12 00 15 7d 03 00 00 04 12 00 7b 04 00 00 04 0b 12 01 12 00 28 ?? 00 00 2b 12 00 7c 04 00 00 04 28 ?? 00 00 0a 2a}  //weight: 2, accuracy: Low
        $x_2_2 = {20 00 0c 00 00 28 ?? 00 00 0a 7e 01 00 00 04 28 ?? 00 00 06 6f ?? 00 00 0a 0a 12 00 28 ?? 00 00 0a 28 ?? 00 00 0a 2a}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_NIT_2147926893_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.NIT!MTB"
        threat_id = "2147926893"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {73 27 00 00 0a 20 e8 03 00 00 20 88 13 00 00 6f 28 00 00 0a 28 21 00 00 0a 7e 0f 00 00 04 2d 0a 28 1e 00 00 06 28 18 00 00 06 7e 16 00 00 04 6f 29 00 00 0a 26 17 2d c8}  //weight: 2, accuracy: High
        $x_1_2 = "capCreateCaptureWindowA" ascii //weight: 1
        $x_1_3 = "capGetDriverDescriptionA" ascii //weight: 1
        $x_1_4 = "Antivirus" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_2_*) and 2 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Trojan_MSIL_Jalapeno_MX_2147927894_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.MX!MTB"
        threat_id = "2147927894"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {02 1a 8d 3a 00 00 01 25 16 72 71 00 00 70 a2 25 17 72 c9 00 00 70 a2 25 18 72 1b 01 00 70 a2 25 19 72 73 01 00 70 a2 7d 08 00 00 04}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_AVGA_2147928707_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.AVGA!MTB"
        threat_id = "2147928707"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {08 11 04 02 11 04 91 07 11 04 07 8e b7 5d 91 61 09 11 04 09 8e b7 5d 91 61 9c 7e ?? 00 00 04 1f 1c 94 fe ?? ?? 00 00 01 58 7e ?? 00 00 04 1f 1d 94 59 13 06}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_SKKP_2147929581_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.SKKP!MTB"
        threat_id = "2147929581"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "Low"
    strings:
        $x_3_1 = {02 8e 69 20 00 30 00 00 1f 40 28 ?? 00 00 06 0a 02 16 06 02 8e 69 28 ?? 00 00 0a 7e 04 00 00 0a 0b 7e 04 00 00 0a 26 16 73 06 00 00 0a 26 16 73 06 00 00 0a 26 06 0c 7e 04 00 00 0a 16 08 7e 04 00 00 0a 16 7e 04 00 00 0a 28 ?? 00 00 06 0b 07 15 28 ?? 00 00 06 26 2a}  //weight: 3, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_AWHA_2147929683_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.AWHA!MTB"
        threat_id = "2147929683"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_4_1 = {0a 0c 00 08 07 6f ?? 00 00 0a 16 73 ?? 00 00 0a 0d 00 14 13 04 02 8e 69 17 58 8d ?? 00 00 01 13 04 16 13 05 09 11 04 16 02 8e 69 6f ?? 00 00 0a 13 05 11 05 17 58 8d ?? 00 00 01 0a 11 04 06 11 05 28 ?? 00 00 0a 00 09 6f ?? 00 00 0a 00 00 de 12}  //weight: 4, accuracy: Low
        $x_1_2 = "CreateDecryptor" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_ABIA_2147929799_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.ABIA!MTB"
        threat_id = "2147929799"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "Low"
    strings:
        $x_4_1 = {0a 13 04 11 04 09 06 07 6f ?? 00 00 0a 17 73 ?? 00 00 0a 13 05 11 05 08 16 08 8e 69 6f ?? 00 00 0a 73 ?? 00 00 0a 25 11 04 6f ?? 00 00 0a 6f ?? 00 00 0a 13 06 dd}  //weight: 4, accuracy: Low
        $x_1_2 = "FromBase64String" ascii //weight: 1
        $x_1_3 = "CreateDecryptor" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_GNT_2147929902_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.GNT!MTB"
        threat_id = "2147929902"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "Low"
    strings:
        $x_10_1 = {13 08 1a 8d ?? ?? ?? ?? 13 09 11 08 11 09 16 1a 6f ?? ?? ?? 0a 26 11 09 16 28 ?? ?? ?? 0a 13 0a 11 08 16 73 ?? ?? ?? 0a 13 0b 11 0b 06}  //weight: 10, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_ARAZ_2147932553_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.ARAZ!MTB"
        threat_id = "2147932553"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {09 06 02 06 91 08 08 11 04 84 95 08 11 07 84 95 d7 6e 20 ff 00 00 00 6a 5f b7 95 61 86 9c 18 38 78 ff ff ff}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_ABLA_2147933277_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.ABLA!MTB"
        threat_id = "2147933277"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_3_1 = {2b 2c 2b 2d 2b 2e 08 07 6f ?? 04 00 0a 08 6f ?? 04 00 0a 0d 73 ?? 04 00 0a 25 09 02 16 02 8e 69 6f ?? 03 00 0a 6f ?? 04 00 0a 13 04 de 1a 08 2b d1 06 2b d0 6f ?? 04 00 0a 2b cb}  //weight: 3, accuracy: Low
        $x_1_2 = "FromBase64String" ascii //weight: 1
        $x_1_3 = "CreateDecryptor" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_AQLA_2147933687_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.AQLA!MTB"
        threat_id = "2147933687"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_3_1 = {01 25 16 0f 00 20 09 02 00 00 20 42 02 00 00 28 ?? 00 00 06 9c 25 17 0f 00 20 9a 00 00 00 20 d6 00 00 00 28 ?? 00 00 06 9c 25 18 0f 00 28 ?? 00 00 0a 9c 6f ?? 00 00 0a 2a d0 34 00 00 06 26 2a}  //weight: 3, accuracy: Low
        $x_2_2 = {01 25 16 0f 00 20 59 01 00 00 20 12 01 00 00 28 ?? 00 00 06 9c 25 17 0f 00 20 da 01 00 00 20 96 01 00 00 28 ?? 00 00 06 9c 25 18 0f 00 20 18 03 00 00 20 55 03 00 00 28 ?? 00 00 06 9c 0a 1d 0d}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_ATLA_2147933774_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.ATLA!MTB"
        threat_id = "2147933774"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_5_1 = {59 1a 58 1a 59 91 61 03 08 20 10 02 00 00 58 20 0f 02 00 00 59 19 59 19 58 03 8e 69 5d 1f 09 58 1f 0c 58 1f 15 59 91 59 20 fa 00 00 00 58 1c 58 20 00 01 00 00 5d d2 9c 08 17 58 0c}  //weight: 5, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_EAJF_2147935743_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.EAJF!MTB"
        threat_id = "2147935743"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_5_1 = {08 09 28 28 00 00 0a 07 6f 29 00 00 0a 1e 5b 8d 3e 00 00 01 13 04 1e 11 04 16 1e 28 2a 00 00 0a 73 2b 00 00 0a 13 05 04 07 08 11 04 6f 2c 00 00 0a 16 73 2d 00 00 0a 13 06 11 06 11 05 28 39 01 00 06}  //weight: 5, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_PWA_2147935794_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.PWA!MTB"
        threat_id = "2147935794"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {11 04 22 c3 f5 48 40 6f ?? 00 00 0a 26 2b 64 00 73 ac 00 00 0a 13 05 11 05 07 6f ?? 00 00 0a 26 11 05 07 6f ?? 00 00 0a 26 73 af 00 00 0a 13 06 11 06 72 c3 08 00 70 6f ?? 00 00 0a 00 11 06 6f ?? 00 00 0a 26 02 09 03 04 28 ?? 00 00 06 00 73 b2 00 00 0a 25 23 b6 f3 fd d4 41 4c 12 41 6f ?? 00 00 0a 00 13 07 11 07 6f ?? 00 00 0a 00 09 17 58 0d 00 09 02 6f ?? 00 00 0a 2f 0b 03 6f ?? 00 00 0a 04 fe 04 2b 01 16 13 08 11 08 2d 81}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_A_2147935980_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.A!MTB"
        threat_id = "2147935980"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "7"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {20 00 40 01 00 8d 84 00 00 01 0a 38 09 00 00 00 03 06 16 07 6f 26 01 00 0a 02 06 16 06 8e 69 6f 27 01 00 0a 25 0b 3a e5 ff ff ff}  //weight: 5, accuracy: High
        $x_2_2 = {8d 84 00 00 01 0d 73 da 00 00 0a 09 ?? ?? ?? ?? ?? 08 8e 69 09 8e 69 58 8d 84 00 00 01}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_ZHA_2147936058_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.ZHA!MTB"
        threat_id = "2147936058"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "11"
        strings_accuracy = "Low"
    strings:
        $x_10_1 = {06 17 58 0a 08 07 6f ?? 00 00 0a 06 17 58 0a 73 ?? 00 00 0a 0d 06 17 58 0a 09 08 6f ?? 00 00 0a 17 73 ?? 00 00 0a 13 04 06 17 58 0a 11 04 02 1f 10 02 8e 69 1f 10 59 6f ?? 00 00 0a 06 17 58 0a 11 04}  //weight: 10, accuracy: Low
        $x_1_2 = "CreateDecryptor" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_AC_2147936270_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.AC!MTB"
        threat_id = "2147936270"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {1f 28 28 11 00 00 0a 72 01 00 00 70 02 72 15 00 00 70 28 12 00 00 0a 73 13 00 00 0a 0a 73 14 00 00 0a 0b ?? ?? 06 03 2d 07 72 43 00 00 70 2b 05 72 4f 00 00 70}  //weight: 2, accuracy: Low
        $x_1_2 = "a19069bb-bd9a-4ca8-b8eb-5862dda44c02" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_AH_2147936279_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.AH!MTB"
        threat_id = "2147936279"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {01 0c 07 08 16 1a 6f 3f 00 00 0a 26 08 16 28 45 00 00 0a 26 07 16 73 46 00 00 0a}  //weight: 1, accuracy: High
        $x_1_2 = "CreateDecryptor" ascii //weight: 1
        $x_1_3 = "DebuggerHiddenAttribute" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_SDGB_2147936301_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.SDGB!MTB"
        threat_id = "2147936301"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "Low"
    strings:
        $x_4_1 = {0a 0c 08 20 ?? ?? ?? 00 28 ?? 00 00 06 28 ?? 00 00 0a 6f ?? 00 00 0a 08 20 ?? ?? ?? 00 28 ?? 00 00 06 28 ?? 00 00 0a 6f ?? 00 00 0a 08 6f ?? 00 00 0a 0d 28 ?? 00 00 0a 09 07 16 07 8e 69 6f ?? 00 00 0a 6f ?? 00 00 0a 0a de 0a}  //weight: 4, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_AI_2147936816_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.AI!MTB"
        threat_id = "2147936816"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "7"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {01 0a 06 16 06 8e 69 6f 1a 00 00 0a 26 28 1b 00 00 0a 0b 07 28 1c 00 00 0a}  //weight: 2, accuracy: High
        $x_1_2 = "CreateInstance" ascii //weight: 1
        $x_1_3 = "get_G" ascii //weight: 1
        $x_1_4 = "CompressionMode" ascii //weight: 1
        $x_1_5 = "GZipStream" ascii //weight: 1
        $x_1_6 = "CreateDecryptor" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_AJ_2147936817_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.AJ!MTB"
        threat_id = "2147936817"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {01 7d 92 01 00 04 16 0a 02 7b 93 01 00 04 16 12 00 28 46 02 00 0a 06 2c 0e 04 02 7b 92 01 00 04}  //weight: 2, accuracy: High
        $x_2_2 = "Umbral Stealer" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Jalapeno_AK_2147936818_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Jalapeno.AK!MTB"
        threat_id = "2147936818"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Jalapeno"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {01 13 04 16 13 08 2b 26 11 07 11 05 11 08 1a 11 04 16 6f 5d 00 00 0a 26 11 08 1a d6 13 08 08 11 04 16 11 07 6f}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

