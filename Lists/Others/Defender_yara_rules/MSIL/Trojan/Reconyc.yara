rule Trojan_MSIL_Reconyc_AVD_2147781334_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Reconyc.AVD!MTB"
        threat_id = "2147781334"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Reconyc"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "35"
        strings_accuracy = "High"
    strings:
        $x_10_1 = {06 6e 17 6a 58 20 ff 00 00 00 6a 5f 6d 0a 11 07 11 04 06 95 58 6e 20 ff 00 00 00 6a 5f 6d 13 07 11 04 06 95 13 05 11 04 06 11 04 11 07 95 9e 11 04 11 07 11 05 9e 11 08 09 02 09 91 11 04 11 04 06 95 11 04 11 07 95 58 6e 20 ff 00 00 00 6a 5f 69 95 61 d2 9c 09 17 58 0d}  //weight: 10, accuracy: High
        $x_5_2 = "ReadAllText" ascii //weight: 5
        $x_5_3 = "sciwyskaveolatsawunetagbsfqif" ascii //weight: 5
        $x_5_4 = "get_MainModule" ascii //weight: 5
        $x_5_5 = "get_FileName" ascii //weight: 5
        $x_5_6 = "FromBase64String" ascii //weight: 5
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

