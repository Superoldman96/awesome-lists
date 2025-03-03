rule Ransom_Win64_Filecoder_BB_2147762732_0
{
    meta:
        author = "defender2yara"
        detection_name = "Ransom:Win64/Filecoder.BB!MTB"
        threat_id = "2147762732"
        type = "Ransom"
        platform = "Win64: Windows 64-bit platform"
        family = "Filecoder"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "Dont_Worry.txt" ascii //weight: 1
        $x_1_2 = "paycrypt@gmail_com" ascii //weight: 1
        $x_1_3 = "-----BEGIN PUBLIC KEY-----" ascii //weight: 1
        $x_1_4 = ".wncry" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Ransom_Win64_Filecoder_DM_2147764840_0
{
    meta:
        author = "defender2yara"
        detection_name = "Ransom:Win64/Filecoder.DM!MTB"
        threat_id = "2147764840"
        type = "Ransom"
        platform = "Win64: Windows 64-bit platform"
        family = "Filecoder"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "All of your important files encrypted" ascii //weight: 1
        $x_1_2 = "All of your network computers files is encrypted" ascii //weight: 1
        $x_1_3 = "HELP_DECRYPT_YOUR_FILES.txt" ascii //weight: 1
        $x_1_4 = "TelegramRansomware" ascii //weight: 1
        $x_1_5 = "This is a private ransomware developed by our team and there is no decryption file for it" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (3 of ($x*))
}

rule Ransom_Win64_Filecoder_DN_2147764911_0
{
    meta:
        author = "defender2yara"
        detection_name = "Ransom:Win64/Filecoder.DN!MTB"
        threat_id = "2147764911"
        type = "Ransom"
        platform = "Win64: Windows 64-bit platform"
        family = "Filecoder"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = ".locked" ascii //weight: 1
        $x_1_2 = "Cryptor_noVSSnoPers.pdb" ascii //weight: 1
        $x_1_3 = "Cryptor.exe" ascii //weight: 1
        $x_1_4 = "teiuq/ lla/ swodahs eteled exe.nimdassv c/ dmc" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Ransom_Win64_Filecoder_SS_2147766009_0
{
    meta:
        author = "defender2yara"
        detection_name = "Ransom:Win64/Filecoder.SS!MTB"
        threat_id = "2147766009"
        type = "Ransom"
        platform = "Win64: Windows 64-bit platform"
        family = "Filecoder"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR"
        threshold = "7"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "\\__READ_ME_TO_RECOVER_YOUR_FILES.txt" ascii //weight: 1
        $x_1_2 = "Hello, your files were encrypted and are currently unusable" ascii //weight: 1
        $x_1_3 = "Bitcoin wallet: 398sW5eMDvyr93CJHKRD3eYE9vK5ELVrHP" ascii //weight: 1
        $x_1_4 = ".encrp" ascii //weight: 1
        $x_1_5 = "C:\\Users\\MARIO\\source\\repos\\ENCRIPTAR\\x64\\Release\\ENCRIPTAR.pdb" ascii //weight: 1
        $x_1_6 = "The only way to recover your files is decrypting them with a key that only we have" ascii //weight: 1
        $x_1_7 = "In order for us to send you the key and the application to decrypt your files, you will have to make a transfer of Bitcoins" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Ransom_Win64_Filecoder_MR_2147773374_0
{
    meta:
        author = "defender2yara"
        detection_name = "Ransom:Win64/Filecoder.MR!MTB"
        threat_id = "2147773374"
        type = "Ransom"
        platform = "Win64: Windows 64-bit platform"
        family = "Filecoder"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "21"
        strings_accuracy = "High"
    strings:
        $x_5_1 = "\\ENCRIPTAR\\x64\\Release\\ENCRIPTAR.pdb" ascii //weight: 5
        $x_5_2 = "Bitcoin wallet: 3QtbAioBSw249J5xsGd1sCqTqhdDX4CD9L" ascii //weight: 5
        $x_5_3 = "cant open your files" ascii //weight: 5
        $x_5_4 = "\\__READ_ME_" ascii //weight: 5
        $x_1_5 = "sammy70p_y61m@buxod.com" ascii //weight: 1
        $x_1_6 = "When we verify the transfer we will send you the tool" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((4 of ($x_5_*) and 1 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Ransom_Win64_Filecoder_SB_2147773478_0
{
    meta:
        author = "defender2yara"
        detection_name = "Ransom:Win64/Filecoder.SB!MTB"
        threat_id = "2147773478"
        type = "Ransom"
        platform = "Win64: Windows 64-bit platform"
        family = "Filecoder"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {59 00 6f 00 75 00 72 00 20 00 46 00 69 00 6c 00 65 00 73 00 [0-32] 45 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00}  //weight: 1, accuracy: Low
        $x_1_2 = {59 6f 75 72 20 46 69 6c 65 73 [0-32] 45 6e 63 72 79 70 74 65 64}  //weight: 1, accuracy: Low
        $x_1_3 = "i.imgur.com" ascii //weight: 1
        $x_1_4 = "tantoporciento.com" ascii //weight: 1
        $x_1_5 = "FOR DECRYPT YOUR FILES" ascii //weight: 1
        $x_1_6 = "URLDownloadToFileW" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (5 of ($x*))
}

rule Ransom_Win64_Filecoder_PDT_2147807965_0
{
    meta:
        author = "defender2yara"
        detection_name = "Ransom:Win64/Filecoder.PDT!MTB"
        threat_id = "2147807965"
        type = "Ransom"
        platform = "Win64: Windows 64-bit platform"
        family = "Filecoder"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {68 00 10 00 00}  //weight: 1, accuracy: High
        $x_1_2 = {48 ff c6 eb}  //weight: 1, accuracy: High
        $x_1_3 = {48 ff c7 eb}  //weight: 1, accuracy: High
        $x_1_4 = {48 ff c2 eb}  //weight: 1, accuracy: High
        $x_1_5 = {48 81 fa 3b 4a 00 00 eb}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Ransom_Win64_Filecoder_SA_2147832327_0
{
    meta:
        author = "defender2yara"
        detection_name = "Ransom:Win64/Filecoder.SA!MTB"
        threat_id = "2147832327"
        type = "Ransom"
        platform = "Win64: Windows 64-bit platform"
        family = "Filecoder"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {48 8b 45 d8 0f b6 00 83 f0 15 89 c2 48 8b 45 d8 88 10 48 83 45 d8 01 83 45 d4 01 8b 45 d4 3b 45 bc 7c}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Ransom_Win64_Filecoder_DLK_2147832751_0
{
    meta:
        author = "defender2yara"
        detection_name = "Ransom:Win64/Filecoder.DLK!MTB"
        threat_id = "2147832751"
        type = "Ransom"
        platform = "Win64: Windows 64-bit platform"
        family = "Filecoder"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {c6 44 24 3b 34 80 44 24 3b 3f eb 18 c6 44 24 3d 57 80 44 24 3d 0d eb 1a c6 44 24 39 75 80 44 24 39 00 eb d5 c6 44 24 3c 2c eb 00 80 44 24 3c 3c}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Ransom_Win64_Filecoder_PSS_2147833352_0
{
    meta:
        author = "defender2yara"
        detection_name = "Ransom:Win64/Filecoder.PSS!MTB"
        threat_id = "2147833352"
        type = "Ransom"
        platform = "Win64: Windows 64-bit platform"
        family = "Filecoder"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {c5 fe 6f 0a c5 fe 6f 52 20 c5 fe 6f 5a 40 c5 fe 6f 62 60 c5 fd 7f 09 c5 fd 7f 51 20 c5 fd 7f 59 40 c5 fd 7f 61 60 c5 fe 6f 8a 80 00 00 00 c5 fe 6f 92 a0 00 00 00 c5 fe 6f 9a c0 00 00 00 c5 fe 6f a2 e0 00 00 00 c5 fd 7f 89 80 00 00 00 c5 fd 7f 91 a0 00 00 00 c5 fd 7f 99 c0 00 00 00 c5 fd 7f a1 e0 00 00 00 48 81 c1 00 01 00 00 48 81 c2 00 01 00 00 49 81 e8 00 01 00 00 49 81 f8 00 01 00 00 0f 83 78 ff ff ff}  //weight: 1, accuracy: High
        $x_1_2 = {c4 a1 7e 6f 4c 0a c0 c4 a1 7e 7f 4c 09 c0 c4 a1 7e 7f 6c 01 e0 c5 fe 7f 00 c5 f8 77 c3}  //weight: 1, accuracy: High
        $x_1_3 = "func_bane %s" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Ransom_Win64_Filecoder_PAZ_2147839016_0
{
    meta:
        author = "defender2yara"
        detection_name = "Ransom:Win64/Filecoder.PAZ!MTB"
        threat_id = "2147839016"
        type = "Ransom"
        platform = "Win64: Windows 64-bit platform"
        family = "Filecoder"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "files have been encrypted" ascii //weight: 1
        $x_1_2 = "pay a ransom" ascii //weight: 1
        $x_1_3 = "payment" ascii //weight: 1
        $x_1_4 = "shadowcopy delete" ascii //weight: 1
        $x_1_5 = "!RESTORE!.txt" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (4 of ($x*))
}

rule Ransom_Win64_Filecoder_PBC_2147843722_0
{
    meta:
        author = "defender2yara"
        detection_name = "Ransom:Win64/Filecoder.PBC!MTB"
        threat_id = "2147843722"
        type = "Ransom"
        platform = "Win64: Windows 64-bit platform"
        family = "Filecoder"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = "YOU_HAVE_BEEN_H4CK3D" ascii //weight: 1
        $x_1_2 = "got hacked" ascii //weight: 1
        $x_1_3 = "get your data back" ascii //weight: 1
        $x_1_4 = {48 8b 45 d8 0f b6 00 83 f0 2c 89 c2 48 8b 45 d8 88 10 48 83 ?? ?? 01 83 45 d4 01}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Ransom_Win64_Filecoder_PACR_2147899722_0
{
    meta:
        author = "defender2yara"
        detection_name = "Ransom:Win64/Filecoder.PACR!MTB"
        threat_id = "2147899722"
        type = "Ransom"
        platform = "Win64: Windows 64-bit platform"
        family = "Filecoder"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {48 8b c2 48 8d 49 01 83 e0 07 48 ff c2 42 0f b6 04 08 30 41 ff 49 83 e8 01 75 e5}  //weight: 1, accuracy: High
        $x_1_2 = "MalFFleR" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Ransom_Win64_Filecoder_PADR_2147904870_0
{
    meta:
        author = "defender2yara"
        detection_name = "Ransom:Win64/Filecoder.PADR!MTB"
        threat_id = "2147904870"
        type = "Ransom"
        platform = "Win64: Windows 64-bit platform"
        family = "Filecoder"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {48 ff c7 48 83 ff 04 75 07 48 c7 c7 00 00 00 00 8a 06 30 d8 88 06 48 ff c6 4c 39 ce 75 dc}  //weight: 1, accuracy: High
        $x_1_2 = {48 ff c6 88 17 48 ff c7 8a 16 01 db 75 0a 8b 1e 48 83 ee fc 11 db 8a 16 72 e6}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Ransom_Win64_Filecoder_GA_2147905324_0
{
    meta:
        author = "defender2yara"
        detection_name = "Ransom:Win64/Filecoder.GA!MTB"
        threat_id = "2147905324"
        type = "Ransom"
        platform = "Win64: Windows 64-bit platform"
        family = "Filecoder"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "C:\\TEMP\\ransombear.exe" ascii //weight: 1
        $x_1_2 = "C:\\TEMP\\LaunchRansombear.dll" ascii //weight: 1
        $x_1_3 = "C:\\WINDOWS\\system32\\cmd.exe /c C:\\ransombear.exe" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Ransom_Win64_Filecoder_MKB_2147909537_0
{
    meta:
        author = "defender2yara"
        detection_name = "Ransom:Win64/Filecoder.MKB!MTB"
        threat_id = "2147909537"
        type = "Ransom"
        platform = "Win64: Windows 64-bit platform"
        family = "Filecoder"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {65 48 8b 04 25 30 00 00 00 48 8b 40 60 48 8b 40 18 4c 89 c6 4d 89 c8 66 48 0f 6e c9 48 89 d1 48 8b 40 20 48 8b 28}  //weight: 1, accuracy: High
        $x_1_2 = {61 6c 6c 20 66 69 6c 65 73 20 63 72 79 70 74 65 64 2c 20 65 78 69 74 90}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (1 of ($x*))
}

rule Ransom_Win64_Filecoder_AWB_2147914308_0
{
    meta:
        author = "defender2yara"
        detection_name = "Ransom:Win64/Filecoder.AWB!MTB"
        threat_id = "2147914308"
        type = "Ransom"
        platform = "Win64: Windows 64-bit platform"
        family = "Filecoder"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_5_1 = "Encrypting files in directory:" ascii //weight: 5
        $x_1_2 = "C:\\HELP-RANSOMWARE.txt" ascii //weight: 1
        $x_1_3 = "powershell -ExecutionPolicy Bypass -WindowStyle Hidden -NoProfile -File" ascii //weight: 1
        $x_1_4 = "VirtualProtect" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_5_*) and 1 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Ransom_Win64_Filecoder_CCJB_2147915676_0
{
    meta:
        author = "defender2yara"
        detection_name = "Ransom:Win64/Filecoder.CCJB!MTB"
        threat_id = "2147915676"
        type = "Ransom"
        platform = "Win64: Windows 64-bit platform"
        family = "Filecoder"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {48 89 c1 48 89 df 48 8b 84 24 88 00 00 00 48 8b 5c 24 40 e8 ?? ?? ?? ?? 90 48 8d 05 19 88 00 00 bb 20 00 00 00 48 89 d9 e8 ?? ?? ?? ?? 48 89 84 24 c0 00 00 00 bb 20 00 00 00 48 89 d9 e8 ?? ?? ?? ?? e8 ?? ?? ?? ?? 48 8b 4c 24 38 48 89 c7 48 89 de 31 c0 48 8b 9c 24 80 00 00 00 e8 ?? ?? ?? ?? 48 89 c1 48 89 df 48 8b b4 24 c0 00 00 00 41 b8 20 00 00 00 4d 89 c1 48 8b 84 24 80 00 00 00 48 8b 5c 24 38 e8 ?? ?? ?? ?? 48 b8 00 f2 05 2a 01 00 00 00 0f 1f 44 00 00 e8 ?? ?? ?? ?? 48 8b 84 24 80 00 00 00 48 8b 5c 24 38 e8 ?? ?? ?? ?? e9}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Ransom_Win64_Filecoder_GV_2147920833_0
{
    meta:
        author = "defender2yara"
        detection_name = "Ransom:Win64/Filecoder.GV!MTB"
        threat_id = "2147920833"
        type = "Ransom"
        platform = "Win64: Windows 64-bit platform"
        family = "Filecoder"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "14"
        strings_accuracy = "High"
    strings:
        $x_5_1 = "README.txt" ascii //weight: 5
        $x_5_2 = ".onion" ascii //weight: 5
        $x_1_3 = "main.erase" ascii //weight: 1
        $x_1_4 = "main.doEncrypt" ascii //weight: 1
        $x_1_5 = "os.(*Process).kill" ascii //weight: 1
        $x_1_6 = "main.Run" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Ransom_Win64_Filecoder_NITA_2147924132_0
{
    meta:
        author = "defender2yara"
        detection_name = "Ransom:Win64/Filecoder.NITA!MTB"
        threat_id = "2147924132"
        type = "Ransom"
        platform = "Win64: Windows 64-bit platform"
        family = "Filecoder"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "self_deleting_script.vbs" ascii //weight: 2
        $x_2_2 = "BlackStriker.pdb" ascii //weight: 2
        $x_1_3 = "Sai do meu codigo" ascii //weight: 1
        $x_1_4 = "Oh no" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Ransom_Win64_Filecoder_SWK_2147929367_0
{
    meta:
        author = "defender2yara"
        detection_name = "Ransom:Win64/Filecoder.SWK!MTB"
        threat_id = "2147929367"
        type = "Ransom"
        platform = "Win64: Windows 64-bit platform"
        family = "Filecoder"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "start_cat_encrypt" ascii //weight: 2
        $x_2_2 = "recover files,view here.txt" ascii //weight: 2
        $x_1_3 = "SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run" ascii //weight: 1
        $x_1_4 = "/c vssadmin.exe delete shadows /all /quiet" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((2 of ($x_2_*) and 1 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Ransom_Win64_Filecoder_SWJ_2147929694_0
{
    meta:
        author = "defender2yara"
        detection_name = "Ransom:Win64/Filecoder.SWJ!MTB"
        threat_id = "2147929694"
        type = "Ransom"
        platform = "Win64: Windows 64-bit platform"
        family = "Filecoder"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "\\x64\\Release\\Big Ransomware.pdb" ascii //weight: 2
        $x_2_2 = "\\ransom_note.txt" ascii //weight: 2
        $x_1_3 = "Your files have been encrypted" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Ransom_Win64_Filecoder_NITD_2147931302_0
{
    meta:
        author = "defender2yara"
        detection_name = "Ransom:Win64/Filecoder.NITD!MTB"
        threat_id = "2147931302"
        type = "Ransom"
        platform = "Win64: Windows 64-bit platform"
        family = "Filecoder"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "7"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "crypt_only_these_directories" ascii //weight: 2
        $x_2_2 = "services_to_stop" ascii //weight: 2
        $x_2_3 = "ces_to_stop" ascii //weight: 2
        $x_1_4 = "temporary_extension" ascii //weight: 1
        $x_1_5 = "onion/chat" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((3 of ($x_2_*) and 1 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Ransom_Win64_Filecoder_NITD_2147931302_1
{
    meta:
        author = "defender2yara"
        detection_name = "Ransom:Win64/Filecoder.NITD!MTB"
        threat_id = "2147931302"
        type = "Ransom"
        platform = "Win64: Windows 64-bit platform"
        family = "Filecoder"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "16"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "FILES HAVE BEEN ENCRYPTED" ascii //weight: 2
        $x_2_2 = "Bitcoin" ascii //weight: 2
        $x_2_3 = "NOT ALLOW ANTI-VIRUS SOFTWARE" ascii //weight: 2
        $x_2_4 = "DECRYPTING ALL FILES IMPOSSIBLE" ascii //weight: 2
        $x_2_5 = "receive your decryption key" ascii //weight: 2
        $x_1_6 = "encryption_date" ascii //weight: 1
        $x_1_7 = "To recover your files" ascii //weight: 1
        $x_1_8 = "VirtualBox" ascii //weight: 1
        $x_1_9 = "vboxtray" ascii //weight: 1
        $x_1_10 = "vboxservice" ascii //weight: 1
        $x_1_11 = "vmtoolsd" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Ransom_Win64_Filecoder_NITC_2147932226_0
{
    meta:
        author = "defender2yara"
        detection_name = "Ransom:Win64/Filecoder.NITC!MTB"
        threat_id = "2147932226"
        type = "Ransom"
        platform = "Win64: Windows 64-bit platform"
        family = "Filecoder"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "9"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "files are encrypted" ascii //weight: 2
        $x_2_2 = "decrypt your files" ascii //weight: 2
        $x_2_3 = "Start Menu\\Programs\\Startup" ascii //weight: 2
        $x_1_4 = "ransomware" ascii //weight: 1
        $x_1_5 = "WARNING" ascii //weight: 1
        $x_1_6 = "DANGER" ascii //weight: 1
        $x_1_7 = "antivirus solutions" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((3 of ($x_2_*) and 3 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Ransom_Win64_Filecoder_2147935029_0
{
    meta:
        author = "defender2yara"
        detection_name = "Ransom:Win64/Filecoder.MTD!MTB"
        threat_id = "2147935029"
        type = "Ransom"
        platform = "Win64: Windows 64-bit platform"
        family = "Filecoder"
        severity = "Critical"
        info = "MTD: an internal category used to refer to some threats"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {48 01 d0 44 0f b6 00 48 8b 45 f8 48 8d 50 01 48 8b 45 10 48 01 d0 0f b6 08 48 8b 55 10 48 8b 45 f8 48 01 d0 44 89 c2 31 ca 88 10 48 83 45 ?? 01 48 8b 45 18 48 83 e8 01 48 39 45 f8 72}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

