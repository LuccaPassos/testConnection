do {
    $connection = Test-Connection -ComputerName www.google.com -Quiet -Count 1
    if($connection -eq $false){
        Start-Sleep -s 15
    }
}while($connection -eq $false)

$s = New-Object -ComObject SAPI.SPVoice
$s.Voice = $s.getvoices("Language = 409","").Item(0)
[system.media.systemsounds]::Beep.play()
Start-Sleep -s 1
$s.Speak("Internet Connection Available") | Out-Null