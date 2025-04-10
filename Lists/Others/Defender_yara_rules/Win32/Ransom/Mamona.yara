rule Ransom_Win32_Mamona_CCJX_2147938504_0
{
    meta:
        author = "defender2yara"
        detection_name = "Ransom:Win32/Mamona.CCJX!MTB"
        threat_id = "2147938504"
        type = "Ransom"
        platform = "Win32: Windows 32-bit platform"
        family = "Mamona"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "Mamona, R.I.P" ascii //weight: 2
        $x_1_2 = "cmd.exe /C ping 127.0.0.7 -n 3 > Nul & Del /f /q \"%s\"" wide //weight: 1
        $x_1_3 = "YOUR FILES HAVE BEEN ENCRYPTED!" wide //weight: 1
        $x_1_4 = "CHECK README." wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

