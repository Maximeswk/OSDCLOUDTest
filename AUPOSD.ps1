Write-Host  -ForegroundColor Cyan "Starting AUP PC_SALARIE by Exaduo ..."
Start-Sleep -Seconds 5

#Make sure I have the latest OSD Content
Write-Host  -ForegroundColor Cyan "Updating OSD PowerShell Module"
Install-Module OSD -Force

Write-Host  -ForegroundColor Cyan "Importing OSD PowerShell Module"
Import-Module OSD -Force

#Start OSDCloud ZTI the RIGHT way
Write-Host  -ForegroundColor Cyan "Start OSDCloud with AUP PC_SALARIE by Exaduo Parameters"
Start-OSDCloud -OSLanguage fr-fr -OSVersion "Windows 10" -OSBuild 22H2 -OSEdition Education -ZTI

#Restart from WinPE
Write-Host  -ForegroundColor Cyan "Restarting in 20 seconds!"
Start-Sleep -Seconds 20
wpeutil reboot
