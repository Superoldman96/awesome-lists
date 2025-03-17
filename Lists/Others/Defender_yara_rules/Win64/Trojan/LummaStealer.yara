rule Trojan_Win64_LummaStealer_AB_2147888447_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/LummaStealer.AB!MTB"
        threat_id = "2147888447"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "LummaStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "201"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {f1 d5 00 fa 4c 62 cc f4 0f 0b}  //weight: 1, accuracy: High
        $x_100_2 = {0f b6 3c 02 89 d9 80 e1 18 d3 e7 89 c1 83 e1 fc 31 7c 0c 14 40 83 c3 08 39 c6 75 e4}  //weight: 100, accuracy: High
        $x_100_3 = {8d 1c ed 00 00 00 00 89 d9 80 e1 18 80 c9 07 31 c0 40 d3 e0 89 e9 83 e1 3c 31 44 0c 14 83 fe 38}  //weight: 100, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_LummaStealer_KAA_2147894571_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/LummaStealer.KAA!MTB"
        threat_id = "2147894571"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "LummaStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "thoseintroductory.exe" ascii //weight: 1
        $x_1_2 = "callcustomerpro.exe" ascii //weight: 1
        $x_1_3 = "Software\\Microsoft\\Windows\\CurrentVersion\\RunOnce" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_LummaStealer_IP_2147894962_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/LummaStealer.IP!MTB"
        threat_id = "2147894962"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "LummaStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {33 c1 8b 0c 24 48 8b 54 24 20 88 04 0a}  //weight: 1, accuracy: High
        $x_1_2 = "GPUView.pdb" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_LummaStealer_NL_2147897386_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/LummaStealer.NL!MTB"
        threat_id = "2147897386"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "LummaStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {74 29 8b 05 ?? ?? ?? ?? 65 48 8b 0c 25 ?? ?? ?? ?? 48 8b 04 c1 4c 8b 80 ?? ?? ?? ?? 48 8b 0d 46 b0 2e 00 31 d2}  //weight: 5, accuracy: Low
        $x_1_2 = "maninternmentsrijibmaninternment" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_LummaStealer_NL_2147897386_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/LummaStealer.NL!MTB"
        threat_id = "2147897386"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "LummaStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "writerfunctionpro.exe" ascii //weight: 1
        $x_1_2 = "timeprogrammer.exe" ascii //weight: 1
        $x_1_3 = "SendEffectively" wide //weight: 1
        $x_1_4 = "DecryptFileA" ascii //weight: 1
        $x_1_5 = "DelNodeRunDLL32" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_LummaStealer_CCHG_2147901937_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/LummaStealer.CCHG!MTB"
        threat_id = "2147901937"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "LummaStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {48 98 48 8b d0 48 8d 4c 24 ?? e8 ?? ?? ?? ?? 0f b6 00 48 8b 4c 24 ?? 48 8b 94 24 ?? ?? ?? ?? 48 03 d1 48 8b ca 0f b6 09 33 c8 8b c1 48 8b 4c 24 ?? 48 8b 94 24 ?? ?? ?? ?? 48 03 d1 48 8b ca 88 01 e9}  //weight: 1, accuracy: Low
        $x_1_2 = {48 63 04 24 48 8b 4c 24 ?? 0f b7 04 41 89 44 24 ?? 8b 04 24 99 b9 ?? ?? ?? ?? f7 f9 8b c2 83 c0 ?? 8b 4c 24 04 33 c8 8b c1 48 63 0c 24 48 8b 54 24 ?? 66 89 04 4a eb}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_LummaStealer_NS_2147902328_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/LummaStealer.NS!MTB"
        threat_id = "2147902328"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "LummaStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "Low"
    strings:
        $x_3_1 = {41 0f b7 0a 0f 83 ee 0e fc ff 66 41 89 01 48 8d 64 24 ?? e9 f5 31 fc ff}  //weight: 3, accuracy: Low
        $x_3_2 = {e8 51 3c fd ff 33 c9 48 f7 54 24 ?? 4d 85 d2 48 8d 64 24 ?? 0f 84 74 7d fe ff}  //weight: 3, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_LummaStealer_NLK_2147904080_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/LummaStealer.NLK!MTB"
        threat_id = "2147904080"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "LummaStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "Low"
    strings:
        $x_3_1 = {48 83 ec 18 4c 8b c1 b8 4d 5a 00 00 66 39 05 ?? ?? ?? ?? 75 78 48 63 0d ?? ?? ?? ?? 48 8d 15 cd 70 cf ff 48 03 ca}  //weight: 3, accuracy: Low
        $x_3_2 = {66 0f 6f 05 8d a4 12 00 48 83 c8 ff f3 0f 7f 05 ?? ?? ?? ?? 48 89 05 12 0f 14 00 f3 0f 7f 05 ?? ?? ?? ?? 48 89 05 1b 0f 14 00 c6 05 ?? ?? ?? ?? 01 b0 01 48 83 c4}  //weight: 3, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_LummaStealer_AMW_2147919022_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/LummaStealer.AMW!MTB"
        threat_id = "2147919022"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "LummaStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_5_1 = {41 ff c1 49 63 c9 8a 04 19 41 88 04 1a 44 88 1c 19 41 0f b6 0c 1a 49 03 cb 0f b6 c1 8a 0c 18 41 30 0e 49 ff c6 48 83 ef 01 75 a9}  //weight: 5, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_LummaStealer_NM_2147920281_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/LummaStealer.NM!MTB"
        threat_id = "2147920281"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "LummaStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_3_1 = {33 c9 48 89 4c 24 30 89 4c 24 38 49 ba 70 d1 54 54 6f 07 a8 e8 48 21 4c 24 20 44 8d 49 0c 8d 51 01 48 8b c8 48 8b c7 4c 8d 44 24 30 ff 15 ff 73 03 00}  //weight: 3, accuracy: High
        $x_2_2 = {85 c0 74 08 8a 44 24 38 24 01 eb 06 32 c0 eb 02 b0 01 48 8b 4c 24 40 48 33 cc e8 c8 c2 fa ff 48 8b 5c 24 60 48 83 c4 50}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_LummaStealer_GV_2147920749_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/LummaStealer.GV!MTB"
        threat_id = "2147920749"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "LummaStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "24"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "main.Md5Encode" ascii //weight: 1
        $x_5_2 = "main.EUkcKYTIDb" ascii //weight: 5
        $x_1_3 = "main.TerminateProcess" ascii //weight: 1
        $x_5_4 = "main.nlZMziDMqv" ascii //weight: 5
        $x_1_5 = "main.CreateSuspendedProcess" ascii //weight: 1
        $x_1_6 = "main.ResumeThread" ascii //weight: 1
        $x_1_7 = "main.WriteProcessMemory" ascii //weight: 1
        $x_1_8 = "main.Wow64SetThreadContext" ascii //weight: 1
        $x_1_9 = "main.GetThreadContext" ascii //weight: 1
        $x_5_10 = "LwNOrAxUVY/main.go" ascii //weight: 5
        $x_1_11 = "main.nwPXANdvbL" ascii //weight: 1
        $x_1_12 = "main.qWwvfeKaCT" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_LummaStealer_DB_2147921600_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/LummaStealer.DB!MTB"
        threat_id = "2147921600"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "LummaStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b cb c1 e9 02 ff c1 44 6b c1 32 8b cb 83 e1 03 6b d1 32 83 c2 0a}  //weight: 1, accuracy: High
        $x_1_2 = {48 89 7c 24 ?? 48 89 44 24 ?? 48 89 74 24 ?? 4c 89 7c 24 ?? c7 44 24 ?? ?? ?? ?? ?? c7 44 24 ?? ?? ?? ?? ?? 44 89 44 24 ?? 89 54 24 ?? 41 b9 ?? ?? ?? ?? 4d 8b 06 48 8d 15 ?? ?? ?? ?? 33 c9}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_LummaStealer_YAB_2147921679_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/LummaStealer.YAB!MTB"
        threat_id = "2147921679"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "LummaStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "11"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {43 0f b6 44 3e 01 0f b6 4c 05 30 43 0f b6 44 3e 02 0f b6 54 05 30 43 0f b6 44 3e 03 44 0f b6 44 05 30 49 83 c6 04 c1 e7 06 03 f9 c1 e7 06 03 fa c1 e7 06 41 03 f8}  //weight: 1, accuracy: High
        $x_10_2 = {44 30 27 48 ff c7 49 83 ef 01 0f 85}  //weight: 10, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_LummaStealer_VV_2147921877_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/LummaStealer.VV!MTB"
        threat_id = "2147921877"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "LummaStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "8"
        strings_accuracy = "High"
    strings:
        $x_5_1 = "test_lib/main.go" ascii //weight: 5
        $x_1_2 = "main.qHbLKcVFPY" ascii //weight: 1
        $x_1_3 = "main.BnMWnpUycO" ascii //weight: 1
        $x_1_4 = "main.HFdrQcLRTh" ascii //weight: 1
        $x_1_5 = "main.HwNcTblZxJ" ascii //weight: 1
        $x_1_6 = "main.khgzBwOcdS" ascii //weight: 1
        $x_1_7 = "main.RDF" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_5_*) and 3 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win64_LummaStealer_GM_2147921911_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/LummaStealer.GM!MTB"
        threat_id = "2147921911"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "LummaStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_4_1 = "main.cFVvJaclpr" ascii //weight: 4
        $x_1_2 = "main.oepNeSmKgT" ascii //weight: 1
        $x_1_3 = "main.Md5Encode" ascii //weight: 1
        $x_4_4 = "main.cQPubDNZNj" ascii //weight: 4
        $x_1_5 = "main.RDF" ascii //weight: 1
        $x_1_6 = "main.neJDPbLRWD" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_4_*) and 1 of ($x_1_*))) or
            ((2 of ($x_4_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win64_LummaStealer_VM_2147921951_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/LummaStealer.VM!MTB"
        threat_id = "2147921951"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "LummaStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "main.RDF" ascii //weight: 1
        $x_2_2 = "main.VZCOQzehCp" ascii //weight: 2
        $x_1_3 = "main.WjLRMuNaor" ascii //weight: 1
        $x_2_4 = "main.EFTcmUgEtT" ascii //weight: 2
        $x_1_5 = "main.faqLSRWRlV" ascii //weight: 1
        $x_2_6 = "main.lnejYwfZkm" ascii //weight: 2
        $x_1_7 = "main.iiQhNBnnfo" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_2_*) and 3 of ($x_1_*))) or
            ((2 of ($x_2_*) and 1 of ($x_1_*))) or
            ((3 of ($x_2_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win64_LummaStealer_VVG_2147922956_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/LummaStealer.VVG!MTB"
        threat_id = "2147922956"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "LummaStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "12"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "main.Md5Encode" ascii //weight: 1
        $x_1_2 = "main.RDF" ascii //weight: 1
        $x_1_3 = "main.randSeq" ascii //weight: 1
        $x_8_4 = "main.KwPMHzDibl" ascii //weight: 8
        $x_1_5 = "main._Cfunc_wrf" ascii //weight: 1
        $x_1_6 = "main.TerminateProcess" ascii //weight: 1
        $x_1_7 = "main.CreateSuspendedProcess" ascii //weight: 1
        $x_1_8 = "main.WriteProcessMemory" ascii //weight: 1
        $x_1_9 = "main._RunPE" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_8_*) and 4 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win64_LummaStealer_EM_2147932659_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/LummaStealer.EM!MTB"
        threat_id = "2147932659"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "LummaStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "I02Op2e6ZD52OJInVolF/WhWwGUgukvawTLHcS4qp" ascii //weight: 1
        $x_1_2 = "PWGVuoIBdb/core_injector.go" ascii //weight: 1
        $x_1_3 = "PWGVuoIBdb/injection.go" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_LummaStealer_NITA_2147935434_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/LummaStealer.NITA!MTB"
        threat_id = "2147935434"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "LummaStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "16"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {66 44 39 34 41 74 6a ff 15 75 82 07 00 85 c0 74 5c 48 8b 4d 30 4c 8d 45 38 48 8d 55 30 ff c3 e8 9e e6 ff ff 8b c8 85 c0 78 0f 48 8b 4d 30 48 85 c9 74 48 48 8b 45 38 eb c7}  //weight: 2, accuracy: High
        $x_2_2 = {48 8d 4c 24 78 48 8d 1d 03 89 07 00 ff 15 8d 5d 07 00 0f b7 44 24 78 48 8d 0d e9 88 07 00 bf 05 00 00 00 85 c0}  //weight: 2, accuracy: High
        $x_2_3 = "stimulate.exe" wide //weight: 2
        $x_2_4 = "Deleting file" ascii //weight: 2
        $x_2_5 = "extract payloads" ascii //weight: 2
        $x_2_6 = "Connected to elevated engine" ascii //weight: 2
        $x_1_7 = "DecryptFileW" ascii //weight: 1
        $x_1_8 = "UnmapViewOfFile" ascii //weight: 1
        $x_1_9 = "load a decryption method" ascii //weight: 1
        $x_1_10 = "rollback is disabled" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_LummaStealer_PIN_2147936194_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/LummaStealer.PIN!MTB"
        threat_id = "2147936194"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "LummaStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {ff c2 48 63 c2 48 8d 8c 24 00 01 00 00 48 03 c8 0f b6 01 43 88 04 08 44 88 11 43 0f b6 0c 08 49 03 ca 0f b6 c1 0f b6 8c 04 ?? ?? ?? ?? 30 0f 48 ff c7 49 83 eb 01 75}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

