rule Trojan_MSIL_KillMBR_AW_2147816702_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/KillMBR.AW!MTB"
        threat_id = "2147816702"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "KillMBR"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "18"
        strings_accuracy = "High"
    strings:
        $x_3_1 = "Where am I" wide //weight: 3
        $x_3_2 = "system is corrupted" wide //weight: 3
        $x_3_3 = "th1s is cr4zy" wide //weight: 3
        $x_3_4 = "mbr destroyed" wide //weight: 3
        $x_3_5 = "/k reg delete HKCR /f" wide //weight: 3
        $x_3_6 = "GDI_payloads" ascii //weight: 3
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_KillMBR_RPH_2147817198_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/KillMBR.RPH!MTB"
        threat_id = "2147817198"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "KillMBR"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {20 00 02 00 00 8d 14 00 00 01 0a 72 01 00 00 70 20 00 00 00 10 19 7e 12 00 00 0a 19 16 7e 12 00 00 0a 28 02 00 00 06}  //weight: 1, accuracy: High
        $x_1_2 = "\\\\.\\PhysicalDrive0" wide //weight: 1
        $x_1_3 = "MbrOverwriter" ascii //weight: 1
        $x_1_4 = "MbrSize" ascii //weight: 1
        $x_1_5 = "WriteLine" ascii //weight: 1
        $x_1_6 = "lpBuffer" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_KillMBR_SV_2147819192_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/KillMBR.SV!MTB"
        threat_id = "2147819192"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "KillMBR"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "9"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "Your PC is trashed by trojan" ascii //weight: 1
        $x_1_2 = "Your PC is trashed by trojan MBR Hecker" ascii //weight: 1
        $x_1_3 = "If you look at this screen, you cannot start your OS" ascii //weight: 1
        $x_1_4 = "Reason: MBR is overwrited" ascii //weight: 1
        $x_1_5 = "I hope my trojan is cool!" ascii //weight: 1
        $x_1_6 = "... and yeah, that's all :D" ascii //weight: 1
        $x_1_7 = "Your PC is died" ascii //weight: 1
        $x_1_8 = "Say goodbye! :D" ascii //weight: 1
        $x_1_9 = "Hecker.pdb" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_KillMBR_ARA_2147837128_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/KillMBR.ARA!MTB"
        threat_id = "2147837128"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "KillMBR"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "/k taskkill /f /im explorer.exe && timeout 30 && shutdown /s /t 10 /c" wide //weight: 2
        $x_2_2 = "/k rd C:\\ /s /q" wide //weight: 2
        $x_2_3 = "\\\\.\\PhysicalDrive0" wide //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_KillMBR_ARA_2147837128_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/KillMBR.ARA!MTB"
        threat_id = "2147837128"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "KillMBR"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "7"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {11 06 11 07 11 07 11 07 1a 63 11 07 1e 63 5f 11 07 1f 0a 63 61 5a d2 9c 11 07 17 58 13 07 11 07 11 06 8e 69 32 da}  //weight: 2, accuracy: High
        $x_2_2 = "PlaySync" ascii //weight: 2
        $x_2_3 = "SoundPlayer" ascii //weight: 2
        $x_1_4 = "\\\\.\\PhysicalDrive0" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_KillMBR_ARA_2147837128_2
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/KillMBR.ARA!MTB"
        threat_id = "2147837128"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "KillMBR"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "\\Psychomeme.pdb" ascii //weight: 2
        $x_2_2 = "DestroyBootLoader" ascii //weight: 2
        $x_2_3 = "DestroyFolder" ascii //weight: 2
        $x_2_4 = "DestroyFile" ascii //weight: 2
        $x_2_5 = "TakeOwnerShipOfFile" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_KillMBR_ARA_2147837128_3
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/KillMBR.ARA!MTB"
        threat_id = "2147837128"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "KillMBR"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {20 00 10 00 00 13 04 11 04 17 da 17 d6 8d ?? ?? ?? 01 0c 16 6a 0d 09 20 ?? ?? ?? 00 6a 31 02 2b 2c 06 08 08 8e b7 b8 08 8e b7 b8 13 05 12 05 7e ?? ?? ?? 0a 28 ?? ?? ?? 06 26 07 08 16 08 8e b7 6f ?? ?? ?? 0a 09 11 04 6a d6 0d 2b c9}  //weight: 2, accuracy: Low
        $x_2_2 = "\\\\.\\PhysicalDrive0" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_KillMBR_ARA_2147837128_4
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/KillMBR.ARA!MTB"
        threat_id = "2147837128"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "KillMBR"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "8"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "\\Power.pdb" ascii //weight: 2
        $x_2_2 = "Power.Properties.Resources" ascii //weight: 2
        $x_2_3 = "$8dbb2d58-b9de-486b-be83-10064b9d2c85" ascii //weight: 2
        $x_2_4 = "IsWindowsDefenderInstalled" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_KillMBR_ARA_2147837128_5
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/KillMBR.ARA!MTB"
        threat_id = "2147837128"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "KillMBR"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "8"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "oobe\\windeploy.exe" ascii //weight: 2
        $x_2_2 = "trojan is going to reboot your device" ascii //weight: 2
        $x_2_3 = "overwrite the MBR sector" ascii //weight: 2
        $x_2_4 = "LogonUI will be overwritten" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_KillMBR_ARA_2147837128_6
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/KillMBR.ARA!MTB"
        threat_id = "2147837128"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "KillMBR"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "11"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "get_PrimaryScreen" ascii //weight: 1
        $x_1_2 = "clear_screen" ascii //weight: 1
        $x_1_3 = "GDI_payloads" ascii //weight: 1
        $x_1_4 = "reg_destroy" ascii //weight: 1
        $x_1_5 = "mbr_destroy" ascii //weight: 1
        $x_2_6 = "destructive_trojan" ascii //weight: 2
        $x_2_7 = "\\\\.\\PhysicalDrive0" ascii //weight: 2
        $x_2_8 = "/k reg delete HKCR /f" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_KillMBR_GEK_2147841020_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/KillMBR.GEK!MTB"
        threat_id = "2147841020"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "KillMBR"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "12"
        strings_accuracy = "Low"
    strings:
        $x_10_1 = {08 07 06 16 07 8e 69 17 59 6f ?? ?? ?? 0a 8f ?? ?? ?? ?? 28 ?? ?? ?? 0a 28 ?? ?? ?? 0a 0c 00 09 17 58 0d 09 1b fe 04 13 04 11 04 2d d2}  //weight: 10, accuracy: Low
        $x_1_2 = "mbrVirus - Do not run!" ascii //weight: 1
        $x_1_3 = "ToString" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_KillMBR_ARAQ_2147850734_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/KillMBR.ARAQ!MTB"
        threat_id = "2147850734"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "KillMBR"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "I am virus! Fuck You" ascii //weight: 2
        $x_2_2 = "\\\\.\\PhysicalDrive0" ascii //weight: 2
        $x_2_3 = "SpyTheSpy" ascii //weight: 2
        $x_2_4 = "FuckMBR" ascii //weight: 2
        $x_2_5 = "MBR Overwritten, Victim rebooted" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_KillMBR_ARAQ_2147850734_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/KillMBR.ARAQ!MTB"
        threat_id = "2147850734"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "KillMBR"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "15"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "reg_destroy" ascii //weight: 2
        $x_2_2 = "mbr_destroy" ascii //weight: 2
        $x_2_3 = "MbrSize" ascii //weight: 2
        $x_1_4 = "\\\\.\\PhysicalDrive0" ascii //weight: 1
        $x_3_5 = "/k reg delete HKCR /f" ascii //weight: 3
        $x_3_6 = "GDI_payloads2" ascii //weight: 3
        $x_2_7 = "cmd.exe" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_KillMBR_RDA_2147851693_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/KillMBR.RDA!MTB"
        threat_id = "2147851693"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "KillMBR"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {19 16 7e 1e 00 00 0a 28 ?? ?? ?? ?? 0b 07 06 20 00 80 00 00 12 02 7e 1e 00 00 0a 28}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_KillMBR_ARAU_2147851980_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/KillMBR.ARAU!MTB"
        threat_id = "2147851980"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "KillMBR"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "8"
        strings_accuracy = "High"
    strings:
        $x_5_1 = {11 06 11 07 11 07 11 07 11 07 1f 3e 5b 1f 14 5b 5a 59 11 07 61 d2 9c 11 07 17 58 13 07 11 07 11 06 8e 69 32 db}  //weight: 5, accuracy: High
        $x_1_2 = "\\\\.\\PhysicalDrive0" ascii //weight: 1
        $x_1_3 = "DisableTaskMgr" ascii //weight: 1
        $x_1_4 = "DisableRegistryTools" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_KillMBR_ARAU_2147851980_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/KillMBR.ARAU!MTB"
        threat_id = "2147851980"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "KillMBR"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "\\WinDeath\\WinDeath\\obj\\Debug\\WinDeath.pdb" ascii //weight: 2
        $x_6_2 = "Windows is now DEAD" ascii //weight: 6
        $x_3_3 = "ReAgentc.exe" ascii //weight: 3
        $x_3_4 = "/disable" ascii //weight: 3
        $x_2_5 = "\\\\.\\PhysicalDrive0" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (
            ((2 of ($x_3_*) and 2 of ($x_2_*))) or
            ((1 of ($x_6_*) and 2 of ($x_2_*))) or
            ((1 of ($x_6_*) and 1 of ($x_3_*) and 1 of ($x_2_*))) or
            ((1 of ($x_6_*) and 2 of ($x_3_*))) or
            (all of ($x*))
        )
}

rule Trojan_MSIL_KillMBR_ARBE_2147889375_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/KillMBR.ARBE!MTB"
        threat_id = "2147889375"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "KillMBR"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "MBR Rewritten LOL" ascii //weight: 2
        $x_2_2 = "\\\\.\\PhysicalDrive0" ascii //weight: 2
        $x_2_3 = "VMware|VIRTUAL|A M I|Xen" ascii //weight: 2
        $x_2_4 = "select * from Win32_BIOS" ascii //weight: 2
        $x_2_5 = "select * from Win32_ComputerSystem" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_KillMBR_PSXF_2147890471_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/KillMBR.PSXF!MTB"
        threat_id = "2147890471"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "KillMBR"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {8d 11 00 00 01 0a 72 01 00 00 70 20 00 00 00 10 19 7e 0f 00 00 0a 19 16 7e 0f 00 00 0a 28 ?? 00 00 06 0b 07 15}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_KillMBR_ARBF_2147891510_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/KillMBR.ARBF!MTB"
        threat_id = "2147891510"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "KillMBR"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "\\MalwareKaboom\\MalwareKaboom\\obj\\Release\\MalwareKaboom.pdb" ascii //weight: 2
        $x_2_2 = "You must give us 10$ LTC at the following address: Lbomb9d7n7hNnqNAB65HVgrk5pCzG759h5" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (1 of ($x*))
}

rule Trojan_MSIL_KillMBR_ARBH_2147891511_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/KillMBR.ARBH!MTB"
        threat_id = "2147891511"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "KillMBR"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "MBR_overwriter" ascii //weight: 2
        $x_2_2 = "mbr destroyed" ascii //weight: 2
        $x_2_3 = "/k reg delete HKCR /f" ascii //weight: 2
        $x_2_4 = "\\\\.\\PhysicalDrive0" ascii //weight: 2
        $x_2_5 = "?Where am I" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_KillMBR_PTBE_2147895559_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/KillMBR.PTBE!MTB"
        threat_id = "2147895559"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "KillMBR"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {72 52 01 00 70 20 00 02 00 00 13 0a 12 0a 28 ?? 00 00 0a 28 ?? 00 00 0a 28 ?? 00 00 0a 00 72 6c 01 00 70 08 28 ?? 00 00 0a 00 2a}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_KillMBR_ARBC_2147899608_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/KillMBR.ARBC!MTB"
        threat_id = "2147899608"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "KillMBR"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "8"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "your hard disk has been permanently locked, but you can recover it" ascii //weight: 2
        $x_2_2 = "send 300$ to this address" ascii //weight: 2
        $x_2_3 = "/c shutdown /r /f /t 0" ascii //weight: 2
        $x_2_4 = "\\\\.\\PhysicalDrive0" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_KillMBR_ARAS_2147899610_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/KillMBR.ARAS!MTB"
        threat_id = "2147899610"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "KillMBR"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "/C rmdir /s /q C:\\Windows" ascii //weight: 2
        $x_2_2 = "DisableTaskMgr" ascii //weight: 2
        $x_2_3 = "\\Release\\YPD.pdb" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_KillMBR_ARAS_2147899610_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/KillMBR.ARAS!MTB"
        threat_id = "2147899610"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "KillMBR"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "\\TOD Trojan class\\TOD\\TOD\\obj\\Debug\\TOD.pdb" ascii //weight: 2
        $x_2_2 = "reg_destroy" ascii //weight: 2
        $x_2_3 = "mbr_destroy" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_KillMBR_RDD_2147904131_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/KillMBR.RDD!MTB"
        threat_id = "2147904131"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "KillMBR"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {11 05 08 16 08 8e 69 6f ?? ?? ?? ?? 11 07 17 58 13 07}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_KillMBR_RDE_2147904301_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/KillMBR.RDE!MTB"
        threat_id = "2147904301"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "KillMBR"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {0c 09 08 28 17 00 00 0a 0d 00 11 04 17 58 13 04}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_KillMBR_HNA_2147908514_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/KillMBR.HNA!MTB"
        threat_id = "2147908514"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "KillMBR"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {5c 00 50 00 68 00 79 00 73 00 69 00 63 00 61 00 6c 00 44 00 72 00 69 00 76 00 65}  //weight: 1, accuracy: High
        $x_1_2 = {50 72 6f 67 72 61 6d 00 53 79 73 74 65 6d 00 6c 70 4e 75 6d 62 65 72 4f 66 42 79 74 65 73 57 72 69 74 74 65 6e 00 4d 61 69 6e 00 53 79 73 74 65 6d 2e 52 65 66 6c 65 63 74 69 6f 6e 00 64 77 43 72 65 61 74 69 6f 6e 44 69 73 70 6f 73 69 74 69 6f 6e 00 5a 65 72 6f 00 6c 70 42 75 66 66 65 72}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_KillMBR_NK_2147912384_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/KillMBR.NK!MTB"
        threat_id = "2147912384"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "KillMBR"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_3_1 = {06 09 17 58 9a 28 ?? 00 00 0a 13 08 02 11 08 28 06 00 00 06}  //weight: 3, accuracy: Low
        $x_1_2 = "$3f85ff0f-4d0f-4eab-996b-bdfaedfa5363" ascii //weight: 1
        $x_1_3 = "geometry dash auto bot for extreme demons" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_KillMBR_NK_2147912384_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/KillMBR.NK!MTB"
        threat_id = "2147912384"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "KillMBR"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "MBR payload" wide //weight: 2
        $x_2_2 = "keygroup777" ascii //weight: 2
        $x_1_3 = "$f0071615-e287-46ef-a7bb-394c583e28b9" ascii //weight: 1
        $x_1_4 = "MBR_Overwriter.Properties.Resources" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_KillMBR_NK_2147912384_2
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/KillMBR.NK!MTB"
        threat_id = "2147912384"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "KillMBR"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "7"
        strings_accuracy = "High"
    strings:
        $x_3_1 = {20 00 02 00 00 8d 11 00 00 01 0a 72 3d 00 00 70 20 00 00 00 10 19 7e 11 00 00 0a 19 16 7e 11 00 00 0a 28 13 00 00 06 0b}  //weight: 3, accuracy: High
        $x_1_2 = "GDI_payloads2" ascii //weight: 1
        $x_1_3 = "/k reg delete HKCR /f" wide //weight: 1
        $x_1_4 = "th1s is Freemasonry" wide //weight: 1
        $x_1_5 = "gdi_malware" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_KillMBR_NK_2147912384_3
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/KillMBR.NK!MTB"
        threat_id = "2147912384"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "KillMBR"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "8"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "I hope you did not run this on a real machine" ascii //weight: 1
        $x_1_2 = "Now That Im Thinking What Did YOU THIINK TO RUN THIS MALWARE?" ascii //weight: 1
        $x_1_3 = "Always remember! Psychomeme is here!" ascii //weight: 1
        $x_1_4 = "Welcome To Hell" ascii //weight: 1
        $x_1_5 = "If you look at this screen, you're probably gonna have a bad time and dreams" ascii //weight: 1
        $x_1_6 = "Btw, do not try fixing this it will re run again the virus" ascii //weight: 1
        $x_1_7 = "Your System Is Destroyed" ascii //weight: 1
        $x_1_8 = "why you run this i gived you 2 warning's and your pc got destroyed in less than 10 seconds" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_KillMBR_NM_2147917956_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/KillMBR.NM!MTB"
        threat_id = "2147917956"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "KillMBR"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_3_1 = {16 8d 22 00 00 01 0a 72 ?? 00 00 70 20 ?? 00 00 10 19 7e ?? 00 00 0a 19 16 7e ?? 00 00 0a 28 ?? 00 00 06 0b}  //weight: 3, accuracy: Low
        $x_1_2 = "$f45401c8-034e-4a5c-9c06-15dd8093301d" ascii //weight: 1
        $x_1_3 = "/k reg delete hklm /f" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_KillMBR_NM_2147917956_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/KillMBR.NM!MTB"
        threat_id = "2147917956"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "KillMBR"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "9"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "\"encryption\" is very insecur" wide //weight: 2
        $x_2_2 = "Save the key you set, otherwise, when you want to decrypt your files, it will be very difficult or impossible" wide //weight: 2
        $x_2_3 = "a toolkit that looks like a virus but is not" wide //weight: 2
        $x_1_4 = "rx_defender.Properties.Resources" ascii //weight: 1
        $x_1_5 = "CSharp Executer has been loaded!" wide //weight: 1
        $x_1_6 = "$78c5bfcc-6917-41a5-a37a-b4b053a7e9dc" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_KillMBR_NR_2147917958_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/KillMBR.NR!MTB"
        threat_id = "2147917958"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "KillMBR"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_3_1 = {4d 4f 4e 41 00 46 69 6c 65 41 63 63 65 73 73 00 46 69 6c 65 53 68 61 72 65 00 46 41 43 4f 43 4c 42 4c 4e 49 45 49 46 4b 50 42 43 4a 48 43 43 48 45 46 49 41 50 44 4c 42 43 48 45 47 41 41 00 73 65 74}  //weight: 3, accuracy: High
        $x_1_2 = "vGH9s7C7kSkpKhe3jW" ascii //weight: 1
        $x_1_3 = "NNDPFJONBBMAHCCMACGCIFFNCNJBMDNHMCJN" ascii //weight: 1
        $x_1_4 = "d2d520e1-9bda-4a87-bf5a-5e8175a2eb4d" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_KillMBR_ARAX_2147923238_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/KillMBR.ARAX!MTB"
        threat_id = "2147923238"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "KillMBR"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {07 06 07 8e 69 6f ?? ?? ?? 0a 8f ?? ?? ?? 01 28 ?? ?? ?? 0a 0c 09 08 28 ?? ?? ?? 0a 0d 11 04 17 58 13 04 11 04 1f 0e 32 d7}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_KillMBR_ARAX_2147923238_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/KillMBR.ARAX!MTB"
        threat_id = "2147923238"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "KillMBR"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "\\fuk.pdb" ascii //weight: 2
        $x_2_2 = "\\\\.\\PhysicalDrive0" wide //weight: 2
        $x_2_3 = "MBR has been successfully overwritten" wide //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_KillMBR_ARAX_2147923238_2
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/KillMBR.ARAX!MTB"
        threat_id = "2147923238"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "KillMBR"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "8"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "DeepSkyBlueScreenOfHappiness" wide //weight: 2
        $x_2_2 = "reg delete HKCR /f" wide //weight: 2
        $x_2_3 = "deletes physical drives" wide //weight: 2
        $x_2_4 = "\\legjong.pdb" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_KillMBR_PAGH_2147932409_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/KillMBR.PAGH!MTB"
        threat_id = "2147932409"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "KillMBR"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "\\\\.\\PhysicalDrive0" wide //weight: 2
        $x_1_2 = "DisableTaskMgr" wide //weight: 1
        $x_1_3 = "DisableRegistryTools" wide //weight: 1
        $x_2_4 = "Your System has been hacked" wide //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_KillMBR_PARX_2147935008_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/KillMBR.PARX!MTB"
        threat_id = "2147935008"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "KillMBR"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR"
        threshold = "10"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "Master boot record is cooked" wide //weight: 2
        $x_2_2 = "Your PC Have Been Doomed By This Malware" wide //weight: 2
        $x_2_3 = "\\.\\PhysicalDrive0" wide //weight: 2
        $x_2_4 = "DisableTaskMgr" wide //weight: 2
        $x_1_5 = "SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Winlogon" wide //weight: 1
        $x_1_6 = "get_PrimaryScreen" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

