rule Trojan_Win64_GhostRat_LML_2147932821_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/GhostRat.LML!MTB"
        threat_id = "2147932821"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "GhostRat"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {48 8d 54 11 01 80 30 a7 48 83 c0 01 48 39 d0 75 f4}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_GhostRat_DCP_2147935876_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/GhostRat.DCP!MTB"
        threat_id = "2147935876"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "GhostRat"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {45 8a 24 11 c4 e3 fd 00 f6 d8 c4 e3 fd 00 ff d8 c5 cd 60 e1 c5 cd 68 f1 c5 c5 60 c1 c5 c5 68 f9 44 30 24 0f c5 fd 60 c2 c5 dd 60 e1 c5 e5 60 dd c5 c5 73 d8 02 c5 fd 69 f4 c5 fd 61 c4 c5 dd 73 dc 02 c5 f5 73 db 02 c5 e5 69 d7 48 ff c1}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

