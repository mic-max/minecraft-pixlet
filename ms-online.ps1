# Make a noise when people are on the server

Install-Script 'Invoke-Process'
. Invoke-Process.ps1

$last = ""
Do {
    $stdout = Invoke-Process -Filepath mcstatus -ArgumentList '<IP ADDRESS> status'
    if (-not $stdout -eq $last) {
        (new-object Media.SoundPlayer "C:\WINDOWS\Media\notify.wav").play();
        Write-Host $stdout
    }
    $last = $stdout
    Start-Sleep -s 5
}
while ($true)
