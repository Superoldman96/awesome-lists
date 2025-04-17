rule Trojan_Win64_XMRig_CCAN_2147890127_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/XMRig.CCAN!MTB"
        threat_id = "2147890127"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "XMRig"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {29 d0 48 98 48 8d 15 ?? ?? ?? ?? 40 32 2c 02 41 88 2c 3c 48 83 c7 01 49 39 fd 0f 84}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_XMRig_GA_2147929548_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/XMRig.GA!MTB"
        threat_id = "2147929548"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "XMRig"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "main.e1Bu7FURlcwCRDw" ascii //weight: 1
        $x_1_2 = "main.UGJIJ1Cuv3YDR" ascii //weight: 1
        $x_1_3 = "main.UIehToRIXbAGgw" ascii //weight: 1
        $x_1_4 = "go:itab.*net.IPAddr,net.Addr" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_XMRig_RK_2147939292_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/XMRig.RK!MTB"
        threat_id = "2147939292"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "XMRig"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_3_1 = {30 4c 04 3e 48 ff c0 48 83 f8 0c 73 06 8a 4c 24 3d}  //weight: 3, accuracy: High
        $x_2_2 = "PzLFbmBmYVZXbjd2ms94dMpoVW5jZmFWE243dmUweHRyaFVuY2Z" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

