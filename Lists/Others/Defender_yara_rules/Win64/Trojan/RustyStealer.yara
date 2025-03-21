rule Trojan_Win64_RustyStealer_A_2147912272_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/RustyStealer.A!MTB"
        threat_id = "2147912272"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "RustyStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {29 c1 f7 d0 41 89 c7 41 21 cf 66 0f bc c0 0f b7 c0 48 c1 e0 05 48 89 fe 48 29 c6 48 8b 56 f0 4c 8b 46 f8}  //weight: 1, accuracy: High
        $x_1_2 = "encryptedPassword" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_RustyStealer_ZX_2147913787_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/RustyStealer.ZX!MTB"
        threat_id = "2147913787"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "RustyStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {45 89 e0 45 21 d8 42 33 3c 82 33 79 e8 45 89 e0 41 c1 e8 18 45 89 f1 41 c1 e9 10 45 21 d9 46 8b 3c 8e 47 33 3c 82 41 89 e8 41 c1 e8 08 45 21 d8}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

