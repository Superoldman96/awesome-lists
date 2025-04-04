rule Trojan_Win32_ClipCoinGrab_A_2147767241_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClipCoinGrab.A!MTB"
        threat_id = "2147767241"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClipCoinGrab"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "Crypto Currency Wallet Changer\\Bitcoin-Grabber\\obj\\Release\\Bitcoin-Grabber.pdb" ascii //weight: 1
        $x_1_2 = "SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run" ascii //weight: 1
        $x_1_3 = "ethereum" ascii //weight: 1
        $x_1_4 = "Bitcoin-Grabber.exe" ascii //weight: 1
        $x_1_5 = "AddClipboardFormatListener" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

