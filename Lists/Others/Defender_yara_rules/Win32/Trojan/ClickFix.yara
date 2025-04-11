rule Trojan_Win32_ClickFix_A_2147924937_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.A!MTB"
        threat_id = "2147924937"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "powershell" wide //weight: 1
        $x_1_2 = "-command $" wide //weight: 1
        $x_1_3 = "Invoke-WebRequest -Uri $" wide //weight: 1
        $x_1_4 = ".Content; iex $" wide //weight: 1
        $x_1_5 = "\\1" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_ClickFix_B_2147924938_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.B!MTB"
        threat_id = "2147924938"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "mshta http" wide //weight: 1
        $x_1_2 = ".html #" wide //weight: 1
        $x_1_3 = "''\\1" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_ClickFix_D_2147924939_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.D!MTB"
        threat_id = "2147924939"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "4"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = "mshta" wide //weight: 1
        $x_1_2 = {68 00 74 00 74 00 70 00 [0-2] 3a 00 2f 00 2f 00}  //weight: 1, accuracy: Low
        $x_1_3 = "recaptcha" wide //weight: 1
        $x_1_4 = "verif" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_ClickFix_F_2147924940_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.F!MTB"
        threat_id = "2147924940"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "powershell" wide //weight: 1
        $x_1_2 = "| iex" wide //weight: 1
        $x_1_3 = "recaptcha" wide //weight: 1
        $x_1_4 = "verif" wide //weight: 1
        $x_1_5 = "http" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_ClickFix_F_2147924940_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.F!MTB"
        threat_id = "2147924940"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "mshta http" wide //weight: 1
        $x_1_2 = ".html #" wide //weight: 1
        $x_1_3 = "''\\1" wide //weight: 1
        $x_1_4 = "Verify" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_ClickFix_DA_2147924941_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.DA!MTB"
        threat_id = "2147924941"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "23"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "powershell" wide //weight: 1
        $x_1_2 = "Hidden" wide //weight: 1
        $x_10_3 = "-eC" wide //weight: 10
        $x_10_4 = "aQBlAHgAIAAoAGkAdwByACAAaAB0AHQAcABzADoALwAvA" wide //weight: 10
        $x_10_5 = "aQBlAHgAIAAoAGkAdwByACAAaAB0AHQAcAA6AC8ALwAxA" wide //weight: 10
        $x_1_6 = "\\1" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((2 of ($x_10_*) and 3 of ($x_1_*))) or
            ((3 of ($x_10_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_ClickFix_G_2147931877_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.G!MTB"
        threat_id = "2147931877"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "powershell" wide //weight: 1
        $x_1_2 = "http" wide //weight: 1
        $x_1_3 = ".mp4?" wide //weight: 1
        $x_1_4 = "verif" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_ClickFix_DB_2147932129_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.DB!MTB"
        threat_id = "2147932129"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "mshta" wide //weight: 1
        $x_1_2 = "http" wide //weight: 1
        $x_1_3 = ".html #" wide //weight: 1
        $x_1_4 = "verif" wide //weight: 1
        $x_1_5 = "- ray" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_ClickFix_DC_2147932130_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.DC!MTB"
        threat_id = "2147932130"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "41"
        strings_accuracy = "High"
    strings:
        $x_10_1 = "powershell" wide //weight: 10
        $x_10_2 = "http" wide //weight: 10
        $x_10_3 = "\\*i*" wide //weight: 10
        $x_10_4 = "verif" wide //weight: 10
        $x_1_5 = " ray" wide //weight: 1
        $x_1_6 = " recaptcha" wide //weight: 1
        $x_1_7 = "Press Enter" wide //weight: 1
        $x_1_8 = " re captcha" wide //weight: 1
        $x_1_9 = " rCAPTCHA" wide //weight: 1
        $x_1_10 = " clip FREE" wide //weight: 1
        $x_1_11 = " Over FREE" wide //weight: 1
        $x_1_12 = "robot: r" wide //weight: 1
        $x_1_13 = "robot - r" wide //weight: 1
        $x_1_14 = "robot - Cloudflare" wide //weight: 1
        $x_1_15 = "robot: Cloudflare" wide //weight: 1
        $x_1_16 = "robot: CAPTCHA" wide //weight: 1
        $x_1_17 = "robot - CAPTCHA" wide //weight: 1
        $x_1_18 = "Human - r" wide //weight: 1
        $x_1_19 = "Human: r" wide //weight: 1
        $x_1_20 = "Human: CAPTCHA" wide //weight: 1
        $x_1_21 = "Human - CAPTCHA" wide //weight: 1
        $x_1_22 = "Microsoft Windows: Fix Internet DNS Service reconnect" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((3 of ($x_10_*) and 11 of ($x_1_*))) or
            ((4 of ($x_10_*) and 1 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_ClickFix_DF_2147932251_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.DF!MTB"
        threat_id = "2147932251"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "26"
        strings_accuracy = "High"
    strings:
        $x_10_1 = "mshta" wide //weight: 10
        $x_10_2 = "verif" wide //weight: 10
        $x_5_3 = "http:" wide //weight: 5
        $x_5_4 = "https_" wide //weight: 5
        $x_1_5 = " ray" wide //weight: 1
        $x_1_6 = " recaptcha" wide //weight: 1
        $x_1_7 = "Press Enter" wide //weight: 1
        $x_1_8 = " re captcha" wide //weight: 1
        $x_1_9 = " rCAPTCHA" wide //weight: 1
        $x_1_10 = " clip FREE" wide //weight: 1
        $x_1_11 = " Over FREE" wide //weight: 1
        $x_1_12 = "robot: r" wide //weight: 1
        $x_1_13 = "robot - r" wide //weight: 1
        $x_1_14 = "robot - Cloudflare" wide //weight: 1
        $x_1_15 = "robot: Cloudflare" wide //weight: 1
        $x_1_16 = "robot: CAPTCHA" wide //weight: 1
        $x_1_17 = "robot - CAPTCHA" wide //weight: 1
        $x_1_18 = "Human - r" wide //weight: 1
        $x_1_19 = "Human: r" wide //weight: 1
        $x_1_20 = "Human: CAPTCHA" wide //weight: 1
        $x_1_21 = "Human - CAPTCHA" wide //weight: 1
        $x_1_22 = "Microsoft Windows: Fix Internet DNS Service reconnect" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((2 of ($x_5_*) and 16 of ($x_1_*))) or
            ((1 of ($x_10_*) and 16 of ($x_1_*))) or
            ((1 of ($x_10_*) and 1 of ($x_5_*) and 11 of ($x_1_*))) or
            ((1 of ($x_10_*) and 2 of ($x_5_*) and 6 of ($x_1_*))) or
            ((2 of ($x_10_*) and 6 of ($x_1_*))) or
            ((2 of ($x_10_*) and 1 of ($x_5_*) and 1 of ($x_1_*))) or
            ((2 of ($x_10_*) and 2 of ($x_5_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_ClickFix_J_2147932433_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.J!MTB"
        threat_id = "2147932433"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "41"
        strings_accuracy = "High"
    strings:
        $x_10_1 = "http" wide //weight: 10
        $x_10_2 = "mshta" wide //weight: 10
        $x_10_3 = "captcha" wide //weight: 10
        $x_10_4 = "verif" wide //weight: 10
        $x_1_5 = ".mp4" wide //weight: 1
        $x_1_6 = ".mp3" wide //weight: 1
        $x_1_7 = ".flv" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((4 of ($x_10_*) and 1 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_ClickFix_DD_2147932646_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.DD!MTB"
        threat_id = "2147932646"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "31"
        strings_accuracy = "High"
    strings:
        $x_10_1 = "mshta" wide //weight: 10
        $x_10_2 = "http" wide //weight: 10
        $x_10_3 = "verif" wide //weight: 10
        $x_1_4 = " ray" wide //weight: 1
        $x_1_5 = " recaptcha" wide //weight: 1
        $x_1_6 = " re captcha" wide //weight: 1
        $x_1_7 = "Press Enter" wide //weight: 1
        $x_1_8 = " rCAPTCHA" wide //weight: 1
        $x_1_9 = " clip FREE" wide //weight: 1
        $x_1_10 = " Over FREE" wide //weight: 1
        $x_1_11 = "robot: r" wide //weight: 1
        $x_1_12 = "robot - r" wide //weight: 1
        $x_1_13 = "robot - Cloudflare" wide //weight: 1
        $x_1_14 = "robot: Cloudflare" wide //weight: 1
        $x_1_15 = "robot: CAPTCHA" wide //weight: 1
        $x_1_16 = "robot - CAPTCHA" wide //weight: 1
        $x_1_17 = "Human - r" wide //weight: 1
        $x_1_18 = "Human: r" wide //weight: 1
        $x_1_19 = "Human: CAPTCHA" wide //weight: 1
        $x_1_20 = "Human - CAPTCHA" wide //weight: 1
        $x_1_21 = "Microsoft Windows: Fix Internet DNS Service reconnect" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((2 of ($x_10_*) and 11 of ($x_1_*))) or
            ((3 of ($x_10_*) and 1 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_ClickFix_DE_2147932647_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.DE!MTB"
        threat_id = "2147932647"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "41"
        strings_accuracy = "High"
    strings:
        $x_10_1 = "powershell" wide //weight: 10
        $x_10_2 = "http" wide //weight: 10
        $x_10_3 = "\\1" wide //weight: 10
        $x_10_4 = "verif" wide //weight: 10
        $x_1_5 = " ray" wide //weight: 1
        $x_1_6 = " recaptcha" wide //weight: 1
        $x_1_7 = " re captcha" wide //weight: 1
        $x_1_8 = " rCAPTCHA" wide //weight: 1
        $x_1_9 = " clip FREE" wide //weight: 1
        $x_1_10 = " Over FREE" wide //weight: 1
        $x_1_11 = "Press Enter" wide //weight: 1
        $x_1_12 = "robot: r" wide //weight: 1
        $x_1_13 = "robot - r" wide //weight: 1
        $x_1_14 = "robot - Cloudflare" wide //weight: 1
        $x_1_15 = "robot: Cloudflare" wide //weight: 1
        $x_1_16 = "robot: CAPTCHA" wide //weight: 1
        $x_1_17 = "robot - CAPTCHA" wide //weight: 1
        $x_1_18 = "Human - r" wide //weight: 1
        $x_1_19 = "Human: r" wide //weight: 1
        $x_1_20 = "Human: CAPTCHA" wide //weight: 1
        $x_1_21 = "Human - CAPTCHA" wide //weight: 1
        $x_1_22 = "Microsoft Windows: Fix Internet DNS Service reconnect" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((3 of ($x_10_*) and 11 of ($x_1_*))) or
            ((4 of ($x_10_*) and 1 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_ClickFix_L_2147932742_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.L!MTB"
        threat_id = "2147932742"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "http" wide //weight: 1
        $x_1_2 = "mshta" wide //weight: 1
        $x_1_3 = "captcha" wide //weight: 1
        $x_1_4 = "verif" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_ClickFix_M_2147932743_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.M!MTB"
        threat_id = "2147932743"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "311"
        strings_accuracy = "Low"
    strings:
        $x_100_1 = "powershell" wide //weight: 100
        $x_100_2 = "-command $" wide //weight: 100
        $x_100_3 = "http" wide //weight: 100
        $x_10_4 = {2e 00 63 00 6f 00 6e 00 74 00 65 00 6e 00 74 00 3b 00 [0-32] 24 00}  //weight: 10, accuracy: Low
        $x_1_5 = "invoke-webRequest -uri $" wide //weight: 1
        $x_1_6 = "iwr -uri $" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((3 of ($x_100_*) and 1 of ($x_10_*) and 1 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_ClickFix_DH_2147932752_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.DH!MTB"
        threat_id = "2147932752"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "41"
        strings_accuracy = "Low"
    strings:
        $x_10_1 = "powershell" wide //weight: 10
        $x_10_2 = ".Name).Invoke" wide //weight: 10
        $x_10_3 = "CommandTypes]::Cmdlet" wide //weight: 10
        $x_10_4 = {76 00 61 00 72 00 69 00 61 00 62 00 6c 00 65 00 3a 00 [0-15] 27 00 68 00 74 00 74 00 70 00}  //weight: 10, accuracy: Low
        $x_1_5 = "|Member|Where-Object{$_.Name -like" wide //weight: 1
        $x_1_6 = {67 00 65 00 74 00 2d 00 6d 00 65 00 6d 00 62 00 65 00 72 00 29 00 7c 00 77 00 68 00 65 00 72 00 65 00 7b 00 28 00 [0-15] 29 00 2e 00 76 00 61 00 6c 00 75 00 65 00 2e 00 6e 00 61 00 6d 00 65 00 2d 00 63 00 6c 00 69 00 6b 00 65 00}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (
            ((4 of ($x_10_*) and 1 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_ClickFix_O_2147933213_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.O!MTB"
        threat_id = "2147933213"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "11"
        strings_accuracy = "Low"
    strings:
        $x_10_1 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 [0-16] 2d 00 65 00}  //weight: 10, accuracy: Low
        $x_1_2 = "iwr" wide //weight: 1
        $x_1_3 = "invoke-webrequest" wide //weight: 1
        $x_1_4 = "iex" wide //weight: 1
        $x_1_5 = "invoke-expression" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_10_*) and 1 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_ClickFix_Y_2147933215_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.Y!MTB"
        threat_id = "2147933215"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {6d 00 68 00 73 00 74 00 61 00 [0-32] 68 00 74 00 74 00 70 00 [0-80] 23 00}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_ClickFix_MB_2147933575_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.MB!MTB"
        threat_id = "2147933575"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "14"
        strings_accuracy = "High"
    strings:
        $x_10_1 = "mshta" wide //weight: 10
        $x_1_2 = "http" wide //weight: 1
        $x_1_3 = "- CAPTCHA" wide //weight: 1
        $x_1_4 = "Verif" wide //weight: 1
        $x_1_5 = "robot" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_ClickFix_MA_2147933576_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.MA!MTB"
        threat_id = "2147933576"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "9"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = "powershell" wide //weight: 2
        $x_2_2 = "-NoProfile" wide //weight: 2
        $x_2_3 = "mshta" wide //weight: 2
        $x_1_4 = "https://" wide //weight: 1
        $x_1_5 = {43 00 41 00 50 00 54 00 43 00 48 00 41 00 14 00 72 00}  //weight: 1, accuracy: Low
        $x_1_6 = "Verif" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_ClickFix_MD_2147933729_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.MD!MTB"
        threat_id = "2147933729"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "10"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "powershell" wide //weight: 1
        $x_1_2 = "https" wide //weight: 1
        $x_1_3 = "Invoke-CimMethod" wide //weight: 1
        $x_1_4 = "Win32_Process" wide //weight: 1
        $x_1_5 = "Create" wide //weight: 1
        $x_1_6 = "-Arguments" wide //weight: 1
        $x_2_7 = "ms' + 'hta' + '.exe" wide //weight: 2
        $x_1_8 = "CAPTCHA" wide //weight: 1
        $x_1_9 = "Verif" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_ClickFix_DO_2147933803_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.DO!MTB"
        threat_id = "2147933803"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = "powershell" wide //weight: 1
        $x_1_2 = "http" wide //weight: 1
        $x_1_3 = ".InvokeCommand|Get-Member|?{" wide //weight: 1
        $x_1_4 = "CommandTypes]::Cmdlet" wide //weight: 1
        $x_1_5 = {76 00 61 00 72 00 69 00 61 00 62 00 6c 00 65 00 3a 00 2f 00 [0-15] 28 00 5b 00 6e 00 65 00 74 00 2e 00 77 00 65 00 62 00 63 00 6c 00 69 00 65 00 6e 00 74 00 5d 00 3a 00 3a 00 6e 00 65 00 77 00 28 00 29 00}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_ClickFix_AB_2147933821_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.AB!MTB"
        threat_id = "2147933821"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "71"
        strings_accuracy = "High"
    strings:
        $x_20_1 = "http" wide //weight: 20
        $x_20_2 = "mshta" wide //weight: 20
        $x_20_3 = "\\1" wide //weight: 20
        $x_10_4 = ".shop" wide //weight: 10
        $x_10_5 = ".hair" wide //weight: 10
        $x_10_6 = ".cyou" wide //weight: 10
        $x_10_7 = ".click" wide //weight: 10
        $x_1_8 = ".mp" wide //weight: 1
        $x_1_9 = ".flv" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((2 of ($x_20_*) and 3 of ($x_10_*) and 1 of ($x_1_*))) or
            ((2 of ($x_20_*) and 4 of ($x_10_*))) or
            ((3 of ($x_20_*) and 1 of ($x_10_*) and 1 of ($x_1_*))) or
            ((3 of ($x_20_*) and 2 of ($x_10_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_ClickFix_DQ_2147933822_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.DQ!MTB"
        threat_id = "2147933822"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "31"
        strings_accuracy = "Low"
    strings:
        $x_10_1 = "powershell" wide //weight: 10
        $x_10_2 = "-replace" wide //weight: 10
        $x_10_3 = "verif" wide //weight: 10
        $x_1_4 = " ray" wide //weight: 1
        $x_1_5 = " recaptcha" wide //weight: 1
        $x_1_6 = " re captcha" wide //weight: 1
        $x_1_7 = " rCAPTCHA" wide //weight: 1
        $x_1_8 = "Press Enter" wide //weight: 1
        $x_1_9 = " clip FREE" wide //weight: 1
        $x_1_10 = " Over FREE" wide //weight: 1
        $x_1_11 = "robot: r" wide //weight: 1
        $x_1_12 = "robot - r" wide //weight: 1
        $x_1_13 = "robot - Cloudflare" wide //weight: 1
        $x_1_14 = "robot: Cloudflare" wide //weight: 1
        $x_1_15 = "robot: CAPTCHA" wide //weight: 1
        $x_1_16 = "robot - CAPTCHA" wide //weight: 1
        $x_1_17 = "Human - r" wide //weight: 1
        $x_1_18 = "Human: r" wide //weight: 1
        $x_1_19 = "Human: CAPTCHA" wide //weight: 1
        $x_1_20 = "Human - CAPTCHA" wide //weight: 1
        $x_1_21 = "Microsoft Windows: Fix Internet DNS Service reconnect" wide //weight: 1
        $x_1_22 = "Restart DNS service in the Microsoft Windows system" wide //weight: 1
        $x_1_23 = {33 04 65 00 21 04 10 04 20 04 22 04 21 04 1d 04 10 04}  //weight: 1, accuracy: High
        $x_1_24 = {33 04 21 04 10 04 20 04 22 04 21 04 1d 04 10 04}  //weight: 1, accuracy: High
        $x_1_25 = {33 04 65 00 20 00 21 04 10 04 20 04 22 04 21 04 1d 04 10 04}  //weight: 1, accuracy: High
        $x_1_26 = {43 00 6c 00 bf 03 75 00 64 00 66 00 6c 00 61 00 72 00 65 00}  //weight: 1, accuracy: High
        $x_1_27 = {48 00 75 00 6d 00 30 04 6e 00 [0-30] 21 04 41 00 50 00 54 00 43 00 48 00 41 00}  //weight: 1, accuracy: Low
        $x_1_28 = {21 04 10 04 20 04 22 04 21 04 1d 04 10 04}  //weight: 1, accuracy: High
        $x_1_29 = {99 03 20 00 61 00 6d 00 20 00 6e 00 bf 03 74 00}  //weight: 1, accuracy: High
        $x_1_30 = {52 00 bf 03 62 00 bf 03 74 00}  //weight: 1, accuracy: High
        $x_1_31 = {60 21 51 02 6d 00 78 05 85 05 74 00}  //weight: 1, accuracy: High
        $x_1_32 = {7e 02 85 05 62 00 85 05 74 00}  //weight: 1, accuracy: High
        $x_1_33 = {f9 03 91 03 a1 03 a4 03 43 00 48 00 41 00}  //weight: 1, accuracy: High
        $x_1_34 = {43 00 41 00 a1 03 54 00 43 00 48 00 41 00}  //weight: 1, accuracy: High
        $x_1_35 = {72 00 6f 00 84 01 6f 00 74 00}  //weight: 1, accuracy: High
        $x_1_36 = {72 00 bf 03 62 00 bf 03 c4 03}  //weight: 1, accuracy: High
        $x_1_37 = {43 00 91 03 50 00 a4 03 43 00 97 03 91 03}  //weight: 1, accuracy: High
        $x_1_38 = {21 04 91 03 20 04 03 a4 21 04 1d 04 91 03}  //weight: 1, accuracy: High
        $x_1_39 = {56 00 35 04 72 00 56 04 66 00}  //weight: 1, accuracy: High
        $x_1_40 = {21 04 91 03 20 04 22 04 21 04 1d 04 41 00}  //weight: 1, accuracy: High
        $x_1_41 = {72 00 3e 04 62 00 3e 04 74 00}  //weight: 1, accuracy: High
        $x_1_42 = {43 00 41 00 50 00 54 00 43 00 97 03 41 00}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (
            ((31 of ($x_1_*))) or
            ((1 of ($x_10_*) and 21 of ($x_1_*))) or
            ((2 of ($x_10_*) and 11 of ($x_1_*))) or
            ((3 of ($x_10_*) and 1 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_ClickFix_SA_2147934466_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.SA"
        threat_id = "2147934466"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "20"
        strings_accuracy = "High"
    strings:
        $x_10_1 = "powershell" wide //weight: 10
        $x_10_2 = {20 00 05 27 20 00}  //weight: 10, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_ClickFix_AC_2147934651_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.AC!MTB"
        threat_id = "2147934651"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "8"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "[convert]::tobase64string($" wide //weight: 1
        $x_1_2 = ".invoke($" wide //weight: 1
        $x_1_3 = "net.webclient" wide //weight: 1
        $x_1_4 = "http" wide //weight: 1
        $x_1_5 = ".getstring($" wide //weight: 1
        $x_1_6 = "[system.reflection.assembly]::load($" wide //weight: 1
        $x_1_7 = ".getmethod" wide //weight: 1
        $x_1_8 = ".download" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_ClickFix_AG_2147934652_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.AG!MTB"
        threat_id = "2147934652"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "201"
        strings_accuracy = "Low"
    strings:
        $x_200_1 = "powershell" wide //weight: 200
        $x_1_2 = "captcha" wide //weight: 1
        $x_1_3 = "robot" wide //weight: 1
        $x_1_4 = "human" wide //weight: 1
        $x_1_5 = "Press Enter" wide //weight: 1
        $x_1_6 = " ray" wide //weight: 1
        $x_1_7 = " recaptcha" wide //weight: 1
        $x_1_8 = " re captcha" wide //weight: 1
        $x_1_9 = " rCAPTCHA" wide //weight: 1
        $x_1_10 = " clip FREE" wide //weight: 1
        $x_1_11 = " Over FREE" wide //weight: 1
        $x_1_12 = "robot: r" wide //weight: 1
        $x_1_13 = "robot - r" wide //weight: 1
        $x_1_14 = "Cloudflare" wide //weight: 1
        $x_1_15 = "- Over FREE" wide //weight: 1
        $x_1_16 = "Google Meet" wide //weight: 1
        $x_1_17 = "DNS service" wide //weight: 1
        $x_1_18 = "filtered by CF" wide //weight: 1
        $x_1_19 = {33 04 65 00 21 04 10 04 20 04 22 04 21 04 1d 04 10 04}  //weight: 1, accuracy: High
        $x_1_20 = {33 04 21 04 10 04 20 04 22 04 21 04 1d 04 10 04}  //weight: 1, accuracy: High
        $x_1_21 = {33 04 65 00 20 00 21 04 10 04 20 04 22 04 21 04 1d 04 10 04}  //weight: 1, accuracy: High
        $x_1_22 = {43 00 6c 00 bf 03 75 00 64 00 66 00 6c 00 61 00 72 00 65 00}  //weight: 1, accuracy: High
        $x_1_23 = {48 00 75 00 6d 00 30 04 6e 00 [0-30] 21 04 41 00 50 00 54 00 43 00 48 00 41 00}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_200_*) and 1 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_ClickFix_AH_2147934653_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.AH!MTB"
        threat_id = "2147934653"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "410"
        strings_accuracy = "High"
    strings:
        $x_100_1 = "powershell" wide //weight: 100
        $x_100_2 = "curl" wide //weight: 100
        $x_100_3 = "-join" wide //weight: 100
        $x_100_4 = "[char]($" wide //weight: 100
        $x_10_5 = "invoke-expression" wide //weight: 10
        $x_10_6 = "iex" wide //weight: 10
    condition:
        (filesize < 20MB) and
        (
            ((4 of ($x_100_*) and 1 of ($x_10_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_ClickFix_ME_2147935170_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.ME!MTB"
        threat_id = "2147935170"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "PowerShell.exe -w 1 & \\W" wide //weight: 1
        $x_2_2 = "m*ht*e https://" wide //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_ClickFix_MF_2147935171_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.MF!MTB"
        threat_id = "2147935171"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "7"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = "/c start /min" wide //weight: 1
        $x_1_2 = "powershell" wide //weight: 1
        $x_1_3 = {24 00 70 00 61 00 74 00 68 00 3d 00 27 00 63 00 3a 00 [0-69] 2e 00 6d 00 73 00 69 00}  //weight: 1, accuracy: Low
        $x_1_4 = "-NoProfile" wide //weight: 1
        $x_1_5 = "-WindowStyle" wide //weight: 1
        $x_1_6 = "Hidden" wide //weight: 1
        $x_1_7 = "-Command" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_ClickFix_AP_2147935190_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.AP!MTB"
        threat_id = "2147935190"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "42"
        strings_accuracy = "High"
    strings:
        $x_10_1 = "http" wide //weight: 10
        $x_10_2 = "powershell" wide //weight: 10
        $x_10_3 = ".content" wide //weight: 10
        $x_10_4 = "captcha" wide //weight: 10
        $x_10_5 = "Press Enter" wide //weight: 10
        $x_1_6 = "iex" wide //weight: 1
        $x_1_7 = "invoke-expression" wide //weight: 1
        $x_1_8 = "invoke-webrequest" wide //weight: 1
        $x_1_9 = "iwr" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((4 of ($x_10_*) and 2 of ($x_1_*))) or
            ((5 of ($x_10_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_ClickFix_DV_2147935276_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.DV!MTB"
        threat_id = "2147935276"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "111"
        strings_accuracy = "Low"
    strings:
        $x_10_1 = "powershell" wide //weight: 10
        $x_1_2 = "http" wide //weight: 1
        $x_100_3 = {33 04 65 00 21 04 10 04 20 04 22 04 21 04 1d 04 10 04}  //weight: 100, accuracy: High
        $x_100_4 = {33 04 21 04 10 04 20 04 22 04 21 04 1d 04 10 04}  //weight: 100, accuracy: High
        $x_100_5 = {33 04 65 00 20 00 21 04 10 04 20 04 22 04 21 04 1d 04 10 04}  //weight: 100, accuracy: High
        $x_100_6 = {43 00 6c 00 bf 03 75 00 64 00 66 00 6c 00 61 00 72 00 65 00}  //weight: 100, accuracy: High
        $x_100_7 = {48 00 75 00 6d 00 30 04 6e 00 [0-30] 21 04 41 00 50 00 54 00 43 00 48 00 41 00}  //weight: 100, accuracy: Low
        $x_100_8 = {21 04 10 04 20 04 22 04 21 04 1d 04 10 04}  //weight: 100, accuracy: High
        $x_100_9 = {99 03 20 00 61 00 6d 00 20 00 6e 00 bf 03 74 00}  //weight: 100, accuracy: High
        $x_100_10 = {52 00 bf 03 62 00 bf 03 74 00}  //weight: 100, accuracy: High
        $x_100_11 = {60 21 51 02 6d 00 78 05 85 05 74 00}  //weight: 100, accuracy: High
        $x_100_12 = {7e 02 85 05 62 00 85 05 74 00}  //weight: 100, accuracy: High
        $x_100_13 = {f9 03 91 03 a1 03 a4 03 43 00 48 00 41 00}  //weight: 100, accuracy: High
        $x_100_14 = {72 00 0b 20 6f 00 62 00 6f 00 0d 20 74 00}  //weight: 100, accuracy: High
        $x_100_15 = {56 00 65 00 72 00 56 04 66 00 56 04 63 00 30 04 74 00 56 04 bf 03 78 05}  //weight: 100, accuracy: High
        $x_100_16 = {43 00 41 00 a1 03 54 00 43 00 48 00 41 00}  //weight: 100, accuracy: High
        $x_100_17 = {72 00 6f 00 84 01 6f 00 74 00}  //weight: 100, accuracy: High
        $x_100_18 = {72 00 bf 03 62 00 bf 03 c4 03}  //weight: 100, accuracy: High
        $x_100_19 = {43 00 91 03 50 00 a4 03 43 00 97 03 91 03}  //weight: 100, accuracy: High
        $x_100_20 = {21 04 91 03 20 04 03 a4 21 04 1d 04 91 03}  //weight: 100, accuracy: High
        $x_100_21 = {56 00 35 04 72 00 56 04 66 00}  //weight: 100, accuracy: High
        $x_100_22 = {21 04 91 03 20 04 22 04 21 04 1d 04 41 00}  //weight: 100, accuracy: High
        $x_100_23 = {72 00 3e 04 62 00 3e 04 74 00}  //weight: 100, accuracy: High
        $x_100_24 = {43 00 41 00 50 00 54 00 43 00 97 03 41 00}  //weight: 100, accuracy: High
        $x_100_25 = {9d 03 bf 03 6e 00 2d 00 62 00 bf 03 74 00}  //weight: 100, accuracy: High
        $x_100_26 = {68 00 c5 03 6d 00 30 04 6e 00}  //weight: 100, accuracy: High
        $x_100_27 = {35 04 72 00 56 04 66 00 56 04 35 04 64 00}  //weight: 100, accuracy: High
        $x_100_28 = {21 04 6c 00 3e 04 75 00 64 00}  //weight: 100, accuracy: High
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_100_*) and 1 of ($x_10_*) and 1 of ($x_1_*))) or
            ((2 of ($x_100_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_ClickFix_AO_2147935373_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.AO!MTB"
        threat_id = "2147935373"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "421"
        strings_accuracy = "Low"
    strings:
        $x_200_1 = "mshta" wide //weight: 200
        $x_200_2 = "http" wide //weight: 200
        $x_20_3 = ".mp" wide //weight: 20
        $x_20_4 = ".flv" wide //weight: 20
        $x_20_5 = ".mdb" wide //weight: 20
        $x_20_6 = ".eps" wide //weight: 20
        $x_20_7 = ".dat" wide //weight: 20
        $x_20_8 = ".cda" wide //weight: 20
        $x_20_9 = ".m4a" wide //weight: 20
        $x_20_10 = ".xll" wide //weight: 20
        $x_1_11 = "captcha" wide //weight: 1
        $x_1_12 = "robot" wide //weight: 1
        $x_1_13 = "human" wide //weight: 1
        $x_1_14 = " ray" wide //weight: 1
        $x_1_15 = " recaptcha" wide //weight: 1
        $x_1_16 = " re captcha" wide //weight: 1
        $x_1_17 = " rCAPTCHA" wide //weight: 1
        $x_1_18 = " clip FREE" wide //weight: 1
        $x_1_19 = " Over FREE" wide //weight: 1
        $x_1_20 = "Press Enter" wide //weight: 1
        $x_1_21 = "robot: r" wide //weight: 1
        $x_1_22 = "robot - r" wide //weight: 1
        $x_1_23 = "Cloudflare" wide //weight: 1
        $x_1_24 = "- Over FREE" wide //weight: 1
        $x_1_25 = "Google Meet" wide //weight: 1
        $x_1_26 = "DNS service" wide //weight: 1
        $x_1_27 = {33 04 65 00 21 04 10 04 20 04 22 04 21 04 1d 04 10 04}  //weight: 1, accuracy: High
        $x_1_28 = {33 04 21 04 10 04 20 04 22 04 21 04 1d 04 10 04}  //weight: 1, accuracy: High
        $x_1_29 = {33 04 65 00 20 00 21 04 10 04 20 04 22 04 21 04 1d 04 10 04}  //weight: 1, accuracy: High
        $x_1_30 = {43 00 6c 00 bf 03 75 00 64 00 66 00 6c 00 61 00 72 00 65 00}  //weight: 1, accuracy: High
        $x_1_31 = {48 00 75 00 6d 00 30 04 6e 00 [0-30] 21 04 41 00 50 00 54 00 43 00 48 00 41 00}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (
            ((2 of ($x_200_*) and 21 of ($x_1_*))) or
            ((2 of ($x_200_*) and 1 of ($x_20_*) and 1 of ($x_1_*))) or
            ((2 of ($x_200_*) and 2 of ($x_20_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_ClickFix_DW_2147935377_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.DW!MTB"
        threat_id = "2147935377"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "66"
        strings_accuracy = "Low"
    strings:
        $x_10_1 = "mshta" wide //weight: 10
        $x_1_2 = "http" wide //weight: 1
        $x_5_3 = "verif" wide //weight: 5
        $x_5_4 = "\\1" wide //weight: 5
        $x_50_5 = {33 04 65 00 21 04 10 04 20 04 22 04 21 04 1d 04 10 04}  //weight: 50, accuracy: High
        $x_50_6 = {33 04 21 04 10 04 20 04 22 04 21 04 1d 04 10 04}  //weight: 50, accuracy: High
        $x_50_7 = {33 04 65 00 20 00 21 04 10 04 20 04 22 04 21 04 1d 04 10 04}  //weight: 50, accuracy: High
        $x_50_8 = {43 00 6c 00 bf 03 75 00 64 00 66 00 6c 00 61 00 72 00 65 00}  //weight: 50, accuracy: High
        $x_50_9 = {48 00 75 00 6d 00 30 04 6e 00 [0-30] 21 04 41 00 50 00 54 00 43 00 48 00 41 00}  //weight: 50, accuracy: Low
        $x_50_10 = {21 04 10 04 20 04 22 04 21 04 1d 04 10 04}  //weight: 50, accuracy: High
        $x_50_11 = {99 03 20 00 61 00 6d 00 20 00 6e 00 bf 03 74 00}  //weight: 50, accuracy: High
        $x_50_12 = {52 00 bf 03 62 00 bf 03 74 00}  //weight: 50, accuracy: High
        $x_50_13 = {60 21 51 02 6d 00 78 05 85 05 74 00}  //weight: 50, accuracy: High
        $x_50_14 = {7e 02 85 05 62 00 85 05 74 00}  //weight: 50, accuracy: High
        $x_50_15 = {f9 03 91 03 a1 03 a4 03 43 00 48 00 41 00}  //weight: 50, accuracy: High
        $x_50_16 = {72 00 0b 20 6f 00 62 00 6f 00 0d 20 74 00}  //weight: 50, accuracy: High
        $x_50_17 = {43 00 41 00 a1 03 54 00 43 00 48 00 41 00}  //weight: 50, accuracy: High
        $x_50_18 = {72 00 6f 00 84 01 6f 00 74 00}  //weight: 50, accuracy: High
        $x_50_19 = {72 00 bf 03 62 00 bf 03 c4 03}  //weight: 50, accuracy: High
        $x_50_20 = {43 00 91 03 50 00 a4 03 43 00 97 03 91 03}  //weight: 50, accuracy: High
        $x_50_21 = {21 04 91 03 20 04 03 a4 21 04 1d 04 91 03}  //weight: 50, accuracy: High
        $x_50_22 = {21 04 91 03 20 04 22 04 21 04 1d 04 41 00}  //weight: 50, accuracy: High
        $x_50_23 = {72 00 3e 04 62 00 3e 04 74 00}  //weight: 50, accuracy: High
        $x_50_24 = {43 00 41 00 50 00 54 00 43 00 97 03 41 00}  //weight: 50, accuracy: High
        $x_50_25 = {68 00 c5 03 6d 00 30 04 6e 00}  //weight: 50, accuracy: High
        $x_50_26 = {21 04 6c 00 3e 04 75 00 64 00}  //weight: 50, accuracy: High
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_50_*) and 1 of ($x_10_*) and 1 of ($x_5_*) and 1 of ($x_1_*))) or
            ((1 of ($x_50_*) and 1 of ($x_10_*) and 2 of ($x_5_*))) or
            ((2 of ($x_50_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_ClickFix_AN_2147935503_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.AN!MTB"
        threat_id = "2147935503"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "41"
        strings_accuracy = "High"
    strings:
        $x_10_1 = "new-object" wide //weight: 10
        $x_10_2 = "powershell" wide //weight: 10
        $x_10_3 = "wscript.shell" wide //weight: 10
        $x_10_4 = "http" wide //weight: 10
        $x_1_5 = ".sendkeys" wide //weight: 1
        $x_1_6 = " iex" wide //weight: 1
        $x_1_7 = "invoke-expression" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((4 of ($x_10_*) and 1 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_ClickFix_ZA_2147936037_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.ZA!MTB"
        threat_id = "2147936037"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "7"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "powershell" wide //weight: 1
        $x_1_2 = "-split($" wide //weight: 1
        $x_1_3 = "-replace" wide //weight: 1
        $x_1_4 = "0x$" wide //weight: 1
        $x_1_5 = "byte" wide //weight: 1
        $x_1_6 = "join" wide //weight: 1
        $x_1_7 = "substring" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_ClickFix_ZB_2147936038_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.ZB!MTB"
        threat_id = "2147936038"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "powershell" wide //weight: 1
        $x_1_2 = "curl" wide //weight: 1
        $x_1_3 = "start-process" wide //weight: 1
        $x_1_4 = "cscript" wide //weight: 1
        $x_1_5 = "verif" wide //weight: 1
        $x_1_6 = "Join-Path $" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_ClickFix_DS_2147936340_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.DS!MTB"
        threat_id = "2147936340"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "37"
        strings_accuracy = "High"
    strings:
        $x_5_1 = "powershell" wide //weight: 5
        $x_20_2 = "+'://'+" wide //weight: 20
        $x_5_3 = "[System.Text.Encoding]::UTF8.GetString($" wide //weight: 5
        $x_5_4 = ".Content)" wide //weight: 5
        $x_1_5 = "irm" wide //weight: 1
        $x_1_6 = "invoke-restmethod" wide //weight: 1
        $x_1_7 = "iwr" wide //weight: 1
        $x_1_8 = "invoke-webrequest" wide //weight: 1
        $x_1_9 = "iex" wide //weight: 1
        $x_1_10 = "invoke-expresssion" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_20_*) and 3 of ($x_5_*) and 2 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_ClickFix_DU_2147936341_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.DU!MTB"
        threat_id = "2147936341"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "57"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "powershell" wide //weight: 1
        $x_1_2 = "-split($" wide //weight: 1
        $x_1_3 = "-replace" wide //weight: 1
        $x_50_4 = "0x$&" wide //weight: 50
        $x_1_5 = "-join" wide //weight: 1
        $x_1_6 = "byte[]]::new(" wide //weight: 1
        $x_1_7 = ".TransformFinalBlock($" wide //weight: 1
        $x_1_8 = ".Substring(" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_ClickFix_DX_2147936522_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.DX!MTB"
        threat_id = "2147936522"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "132"
        strings_accuracy = "Low"
    strings:
        $x_10_1 = "powershell" wide //weight: 10
        $x_1_2 = "irm" wide //weight: 1
        $x_1_3 = "Invoke-RestMethod" wide //weight: 1
        $x_1_4 = "iwr" wide //weight: 1
        $x_1_5 = "Invoke-WebRequest" wide //weight: 1
        $x_1_6 = "iex" wide //weight: 1
        $x_1_7 = "Invoke-Expression" wide //weight: 1
        $x_20_8 = "verif" wide //weight: 20
        $x_100_9 = {33 04 65 00 21 04 10 04 20 04 22 04 21 04 1d 04 10 04}  //weight: 100, accuracy: High
        $x_100_10 = {33 04 21 04 10 04 20 04 22 04 21 04 1d 04 10 04}  //weight: 100, accuracy: High
        $x_100_11 = {33 04 65 00 20 00 21 04 10 04 20 04 22 04 21 04 1d 04 10 04}  //weight: 100, accuracy: High
        $x_100_12 = {43 00 6c 00 bf 03 75 00 64 00 66 00 6c 00 61 00 72 00 65 00}  //weight: 100, accuracy: High
        $x_100_13 = {48 00 75 00 6d 00 30 04 6e 00 [0-30] 21 04 41 00 50 00 54 00 43 00 48 00 41 00}  //weight: 100, accuracy: Low
        $x_100_14 = "CIoudfIare Unique One-time" wide //weight: 100
        $x_100_15 = {21 04 10 04 20 04 22 04 21 04 1d 04 10 04}  //weight: 100, accuracy: High
        $x_100_16 = {99 03 20 00 61 00 6d 00 20 00 6e 00 bf 03 74 00}  //weight: 100, accuracy: High
        $x_100_17 = {52 00 bf 03 62 00 bf 03 74 00}  //weight: 100, accuracy: High
        $x_100_18 = {60 21 51 02 6d 00 78 05 85 05 74 00}  //weight: 100, accuracy: High
        $x_100_19 = {7e 02 85 05 62 00 85 05 74 00}  //weight: 100, accuracy: High
        $x_100_20 = {f9 03 91 03 a1 03 a4 03 43 00 48 00 41 00}  //weight: 100, accuracy: High
        $x_100_21 = {72 00 0b 20 6f 00 62 00 6f 00 0d 20 74 00}  //weight: 100, accuracy: High
        $x_100_22 = {43 00 41 00 a1 03 54 00 43 00 48 00 41 00}  //weight: 100, accuracy: High
        $x_100_23 = {72 00 6f 00 84 01 6f 00 74 00}  //weight: 100, accuracy: High
        $x_100_24 = {72 00 bf 03 62 00 bf 03 c4 03}  //weight: 100, accuracy: High
        $x_100_25 = {43 00 91 03 50 00 a4 03 43 00 97 03 91 03}  //weight: 100, accuracy: High
        $x_100_26 = {21 04 91 03 20 04 03 a4 21 04 1d 04 91 03}  //weight: 100, accuracy: High
        $x_100_27 = {21 04 91 03 20 04 22 04 21 04 1d 04 41 00}  //weight: 100, accuracy: High
        $x_100_28 = {72 00 3e 04 62 00 3e 04 74 00}  //weight: 100, accuracy: High
        $x_100_29 = {43 00 41 00 50 00 54 00 43 00 97 03 41 00}  //weight: 100, accuracy: High
        $x_100_30 = {9d 03 bf 03 6e 00 2d 00 62 00 bf 03 74 00}  //weight: 100, accuracy: High
        $x_100_31 = {68 00 c5 03 6d 00 30 04 6e 00}  //weight: 100, accuracy: High
        $x_100_32 = {35 04 72 00 56 04 66 00 56 04 35 04 64 00}  //weight: 100, accuracy: High
        $x_100_33 = {21 04 6c 00 3e 04 75 00 64 00}  //weight: 100, accuracy: High
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_100_*) and 1 of ($x_20_*) and 1 of ($x_10_*) and 2 of ($x_1_*))) or
            ((2 of ($x_100_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_ClickFix_DZ_2147936523_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.DZ!MTB"
        threat_id = "2147936523"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "106"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = "mshta" wide //weight: 5
        $x_1_2 = "http" wide //weight: 1
        $x_100_3 = {99 03 20 00 61 00 6d 00 20 00 6e 00 bf 03 74 00}  //weight: 100, accuracy: High
        $x_100_4 = {33 04 65 00 21 04 10 04 20 04 22 04 21 04 1d 04 10 04}  //weight: 100, accuracy: High
        $x_100_5 = {33 04 21 04 10 04 20 04 22 04 21 04 1d 04 10 04}  //weight: 100, accuracy: High
        $x_100_6 = {33 04 65 00 20 00 21 04 10 04 20 04 22 04 21 04 1d 04 10 04}  //weight: 100, accuracy: High
        $x_100_7 = {43 00 6c 00 bf 03 75 00 64 00 66 00 6c 00 61 00 72 00 65 00}  //weight: 100, accuracy: High
        $x_100_8 = {48 00 75 00 6d 00 30 04 6e 00 [0-30] 21 04 41 00 50 00 54 00 43 00 48 00 41 00}  //weight: 100, accuracy: Low
        $x_100_9 = "CIoudfIare Unique One-time" wide //weight: 100
        $x_100_10 = {21 04 10 04 20 04 22 04 21 04 1d 04 10 04}  //weight: 100, accuracy: High
        $x_100_11 = {52 00 bf 03 62 00 bf 03 74 00}  //weight: 100, accuracy: High
        $x_100_12 = {60 21 51 02 6d 00 78 05 85 05 74 00}  //weight: 100, accuracy: High
        $x_100_13 = {7e 02 85 05 62 00 85 05 74 00}  //weight: 100, accuracy: High
        $x_100_14 = {f9 03 91 03 a1 03 a4 03 43 00 48 00 41 00}  //weight: 100, accuracy: High
        $x_100_15 = {56 00 65 00 72 00 56 04 66 00 56 04 63 00 30 04 74 00 56 04 bf 03 78 05}  //weight: 100, accuracy: High
        $x_100_16 = {72 00 0b 20 6f 00 62 00 6f 00 0d 20 74 00}  //weight: 100, accuracy: High
        $x_100_17 = {43 00 41 00 a1 03 54 00 43 00 48 00 41 00}  //weight: 100, accuracy: High
        $x_100_18 = {72 00 6f 00 84 01 6f 00 74 00}  //weight: 100, accuracy: High
        $x_100_19 = {72 00 bf 03 62 00 bf 03 c4 03}  //weight: 100, accuracy: High
        $x_100_20 = {43 00 91 03 50 00 a4 03 43 00 97 03 91 03}  //weight: 100, accuracy: High
        $x_100_21 = {21 04 91 03 20 04 03 a4 21 04 1d 04 91 03}  //weight: 100, accuracy: High
        $x_100_22 = {56 00 35 04 72 00 56 04 66 00}  //weight: 100, accuracy: High
        $x_100_23 = {21 04 91 03 20 04 22 04 21 04 1d 04 41 00}  //weight: 100, accuracy: High
        $x_100_24 = {72 00 3e 04 62 00 3e 04 74 00}  //weight: 100, accuracy: High
        $x_100_25 = {43 00 41 00 50 00 54 00 43 00 97 03 41 00}  //weight: 100, accuracy: High
        $x_100_26 = {9d 03 bf 03 6e 00 2d 00 62 00 bf 03 74 00}  //weight: 100, accuracy: High
        $x_100_27 = {68 00 c5 03 6d 00 30 04 6e 00}  //weight: 100, accuracy: High
        $x_100_28 = {35 04 72 00 56 04 66 00 56 04 35 04 64 00}  //weight: 100, accuracy: High
        $x_100_29 = {21 04 6c 00 3e 04 75 00 64 00}  //weight: 100, accuracy: High
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_100_*) and 1 of ($x_5_*) and 1 of ($x_1_*))) or
            ((2 of ($x_100_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_ClickFix_AJ_2147936895_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.AJ!MTB"
        threat_id = "2147936895"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "51"
        strings_accuracy = "High"
    strings:
        $x_10_1 = "powershell" wide //weight: 10
        $x_10_2 = "net.sockets.tcpclient(" wide //weight: 10
        $x_10_3 = "net.webclient" wide //weight: 10
        $x_10_4 = ";while($" wide //weight: 10
        $x_10_5 = ").connected" wide //weight: 10
        $x_1_6 = ".downloadfile(" wide //weight: 1
        $x_1_7 = ".ps1; exit" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((5 of ($x_10_*) and 1 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_ClickFix_AQ_2147936896_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.AQ!MTB"
        threat_id = "2147936896"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "2051"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = ".mp" wide //weight: 1
        $x_1_2 = ".flv" wide //weight: 1
        $x_1_3 = ".mdb" wide //weight: 1
        $x_1_4 = ".eps" wide //weight: 1
        $x_1_5 = ".dat" wide //weight: 1
        $x_1_6 = ".cda" wide //weight: 1
        $x_1_7 = ".m4a" wide //weight: 1
        $x_1_8 = ".xll" wide //weight: 1
        $x_2000_9 = "powershell" wide //weight: 2000
        $x_50_10 = "captcha" wide //weight: 50
        $x_50_11 = "Press Enter" wide //weight: 50
        $x_50_12 = "robot" wide //weight: 50
        $x_50_13 = "human" wide //weight: 50
        $x_50_14 = " ray" wide //weight: 50
        $x_50_15 = " recaptcha" wide //weight: 50
        $x_50_16 = " re captcha" wide //weight: 50
        $x_50_17 = " rCAPTCHA" wide //weight: 50
        $x_50_18 = " clip FREE" wide //weight: 50
        $x_50_19 = " Over FREE" wide //weight: 50
        $x_50_20 = "robot: r" wide //weight: 50
        $x_50_21 = "robot - r" wide //weight: 50
        $x_50_22 = "Cloudflare" wide //weight: 50
        $x_50_23 = "- Over FREE" wide //weight: 50
        $x_50_24 = "Google Meet" wide //weight: 50
        $x_50_25 = "DNS service" wide //weight: 50
        $x_50_26 = {33 04 65 00 21 04 10 04 20 04 22 04 21 04 1d 04 10 04}  //weight: 50, accuracy: High
        $x_50_27 = {33 04 21 04 10 04 20 04 22 04 21 04 1d 04 10 04}  //weight: 50, accuracy: High
        $x_50_28 = {33 04 65 00 20 00 21 04 10 04 20 04 22 04 21 04 1d 04 10 04}  //weight: 50, accuracy: High
        $x_50_29 = {43 00 6c 00 bf 03 75 00 64 00 66 00 6c 00 61 00 72 00 65 00}  //weight: 50, accuracy: High
        $x_50_30 = {48 00 75 00 6d 00 30 04 6e 00 [0-30] 21 04 41 00 50 00 54 00 43 00 48 00 41 00}  //weight: 50, accuracy: Low
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_2000_*) and 1 of ($x_50_*) and 1 of ($x_1_*))) or
            ((1 of ($x_2000_*) and 2 of ($x_50_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_ClickFix_AF_2147937004_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.AF!MTB"
        threat_id = "2147937004"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "212"
        strings_accuracy = "High"
    strings:
        $x_100_1 = "http" wide //weight: 100
        $x_100_2 = "powershell" wide //weight: 100
        $x_10_3 = ":FromBase64String($" wide //weight: 10
        $x_10_4 = ".content" wide //weight: 10
        $x_10_5 = "start-process" wide //weight: 10
        $x_10_6 = "curl" wide //weight: 10
        $x_10_7 = "-Encoded" wide //weight: 10
        $x_1_8 = "iex" wide //weight: 1
        $x_1_9 = "invoke-expression" wide //weight: 1
        $x_1_10 = "invoke-webrequest" wide //weight: 1
        $x_1_11 = "iwr" wide //weight: 1
        $x_1_12 = "irm" wide //weight: 1
        $x_1_13 = "invoke-restmethod" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((2 of ($x_100_*) and 1 of ($x_10_*) and 2 of ($x_1_*))) or
            ((2 of ($x_100_*) and 2 of ($x_10_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_ClickFix_AI_2147937005_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.AI!MTB"
        threat_id = "2147937005"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "41"
        strings_accuracy = "High"
    strings:
        $x_10_1 = "powershell" wide //weight: 10
        $x_10_2 = "net.sockets.tcpclient(" wide //weight: 10
        $x_10_3 = ".getstream" wide //weight: 10
        $x_10_4 = "[byte[]]$" wide //weight: 10
        $x_1_5 = ".streamwriter($" wide //weight: 1
        $x_1_6 = ".read($" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((4 of ($x_10_*) and 1 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_ClickFix_AK_2147937006_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.AK!MTB"
        threat_id = "2147937006"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "wscript.shell" wide //weight: 1
        $x_1_2 = "powershell" wide //weight: 1
        $x_1_3 = ".sendKeys(" wide //weight: 1
        $x_1_4 = "foreach" wide //weight: 1
        $x_1_5 = "http" wide //weight: 1
        $x_1_6 = "new-object" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_ClickFix_AL_2147937007_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.AL!MTB"
        threat_id = "2147937007"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "51"
        strings_accuracy = "High"
    strings:
        $x_10_1 = "wscript.shell" wide //weight: 10
        $x_10_2 = "http" wide //weight: 10
        $x_10_3 = "mshta" wide //weight: 10
        $x_10_4 = "vbscript:Execute(" wide //weight: 10
        $x_10_5 = "start-process" wide //weight: 10
        $x_1_6 = " irm" wide //weight: 1
        $x_1_7 = "invoke-webrequest" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((5 of ($x_10_*) and 1 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_ClickFix_ZD_2147937008_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.ZD!MTB"
        threat_id = "2147937008"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "2051"
        strings_accuracy = "Low"
    strings:
        $x_1000_1 = "mshta" wide //weight: 1000
        $x_1000_2 = "http" wide //weight: 1000
        $x_50_3 = ".shop" wide //weight: 50
        $x_50_4 = ".xyz" wide //weight: 50
        $x_50_5 = ".icu" wide //weight: 50
        $x_50_6 = ".lat" wide //weight: 50
        $x_50_7 = ".fun" wide //weight: 50
        $x_50_8 = ".bet" wide //weight: 50
        $x_50_9 = ".live" wide //weight: 50
        $x_50_10 = ".life" wide //weight: 50
        $x_50_11 = ".online" wide //weight: 50
        $x_50_12 = ".bond" wide //weight: 50
        $x_50_13 = ".top" wide //weight: 50
        $x_50_14 = ".world" wide //weight: 50
        $x_50_15 = ".click" wide //weight: 50
        $x_50_16 = ".forest" wide //weight: 50
        $x_1_17 = {33 04 65 00 21 04 10 04 20 04 22 04 21 04 1d 04 10 04}  //weight: 1, accuracy: High
        $x_1_18 = {33 04 21 04 10 04 20 04 22 04 21 04 1d 04 10 04}  //weight: 1, accuracy: High
        $x_1_19 = {33 04 65 00 20 00 21 04 10 04 20 04 22 04 21 04 1d 04 10 04}  //weight: 1, accuracy: High
        $x_1_20 = {43 00 6c 00 bf 03 75 00 64 00 66 00 6c 00 61 00 72 00 65 00}  //weight: 1, accuracy: High
        $x_1_21 = {48 00 75 00 6d 00 30 04 6e 00 [0-30] 21 04 41 00 50 00 54 00 43 00 48 00 41 00}  //weight: 1, accuracy: Low
        $x_1_22 = "CIoudfIare Unique One-time" ascii //weight: 1
        $x_1_23 = "captcha" wide //weight: 1
        $x_1_24 = "Press Enter" wide //weight: 1
        $x_1_25 = "robot" wide //weight: 1
        $x_1_26 = "human" wide //weight: 1
        $x_1_27 = " ray" wide //weight: 1
        $x_1_28 = "verif" wide //weight: 1
        $x_1_29 = " recaptcha" wide //weight: 1
        $x_1_30 = " re captcha" wide //weight: 1
        $x_1_31 = " rCAPTCHA" wide //weight: 1
        $x_1_32 = " clip FREE" wide //weight: 1
        $x_1_33 = " Over FREE" wide //weight: 1
        $x_1_34 = "robot: r" wide //weight: 1
        $x_1_35 = "robot - r" wide //weight: 1
        $x_1_36 = "Cloudflare" wide //weight: 1
        $x_1_37 = "- Over FREE" wide //weight: 1
        $x_1_38 = "Google Meet" wide //weight: 1
        $x_1_39 = "DNS service" wide //weight: 1
        $x_1_40 = "robot - Cloudflare" wide //weight: 1
        $x_1_41 = "robot: Cloudflare" wide //weight: 1
        $x_1_42 = "robot: CAPTCHA" wide //weight: 1
        $x_1_43 = "robot - CAPTCHA" wide //weight: 1
        $x_1_44 = "Human - r" wide //weight: 1
        $x_1_45 = "Human: r" wide //weight: 1
        $x_1_46 = "Human: CAPTCHA" wide //weight: 1
        $x_1_47 = "Human - CAPTCHA" wide //weight: 1
        $x_1_48 = "Microsoft Windows: Fix Internet DNS Service reconnect" wide //weight: 1
        $x_1_49 = "Restart DNS service in the Microsoft Windows system" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((2 of ($x_1000_*) and 1 of ($x_50_*) and 1 of ($x_1_*))) or
            ((2 of ($x_1000_*) and 2 of ($x_50_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_ClickFix_GVA_2147937010_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.GVA!MTB"
        threat_id = "2147937010"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "13"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = "powershell" wide //weight: 5
        $x_5_2 = {69 00 72 00 6d 00 20 00 [0-255] 3a 00 [0-10] 2f 00 24 00}  //weight: 5, accuracy: Low
        $x_3_3 = "iex" wide //weight: 3
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_ClickFix_ZC_2147937321_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.ZC!MTB"
        threat_id = "2147937321"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "115"
        strings_accuracy = "High"
    strings:
        $x_100_1 = "powershell" wide //weight: 100
        $x_5_2 = "http" wide //weight: 5
        $x_5_3 = " iex" wide //weight: 5
        $x_5_4 = "iwr" wide //weight: 5
        $x_5_5 = "irm" wide //weight: 5
        $x_5_6 = "invoke-expression" wide //weight: 5
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_100_*) and 3 of ($x_5_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_ClickFix_ZC_2147937321_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.ZC!MTB"
        threat_id = "2147937321"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "11"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = ".replace('#','')" wide //weight: 1
        $x_1_2 = ".replace('@','')" wide //weight: 1
        $x_10_3 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 [0-1] 30 00 2d 00 77 00 [0-5] 68 00}  //weight: 10, accuracy: Low
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_10_*) and 1 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_ClickFix_SH_2147937478_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.SH"
        threat_id = "2147937478"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "113"
        strings_accuracy = "High"
    strings:
        $x_100_1 = "powershell" wide //weight: 100
        $x_10_2 = "-w hidden" wide //weight: 10
        $x_10_3 = "-w 1" wide //weight: 10
        $x_10_4 = "-w h " wide //weight: 10
        $x_1_5 = "::frombase64string(" wide //weight: 1
        $x_1_6 = "-useb " wide //weight: 1
        $x_1_7 = "iwr" wide //weight: 1
        $x_1_8 = "iex" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_100_*) and 1 of ($x_10_*) and 3 of ($x_1_*))) or
            ((1 of ($x_100_*) and 2 of ($x_10_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_ClickFix_DAE_2147937503_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.DAE!MTB"
        threat_id = "2147937503"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "116"
        strings_accuracy = "Low"
    strings:
        $x_100_1 = "powershell" wide //weight: 100
        $x_10_2 = {73 00 74 00 61 00 72 00 74 00 2d 00 70 00 72 00 6f 00 63 00 65 00 73 00 73 00 [0-15] 68 00 74 00 74 00 70 00}  //weight: 10, accuracy: Low
        $x_5_3 = "-outfile" wide //weight: 5
        $x_1_4 = "iex" wide //weight: 1
        $x_1_5 = "invoke-expression" wide //weight: 1
        $x_1_6 = "invoke-webrequest" wide //weight: 1
        $x_1_7 = "iwr" wide //weight: 1
        $x_1_8 = "irm" wide //weight: 1
        $x_1_9 = "invoke-restmethod" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_100_*) and 1 of ($x_10_*) and 6 of ($x_1_*))) or
            ((1 of ($x_100_*) and 1 of ($x_10_*) and 1 of ($x_5_*) and 1 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_ClickFix_DAF_2147937504_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.DAF!MTB"
        threat_id = "2147937504"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "131"
        strings_accuracy = "High"
    strings:
        $x_100_1 = "powershell" wide //weight: 100
        $x_10_2 = "http" wide //weight: 10
        $x_10_3 = "iex" wide //weight: 10
        $x_10_4 = "iwr" wide //weight: 10
        $x_1_5 = "I confirm that I am human reCAPTCHA" wide //weight: 1
        $x_1_6 = "Paste it For Passing" wide //weight: 1
        $x_1_7 = "I am not a robot | Captcha" wide //weight: 1
        $x_1_8 = "I am not a robot - V" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_100_*) and 3 of ($x_10_*) and 1 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_ClickFix_DAJ_2147937505_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.DAJ!MTB"
        threat_id = "2147937505"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "116"
        strings_accuracy = "Low"
    strings:
        $x_100_1 = "powershell" wide //weight: 100
        $x_10_2 = {73 00 74 00 61 00 72 00 74 00 2d 00 70 00 72 00 6f 00 63 00 65 00 73 00 73 00 [0-15] 2d 00 6e 00 6f 00 6e 00 65 00 77 00 77 00 69 00 6e 00 64 00 6f 00 77 00}  //weight: 10, accuracy: Low
        $x_5_3 = "-outfile" wide //weight: 5
        $x_1_4 = "iex" wide //weight: 1
        $x_1_5 = "invoke-expression" wide //weight: 1
        $x_1_6 = "invoke-webrequest" wide //weight: 1
        $x_1_7 = "iwr" wide //weight: 1
        $x_1_8 = "irm" wide //weight: 1
        $x_1_9 = "invoke-restmethod" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_100_*) and 1 of ($x_10_*) and 6 of ($x_1_*))) or
            ((1 of ($x_100_*) and 1 of ($x_10_*) and 1 of ($x_5_*) and 1 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_ClickFix_SE_2147937535_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.SE"
        threat_id = "2147937535"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "101"
        strings_accuracy = "High"
    strings:
        $x_100_1 = "http" ascii //weight: 100
        $x_1_2 = ".top" wide //weight: 1
        $x_1_3 = ".biz" wide //weight: 1
        $x_1_4 = ".info" wide //weight: 1
        $x_1_5 = ".link" wide //weight: 1
        $x_1_6 = ".loan" wide //weight: 1
        $x_1_7 = ".review" wide //weight: 1
        $x_1_8 = ".work" wide //weight: 1
        $x_1_9 = ".stream" wide //weight: 1
        $x_1_10 = ".club" wide //weight: 1
        $x_1_11 = ".party" wide //weight: 1
        $x_1_12 = ".study" wide //weight: 1
        $x_1_13 = ".technology" wide //weight: 1
        $x_1_14 = ".gdn" wide //weight: 1
        $x_1_15 = ".reise" wide //weight: 1
        $x_1_16 = ".yokohama" wide //weight: 1
        $x_1_17 = ".vip" wide //weight: 1
        $x_1_18 = ".ren" wide //weight: 1
        $x_1_19 = ".country" wide //weight: 1
        $x_1_20 = ".download" wide //weight: 1
        $x_1_21 = ".racing" wide //weight: 1
        $x_1_22 = ".science" wide //weight: 1
        $x_1_23 = ".shop" wide //weight: 1
        $x_1_24 = ".xyz" wide //weight: 1
        $x_1_25 = ".icu" wide //weight: 1
        $x_1_26 = ".lat" wide //weight: 1
        $x_1_27 = ".fun" wide //weight: 1
        $x_1_28 = ".bet" wide //weight: 1
        $x_1_29 = ".live" wide //weight: 1
        $x_1_30 = ".life" wide //weight: 1
        $x_1_31 = ".online" wide //weight: 1
        $x_1_32 = ".bond" wide //weight: 1
        $x_1_33 = ".world" wide //weight: 1
        $x_1_34 = ".click" wide //weight: 1
        $x_1_35 = ".forest" wide //weight: 1
        $x_1_36 = ".mp3" wide //weight: 1
        $x_1_37 = ".mp4" wide //weight: 1
        $x_1_38 = ".flv" wide //weight: 1
        $x_1_39 = ".mdb" wide //weight: 1
        $x_1_40 = ".eps" wide //weight: 1
        $x_1_41 = ".dat" wide //weight: 1
        $x_1_42 = ".cda" wide //weight: 1
        $x_1_43 = ".m4a" wide //weight: 1
        $x_1_44 = ".xll" wide //weight: 1
        $x_1_45 = ".digital" wide //weight: 1
        $x_1_46 = ".culture" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_100_*) and 1 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_ClickFix_YE_2147937536_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.YE!MTB"
        threat_id = "2147937536"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "10"
        strings_accuracy = "Low"
    strings:
        $x_10_1 = {6d 00 73 00 68 00 74 00 61 00 [0-255] 2e 00 6d 00 70 00 33 00}  //weight: 10, accuracy: Low
        $x_10_2 = {6d 00 73 00 68 00 74 00 61 00 [0-255] 2e 00 6d 00 70 00 34 00}  //weight: 10, accuracy: Low
        $x_10_3 = {6d 00 73 00 68 00 74 00 61 00 [0-255] 2e 00 78 00 6c 00 6c 00}  //weight: 10, accuracy: Low
        $x_10_4 = {6d 00 73 00 68 00 74 00 61 00 20 00 68 00 74 74 70 00 73 00 3a 00 2f 00 2f 00 61 00 6e 00 61 00 61 00 6d 00 77 00 2e 00 63 00 6f 00 6d 00 2f 00 [0-6] 2e 00 70 00 68 00 70 00 5c 00 31 00}  //weight: 10, accuracy: Low
        $x_10_5 = {6d 00 73 00 68 00 74 00 61 00 20 00 68 00 74 74 70 00 73 00 3a 00 2f 00 2f 00 72 00 65 00 61 00 2e 00 67 00 72 00 75 00 70 00 6f 00 6c 00 61 00 6c 00 65 00 67 00 69 00 6f 00 6e 00 2e 00 65 00 63 00 2f 00 [0-6] 2e 00 70 00 68 00 70 00 5c 00 31 00}  //weight: 10, accuracy: Low
        $x_10_6 = {6d 00 73 00 68 00 74 00 61 00 20 00 68 00 74 74 70 00 73 00 3a 00 2f 00 2f 00 67 00 72 00 65 00 65 00 6e 00 69 00 6e 00 64 00 75 00 73 00 74 00 72 00 79 00 2e 00 70 00 6c 00 2f 00 [0-6] 2e 00 70 00 68 00 70 00 5c 00 31 00}  //weight: 10, accuracy: Low
    condition:
        (filesize < 20MB) and
        (1 of ($x*))
}

rule Trojan_Win32_ClickFix_DAI_2147937671_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.DAI!MTB"
        threat_id = "2147937671"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "54"
        strings_accuracy = "High"
    strings:
        $x_50_1 = "powershell" wide //weight: 50
        $x_1_2 = "-UseBasicParsing).Content" wide //weight: 1
        $x_1_3 = "iex" wide //weight: 1
        $x_1_4 = "iwr $" wide //weight: 1
        $x_1_5 = "verif" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_ClickFix_HA_2147937679_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.HA!MTB"
        threat_id = "2147937679"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "11"
        strings_accuracy = "Low"
    strings:
        $x_10_1 = {2e 00 72 00 65 00 70 00 6c 00 61 00 63 00 65 00 28 00 27 00 [0-2] 27 00 2c 00 27 00 27 00 29 00}  //weight: 10, accuracy: Low
        $x_1_2 = "powershell" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_ClickFix_SDA_2147937775_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.SDA"
        threat_id = "2147937775"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "130"
        strings_accuracy = "High"
    strings:
        $x_100_1 = "powershell" wide //weight: 100
        $x_10_2 = "http" wide //weight: 10
        $x_10_3 = " iex" wide //weight: 10
        $x_10_4 = "iwr" wide //weight: 10
        $x_10_5 = "irm" wide //weight: 10
        $x_10_6 = "invoke-expression" wide //weight: 10
        $n_500_7 = "msiexec.exe" wide //weight: -500
        $n_500_8 = ".ps1" wide //weight: -500
        $n_500_9 = ".hta" wide //weight: -500
    condition:
        (filesize < 20MB) and
        (not (any of ($n*))) and
        (
            ((1 of ($x_100_*) and 3 of ($x_10_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_ClickFix_SJ_2147937800_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.SJ"
        threat_id = "2147937800"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "-split" wide //weight: 1
        $x_1_2 = "-join" wide //weight: 1
        $x_1_3 = "substring" wide //weight: 1
        $x_1_4 = "where-object {$_}" wide //weight: 1
        $x_1_5 = "foreach-object {[char]([convert]::toint32($_,16))}" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_ClickFix_SZZ_2147937801_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.SZZ"
        threat_id = "2147937801"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "powershell" wide //weight: 1
        $x_1_2 = "(([char](105))+([char](101))+([char](120)))" wide //weight: 1
        $x_1_3 = "(([char](83))+([char](116))+([char](97))+([char](114))+([char](116))+" wide //weight: 1
        $x_1_4 = "([char](45))+([char](80))+([char](114))+([char](111))+([char](99))+([char](101))+([char](115))+([char](115))+([char](32))" wide //weight: 1
        $x_1_5 = "([char](34))+([char](36))+([char](101))+([char](110))+([char](118))+([char](58))" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_ClickFix_TFA_2147938012_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.TFA"
        threat_id = "2147938012"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "22"
        strings_accuracy = "High"
    strings:
        $x_10_1 = "mshta" wide //weight: 10
        $x_10_2 = "http" wide //weight: 10
        $x_1_3 = "Capcha" wide //weight: 1
        $x_1_4 = "Your ID" wide //weight: 1
        $x_1_5 = "confirm" wide //weight: 1
        $x_1_6 = "human" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((2 of ($x_10_*) and 2 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_ClickFix_TFC_2147938013_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.TFC"
        threat_id = "2147938013"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "13"
        strings_accuracy = "High"
    strings:
        $x_10_1 = "powershell" wide //weight: 10
        $x_1_2 = "FromBase64String" wide //weight: 1
        $x_1_3 = "-bxor" wide //weight: 1
        $x_1_4 = "iex(" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_ClickFix_STA_2147938015_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.STA"
        threat_id = "2147938015"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "17"
        strings_accuracy = "Low"
    strings:
        $x_10_1 = {f1 d5 00 fa 4c 62 cc f4 0f 0b}  //weight: 10, accuracy: High
        $x_2_2 = {64 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 2e 00 65 00 78 00 65 00 63 00 43 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 28 00 [0-2] 63 00 6f 00 70 00 79 00 [0-2] 29 00}  //weight: 2, accuracy: Low
        $x_2_3 = {64 6f 63 75 6d 65 6e 74 2e 65 78 65 63 43 6f 6d 6d 61 6e 64 28 [0-2] 63 6f 70 79 [0-2] 29}  //weight: 2, accuracy: Low
        $x_1_4 = {64 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 2e 00 63 00 72 00 65 00 61 00 74 00 65 00 45 00 6c 00 65 00 6d 00 65 00 6e 00 74 00 28 00 [0-2] 74 00 65 00 78 00 74 00 61 00 72 00 65 00 61 00 [0-2] 29 00}  //weight: 1, accuracy: Low
        $x_1_5 = {64 6f 63 75 6d 65 6e 74 2e 63 72 65 61 74 65 45 6c 65 6d 65 6e 74 28 [0-2] 74 65 78 74 61 72 65 61 [0-2] 29}  //weight: 1, accuracy: Low
        $x_1_6 = {64 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 2e 00 62 00 6f 00 64 00 79 00 2e 00 61 00 70 00 70 00 65 00 6e 00 64 00 [0-48] 2e 00 73 00 65 00 6c 00 65 00 63 00 74 00 28 00 29 00}  //weight: 1, accuracy: Low
        $x_1_7 = {64 6f 63 75 6d 65 6e 74 2e 62 6f 64 79 2e 61 70 70 65 6e 64 [0-48] 2e 73 65 6c 65 63 74 28 29}  //weight: 1, accuracy: Low
        $x_1_8 = "captcha" ascii //weight: 1
        $x_1_9 = "verification-id" ascii //weight: 1
        $x_1_10 = {79 00 6f 00 75 00 20 00 61 00 72 00 65 00 [0-6] 68 00 75 00 6d 00 61 00 6e 00}  //weight: 1, accuracy: Low
        $x_1_11 = {79 6f 75 20 61 72 65 [0-6] 68 75 6d 61 6e}  //weight: 1, accuracy: Low
        $x_1_12 = {2e 00 61 00 64 00 64 00 45 00 76 00 65 00 6e 00 74 00 4c 00 69 00 73 00 74 00 65 00 6e 00 65 00 72 00 28 00 [0-2] 63 00 6c 00 69 00 63 00 6b 00}  //weight: 1, accuracy: Low
        $x_1_13 = {2e 61 64 64 45 76 65 6e 74 4c 69 73 74 65 6e 65 72 28 [0-2] 63 6c 69 63 6b}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_10_*) and 7 of ($x_1_*))) or
            ((1 of ($x_10_*) and 1 of ($x_2_*) and 5 of ($x_1_*))) or
            ((1 of ($x_10_*) and 2 of ($x_2_*) and 3 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_ClickFix_TFB_2147938017_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.TFB"
        threat_id = "2147938017"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "20"
        strings_accuracy = "High"
    strings:
        $x_10_1 = "powershell" wide //weight: 10
        $x_10_2 = "JABkAG8AdwBuAGwAbwBhAGQAVQByAGwAIAA9ACAAIgBoAHQAdABwAHMAOgAvAC8AcwBlAGMAdQByAGkAdAB5AC4AYwBsAG8AdQBkAHMAdAB3AHIALgBjAG8AbQAvAE" wide //weight: 10
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_ClickFix_STB_2147938198_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.STB"
        threat_id = "2147938198"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "mshta" wide //weight: 1
        $x_1_2 = " # " wide //weight: 1
        $x_1_3 = "://" wide //weight: 1
        $x_1_4 = ".ogg #" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_ClickFix_STB_2147938198_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.STB"
        threat_id = "2147938198"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "301"
        strings_accuracy = "High"
    strings:
        $x_100_1 = "mshta" wide //weight: 100
        $x_100_2 = " # " wide //weight: 100
        $x_100_3 = "://" wide //weight: 100
        $x_1_4 = "confirm" wide //weight: 1
        $x_1_5 = "captcha" wide //weight: 1
        $x_1_6 = "human" wide //weight: 1
        $x_1_7 = "robot" wide //weight: 1
        $x_1_8 = "verif" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((3 of ($x_100_*) and 1 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_ClickFix_DAO_2147938209_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.DAO!MTB"
        threat_id = "2147938209"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "18"
        strings_accuracy = "High"
    strings:
        $x_10_1 = "powershell" wide //weight: 10
        $x_5_2 = "-UseBasicParsing).Content" wide //weight: 5
        $x_1_3 = "iex" wide //weight: 1
        $x_1_4 = "iwr" wide //weight: 1
        $x_1_5 = "$_ -bxor" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_ClickFix_DAR_2147938210_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.DAR!MTB"
        threat_id = "2147938210"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "101"
        strings_accuracy = "High"
    strings:
        $x_100_1 = "mshta" wide //weight: 100
        $x_1_2 = "CIoudfIare Unique One-time" wide //weight: 1
        $x_1_3 = "User Ref: Alpha" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_100_*) and 1 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_ClickFix_DAS_2147938211_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.DAS!MTB"
        threat_id = "2147938211"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "101"
        strings_accuracy = "High"
    strings:
        $x_100_1 = "mshta" wide //weight: 100
        $x_1_2 = {20 00 49 00 09 20}  //weight: 1, accuracy: High
        $x_1_3 = {09 20 49 00 09 20}  //weight: 1, accuracy: High
        $x_1_4 = {09 20 49 00 20 00}  //weight: 1, accuracy: High
        $x_1_5 = {20 00 99 03 20 00}  //weight: 1, accuracy: High
        $x_1_6 = {09 20 99 03 09 20}  //weight: 1, accuracy: High
        $x_1_7 = {20 00 99 03 09 20}  //weight: 1, accuracy: High
        $x_1_8 = {20 00 72 00 3e 04}  //weight: 1, accuracy: High
        $x_1_9 = {20 00 7e 02 80 05}  //weight: 1, accuracy: High
        $x_1_10 = {20 00 52 00 bf 03}  //weight: 1, accuracy: High
        $x_1_11 = {02 00 43 00 91 03}  //weight: 1, accuracy: High
        $x_1_12 = {02 00 21 04 91 03}  //weight: 1, accuracy: High
        $x_1_13 = {02 00 21 04 41 00}  //weight: 1, accuracy: High
        $x_1_14 = {09 20 43 00 91 03}  //weight: 1, accuracy: High
        $x_1_15 = {09 20 21 04 91 03}  //weight: 1, accuracy: High
        $x_1_16 = {09 20 21 04 41 00}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_100_*) and 1 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_ClickFix_TFD_2147938308_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.TFD"
        threat_id = "2147938308"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "14"
        strings_accuracy = "High"
    strings:
        $x_10_1 = "powershell" wide //weight: 10
        $x_1_2 = "http" wide //weight: 1
        $x_1_3 = "Verification" wide //weight: 1
        $x_1_4 = "|iex" wide //weight: 1
        $x_1_5 = " iwr " wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_ClickFix_DAT_2147938309_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.DAT!MTB"
        threat_id = "2147938309"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "202"
        strings_accuracy = "High"
    strings:
        $x_100_1 = "powershell" wide //weight: 100
        $x_100_2 = " # " wide //weight: 100
        $x_1_3 = "iwr" wide //weight: 1
        $x_1_4 = "|iex" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_ClickFix_DAU_2147938314_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.DAU!MTB"
        threat_id = "2147938314"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "18"
        strings_accuracy = "Low"
    strings:
        $x_10_1 = "powershell" wide //weight: 10
        $x_1_2 = "-UseBasicParsing).Content" wide //weight: 1
        $x_1_3 = "iex" wide //weight: 1
        $x_1_4 = "iwr" wide //weight: 1
        $x_5_5 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 [0-9] 2e 00 [0-9] 2e 00 [0-9] 2e 00 [0-9] 3a 00 [0-9] 2f 00}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_ClickFix_STC_2147938321_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.STC"
        threat_id = "2147938321"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "103"
        strings_accuracy = "Low"
    strings:
        $x_100_1 = {50 00 6f 00 77 00 65 00 72 00 53 00 68 00 65 00 6c 00 6c 00 [0-16] 20 00 2d 00 77 00 20 00 68 00 20 00 2d 00 63 00 20 00 [0-4] 69 00 65 00 78 00 20 00 24 00 28 00 69 00 72 00 6d 00}  //weight: 100, accuracy: Low
        $x_2_2 = ":8080/$($z" wide //weight: 2
        $x_1_3 = "('01/01/' + '1970')" wide //weight: 1
        $x_1_4 = "$x = ($z - $y).TotalSeconds" wide //weight: 1
        $x_1_5 = "::Floor($x); $v = $w - ($w % 16)" wide //weight: 1
        $x_1_6 = {3a 00 3a 00 55 00 74 00 63 00 4e 00 6f 00 77 00 3b 00 20 00 24 00 79 00 20 00 3d 00 20 00 [0-4] 64 00 61 00 74 00 65 00 74 00 69 00 6d 00 65 00}  //weight: 1, accuracy: Low
        $x_1_7 = "[int64]$v))" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_100_*) and 3 of ($x_1_*))) or
            ((1 of ($x_100_*) and 1 of ($x_2_*) and 1 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_ClickFix_STD_2147938322_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.STD"
        threat_id = "2147938322"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "103"
        strings_accuracy = "Low"
    strings:
        $x_100_1 = {50 00 6f 00 77 00 65 00 72 00 53 00 68 00 65 00 6c 00 6c 00 [0-16] 20 00 2d 00 77 00 20 00 68 00 20 00 2d 00 63 00 20 00 [0-4] 69 00 65 00 78 00 20 00 24 00 28 00 69 00 72 00 6d 00}  //weight: 100, accuracy: Low
        $x_1_2 = "MQA5ADcAMAA=" wide //weight: 1
        $x_1_3 = "MAAxAC8AMAAxAC8A" wide //weight: 1
        $x_1_4 = "(datetime($(Text.Encoding::Unicode.GetString(Convert::FromBase64String" wide //weight: 1
        $x_1_5 = "math::Floor(${__/==\\_/\\___/===\\})" wide //weight: 1
        $x_1_6 = "int64${___/==\\/=\\/\\__/==}))" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_100_*) and 3 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_ClickFix_AA_2147938353_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.AA"
        threat_id = "2147938353"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "powershell" wide //weight: 1
        $x_1_2 = {13 20 65 00 4e 00 63 00 6f}  //weight: 1, accuracy: High
        $x_1_3 = "uwb0ageacgb0ac0auabyag8aywblahmacwagaciaaab0ahqacaa6a" wide //weight: 1
        $x_1_4 = "guazaa9ahqacgb1aguaigagaa==" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_ClickFix_SF_2147938437_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.SF"
        threat_id = "2147938437"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "11"
        strings_accuracy = "Low"
    strings:
        $x_10_1 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 [0-255] 20 00 2d 00 77 00 [0-32] 20 00 31 00}  //weight: 10, accuracy: Low
        $x_10_2 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 [0-255] 20 00 2d 00 77 00 [0-32] 20 00 68 00}  //weight: 10, accuracy: Low
        $x_1_3 = "http" wide //weight: 1
        $n_100_4 = "trackmap.epic.com" wide //weight: -100
        $n_100_5 = ".hta" wide //weight: -100
        $n_100_6 = ".ps1" wide //weight: -100
    condition:
        (filesize < 20MB) and
        (not (any of ($n*))) and
        (
            ((1 of ($x_10_*) and 1 of ($x_1_*))) or
            ((2 of ($x_10_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_ClickFix_ZA_2147938438_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.ZA"
        threat_id = "2147938438"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "powershell" wide //weight: 1
        $x_1_2 = "-w" wide //weight: 1
        $x_1_3 = "http" wide //weight: 1
        $n_100_4 = ".ps1" wide //weight: -100
        $n_100_5 = ".hta" wide //weight: -100
    condition:
        (filesize < 20MB) and
        (not (any of ($n*))) and
        (all of ($x*))
}

rule Trojan_Win32_ClickFix_ZB_2147938439_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.ZB"
        threat_id = "2147938439"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "111"
        strings_accuracy = "High"
    strings:
        $x_100_1 = "powershell" wide //weight: 100
        $x_10_2 = "-w" wide //weight: 10
        $x_1_3 = "http" wide //weight: 1
        $x_1_4 = "iex" wide //weight: 1
        $x_1_5 = "iwr" wide //weight: 1
        $n_300_6 = ".ps1" wide //weight: -300
        $n_300_7 = ".hta" wide //weight: -300
    condition:
        (filesize < 20MB) and
        (not (any of ($n*))) and
        (
            ((1 of ($x_100_*) and 1 of ($x_10_*) and 1 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_ClickFix_STX_2147938567_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.STX"
        threat_id = "2147938567"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "mshta" wide //weight: 1
        $x_1_2 = " # " wide //weight: 1
        $x_1_3 = "://" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

