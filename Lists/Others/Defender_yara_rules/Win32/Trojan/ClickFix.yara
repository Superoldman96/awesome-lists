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
        $x_1_7 = " re captcha" wide //weight: 1
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
        $x_1_7 = " re captcha" wide //weight: 1
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
        threshold = "41"
        strings_accuracy = "High"
    strings:
        $x_10_1 = "mshta" wide //weight: 10
        $x_10_2 = "http" wide //weight: 10
        $x_10_3 = "verif" wide //weight: 10
        $x_10_4 = "\\1" wide //weight: 10
        $x_1_5 = " ray" wide //weight: 1
        $x_1_6 = " recaptcha" wide //weight: 1
        $x_1_7 = " re captcha" wide //weight: 1
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
            ((3 of ($x_10_*) and 11 of ($x_1_*))) or
            ((4 of ($x_10_*) and 1 of ($x_1_*))) or
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

rule Trojan_Win32_ClickFix_DR_2147933573_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ClickFix.DR!MTB"
        threat_id = "2147933573"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ClickFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "31"
        strings_accuracy = "High"
    strings:
        $x_10_1 = "powershell" wide //weight: 10
        $x_10_2 = "http" wide //weight: 10
        $x_10_3 = "verif" wide //weight: 10
        $x_1_4 = " ray" wide //weight: 1
        $x_1_5 = " recaptcha" wide //weight: 1
        $x_1_6 = " re captcha" wide //weight: 1
        $x_1_7 = " rCAPTCHA" wide //weight: 1
        $x_1_8 = " clip FREE" wide //weight: 1
        $x_1_9 = " Over FREE" wide //weight: 1
        $x_1_10 = "robot: r" wide //weight: 1
        $x_1_11 = "robot - r" wide //weight: 1
        $x_1_12 = "robot - Cloudflare" wide //weight: 1
        $x_1_13 = "robot: Cloudflare" wide //weight: 1
        $x_1_14 = "robot: CAPTCHA" wide //weight: 1
        $x_1_15 = "robot - CAPTCHA" wide //weight: 1
        $x_1_16 = "Human - r" wide //weight: 1
        $x_1_17 = "Human: r" wide //weight: 1
        $x_1_18 = "Human: CAPTCHA" wide //weight: 1
        $x_1_19 = "Human - CAPTCHA" wide //weight: 1
        $x_1_20 = "Microsoft Windows: Fix Internet DNS Service reconnect" wide //weight: 1
        $x_1_21 = "Restart DNS service in the Microsoft Windows system" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((2 of ($x_10_*) and 11 of ($x_1_*))) or
            ((3 of ($x_10_*) and 1 of ($x_1_*))) or
            (all of ($x*))
        )
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
        strings_accuracy = "High"
    strings:
        $x_10_1 = "powershell" wide //weight: 10
        $x_10_2 = "-replace" wide //weight: 10
        $x_10_3 = "verif" wide //weight: 10
        $x_1_4 = " ray" wide //weight: 1
        $x_1_5 = " recaptcha" wide //weight: 1
        $x_1_6 = " re captcha" wide //weight: 1
        $x_1_7 = " rCAPTCHA" wide //weight: 1
        $x_1_8 = " clip FREE" wide //weight: 1
        $x_1_9 = " Over FREE" wide //weight: 1
        $x_1_10 = "robot: r" wide //weight: 1
        $x_1_11 = "robot - r" wide //weight: 1
        $x_1_12 = "robot - Cloudflare" wide //weight: 1
        $x_1_13 = "robot: Cloudflare" wide //weight: 1
        $x_1_14 = "robot: CAPTCHA" wide //weight: 1
        $x_1_15 = "robot - CAPTCHA" wide //weight: 1
        $x_1_16 = "Human - r" wide //weight: 1
        $x_1_17 = "Human: r" wide //weight: 1
        $x_1_18 = "Human: CAPTCHA" wide //weight: 1
        $x_1_19 = "Human - CAPTCHA" wide //weight: 1
        $x_1_20 = "Microsoft Windows: Fix Internet DNS Service reconnect" wide //weight: 1
        $x_1_21 = "Restart DNS service in the Microsoft Windows system" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (
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
        strings_accuracy = "High"
    strings:
        $x_200_1 = "powershell" wide //weight: 200
        $x_1_2 = "captcha" wide //weight: 1
        $x_1_3 = "robot" wide //weight: 1
        $x_1_4 = "human" wide //weight: 1
        $x_1_5 = " ray" wide //weight: 1
        $x_1_6 = " recaptcha" wide //weight: 1
        $x_1_7 = " re captcha" wide //weight: 1
        $x_1_8 = " rCAPTCHA" wide //weight: 1
        $x_1_9 = " clip FREE" wide //weight: 1
        $x_1_10 = " Over FREE" wide //weight: 1
        $x_1_11 = "robot: r" wide //weight: 1
        $x_1_12 = "robot - r" wide //weight: 1
        $x_1_13 = "Cloudflare" wide //weight: 1
        $x_1_14 = "- Over FREE" wide //weight: 1
        $x_1_15 = "Google Meet" wide //weight: 1
        $x_1_16 = "DNS service" wide //weight: 1
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

