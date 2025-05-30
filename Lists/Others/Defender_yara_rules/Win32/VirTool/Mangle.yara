rule VirTool_Win32_Mangle_A_2147824262_0
{
    meta:
        author = "defender2yara"
        detection_name = "VirTool:Win32/Mangle.A!MTB"
        threat_id = "2147824262"
        type = "VirTool"
        platform = "Win32: Windows 32-bit platform"
        family = "Mangle"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "Binject/debug/pe/reloc.go" ascii //weight: 1
        $x_1_2 = "Binject/debug/pe.(*zeroReaderAt).ReadAt" ascii //weight: 1
        $x_1_3 = "/Mangle/Mangle.go" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

