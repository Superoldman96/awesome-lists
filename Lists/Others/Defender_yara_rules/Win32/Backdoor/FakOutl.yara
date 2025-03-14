rule Backdoor_Win32_FakOutl_SA_2147743017_0
{
    meta:
        author = "defender2yara"
        detection_name = "Backdoor:Win32/FakOutl.SA!MSR"
        threat_id = "2147743017"
        type = "Backdoor"
        platform = "Win32: Windows 32-bit platform"
        family = "FakOutl"
        severity = "Critical"
        info = "MSR: Microsoft Security Response"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "LogApplySettings" ascii //weight: 1
        $x_1_2 = "charleseedwards.dynamic-dns.net" ascii //weight: 1
        $x_1_3 = ":\\Windows\\iexplore.exe" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

