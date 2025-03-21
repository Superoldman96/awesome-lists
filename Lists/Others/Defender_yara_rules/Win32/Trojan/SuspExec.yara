rule Trojan_Win32_SuspExec_YY_2147920411_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/SuspExec.YY"
        threat_id = "2147920411"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "SuspExec"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "20"
        strings_accuracy = "Low"
    strings:
        $x_10_1 = "cmd.exe" wide //weight: 10
        $x_10_2 = {61 00 75 00 74 00 6f 00 69 00 74 00 33 00 2e 00 65 00 78 00 65 00 20 00 [0-255] 2e 00 61 00 33 00 78 00}  //weight: 10, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_SuspExec_YX_2147920412_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/SuspExec.YX"
        threat_id = "2147920412"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "SuspExec"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "101"
        strings_accuracy = "Low"
    strings:
        $n_100_1 = " -path " wide //weight: -100
        $x_1_2 = "pythonw.exe" wide //weight: 1
        $x_1_3 = "taskhostw.exe" wide //weight: 1
        $x_100_4 = {20 00 2d 00 69 00 70 00 20 00 [0-255] 20 00 2d 00 70 00 6f 00 72 00 74 00 20 00 34 00 34 00 33 00}  //weight: 100, accuracy: Low
    condition:
        (filesize < 20MB) and
        (not (any of ($n*))) and
        (
            ((1 of ($x_100_*) and 1 of ($x_1_*))) or
            (all of ($x*))
        )
}

