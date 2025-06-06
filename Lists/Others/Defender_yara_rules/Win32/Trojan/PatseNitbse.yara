rule Trojan_Win32_PatseNitbse_2147942798_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/PatseNitbse!MTB"
        threat_id = "2147942798"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "PatseNitbse"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "powershell" wide //weight: 1
        $x_1_2 = "DOCTYPE html" wide //weight: 1
        $x_1_3 = "Pastebin" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

