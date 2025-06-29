rule Trojan_Win32_Shellcoderunner_SCRT_2147939380_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Shellcoderunner.SCRT!MTB"
        threat_id = "2147939380"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Shellcoderunner"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {5e 5b 8b 4d fc 5f e8 ?? ?? ?? 00 c9 c2 08 00 ff b5 e4 fb ff ff ff 15 ?? ?? ?? 00 57 ff b5 e0 fb ff ff ff 15 ?? ?? ?? 00 53 ff 15 ?? ?? ?? 00 59 33 c0 eb cc}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Shellcoderunner_PGSR_2147944715_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Shellcoderunner.PGSR!MTB"
        threat_id = "2147944715"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Shellcoderunner"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_5_1 = {41 00 f8 08 41 00 30 22 41 00 18 22 41 00 00 22}  //weight: 5, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

