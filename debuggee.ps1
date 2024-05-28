$bdf = ((
    Get-NetAdapterHardwareInfo -InterfaceDescription * | 
        Where-Object Name -eq "Ethernet 2" | 
            select Busnumber, Devicenumber, Functionnumber | 
                ConvertTo-Csv -Delimiter ' ' -NoTypeInformation | 
                    Select-Object -Skip 1) -replace '"','' -replace ' ','.' | 
                        Out-String) -replace '\n',''

bcdedit /debug on
bcdedit /dbgsettings net hostip:192.168.56.6 port:50001 key:1.3.3.7
bcdedit /set "{dbgsettings}" busparams $bdf
shutdown /r /t 0
