rule Trojan_Win64_Filecoder_TR_2147835525_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Filecoder.TR!MTB"
        threat_id = "2147835525"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Filecoder"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {48 8b 33 b9 18 00 00 00 48 8b 43 18 48 39 43 10 48 0f 42 cd 48 8b 53 20 48 85 d2 74 14 48 8b fa 33 c0 48 8b 0c 19 f3 aa 48 8b ca e8 10 1b ff ff 90 ba 38 00 00 00 48 8b cb e8 82 9a 00 00 48 8b de 48 85 f6 75 ba}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Filecoder_PAP_2147917354_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Filecoder.PAP!MTB"
        threat_id = "2147917354"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Filecoder"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "rename each file after encrypted" wide //weight: 2
        $x_1_2 = "start encrypting hardisks/USBs" wide //weight: 1
        $x_1_3 = "shutdown machine after encryption" wide //weight: 1
        $x_1_4 = "log encrypted files" wide //weight: 1
        $x_1_5 = "put your email address" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Filecoder_PAZ_2147917931_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Filecoder.PAZ!MTB"
        threat_id = "2147917931"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Filecoder"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "Your files have been fucked" ascii //weight: 2
        $x_2_2 = "you will get your files back" ascii //weight: 2
        $x_1_3 = "\\README.txt" ascii //weight: 1
        $x_1_4 = "\\Windows" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Filecoder_BA_2147932266_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Filecoder.BA!MTB"
        threat_id = "2147932266"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Filecoder"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "Greetings from Cs-137 Group" ascii //weight: 1
        $x_1_2 = "Your files have been encrypted with ChaCha20" ascii //weight: 1
        $x_1_3 = "The encryption key was randomly generated and not saved because this is development version" ascii //weight: 1
        $x_1_4 = "This means your files cannot be recovered" ascii //weight: 1
        $x_1_5 = "Go away security research,," ascii //weight: 1
        $x_1_6 = "ussadmin.exe celete shadows /all" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Filecoder_SCR_2147936586_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Filecoder.SCR!MTB"
        threat_id = "2147936586"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Filecoder"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {31 c9 49 89 e9 c4 e1 f9 6e c8 48 8b 84 24 10 04 00 00 4c 8d 05 c3 02 00 00 c4 e3 f1 22 84 24 08 04 00 00 01 48 89 45 10 c5 fa 7f 45 00 48 c7 44 24 28 00 00 00 00 c7 44 24 20 00 00 00 00 ff 15 90 ab 00 00}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

