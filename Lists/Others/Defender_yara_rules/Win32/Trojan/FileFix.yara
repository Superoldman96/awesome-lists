rule Trojan_Win32_FileFix_D_2147945794_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/FileFix.D!MTB"
        threat_id = "2147945794"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "FileFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "3"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = "powershell" wide //weight: 1
        $x_1_2 = ".docx" wide //weight: 1
        $x_1_3 = {2d 00 63 00 20 00 70 00 69 00 6e 00 67 00 [0-80] 23 00}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_FileFix_DC_2147945906_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/FileFix.DC!MTB"
        threat_id = "2147945906"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "FileFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "112"
        strings_accuracy = "High"
    strings:
        $x_100_1 = "powershell" wide //weight: 100
        $x_10_2 = "; # --- Security identity" wide //weight: 10
        $x_10_3 = "; # Verify you are human" wide //weight: 10
        $x_10_4 = "; # ----- Identity" wide //weight: 10
        $x_10_5 = "$fab;" wide //weight: 10
        $x_1_6 = "Invoke-Expression $" wide //weight: 1
        $x_1_7 = "= Invoke-WebRequest" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_100_*) and 1 of ($x_10_*) and 2 of ($x_1_*))) or
            ((1 of ($x_100_*) and 2 of ($x_10_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_FileFix_A_2147945919_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/FileFix.A!MTB"
        threat_id = "2147945919"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "FileFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "[System.Windows.Forms.MessageBox]::Show($" wide //weight: 1
        $x_1_2 = "Start-Process" wide //weight: 1
        $x_1_3 = "http" wide //weight: 1
        $x_1_4 = "System.Windows.Forms.SendKeys]::SendWait" wide //weight: 1
        $x_1_5 = "for($" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_FileFix_B_2147945920_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/FileFix.B!MTB"
        threat_id = "2147945920"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "FileFix"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "while($" wide //weight: 1
        $x_1_2 = "powershell" wide //weight: 1
        $x_1_3 = ".docx" wide //weight: 1
        $x_1_4 = "[System.Windows.MessageBox]::Show(($" wide //weight: 1
        $x_1_5 = "Get-Random" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

