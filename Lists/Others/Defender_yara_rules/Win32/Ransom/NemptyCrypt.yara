rule Ransom_Win32_NemptyCrypt_SK_2147754753_0
{
    meta:
        author = "defender2yara"
        detection_name = "Ransom:Win32/NemptyCrypt.SK!MTB"
        threat_id = "2147754753"
        type = "Ransom"
        platform = "Win32: Windows 32-bit platform"
        family = "NemptyCrypt"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {c7 85 38 ff ff ff ?? ?? ?? ?? c7 85 ?? fe ff ff ?? ?? ?? ?? c7 85 ?? ff ff ff ?? ?? ?? ?? c7 85 ?? fd ff ff ?? ?? ?? ?? c7 85 ?? ff ff ff ?? ?? ?? ?? c7 85 ?? fe ff ff ?? ?? ?? ?? c7 85 ?? fe ff ff ?? ?? ?? ?? c7 45 ?? ?? ?? ?? ?? c7 85 ?? ff ff ff ?? ?? ?? ?? c7 85 ?? ff ff ff ?? ?? ?? ?? c7 85 ?? fe ff ff ?? ?? ?? ?? c7 85 ?? fe ff ff ?? ?? ?? ?? c7 85 ?? ff ff ff ?? ?? ?? ?? c7 85 ?? fd ff ff ?? ?? ?? ?? c7 85 ?? fd ff ff ?? ?? ?? ?? c7 85 ?? ff ff ff ?? ?? ?? ?? c7 85 ?? ff ff ff ?? ?? ?? ?? c7 85 ?? fd ff ff}  //weight: 2, accuracy: Low
        $x_2_2 = {55 8b ec 83 ec ?? c7 45 ?? ?? ?? ?? ?? c7 45 ?? ?? ?? ?? ?? c7 45 ?? ?? ?? ?? ?? c7 45 ?? ?? ?? ?? ?? c7 45 ?? ?? ?? ?? ?? 81 45 ?? ?? ?? ?? ?? 81 45 ?? ?? ?? ?? ?? 81 6d ?? ?? ?? ?? ?? 81 45 ?? ?? ?? ?? ?? 81 45 ?? ?? ?? ?? ?? 81 45 ?? ?? ?? ?? ?? 81 6d ?? ?? ?? ?? ?? 81 6d ?? ?? ?? ?? ?? 81 45}  //weight: 2, accuracy: Low
        $x_1_3 = {30 0c 37 83 ee 01 0f 89 ?? ?? ff ff 50 00 f7 a5 ?? ff ff ff 8b 85 ?? ff ff ff 81 85 ?? ?? ff ff ?? ?? ?? ?? 81 6d ?? ?? ?? ?? ?? 81 85 ?? ?? ff ff}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

