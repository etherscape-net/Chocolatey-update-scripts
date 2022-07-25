REM Call Powershel to update all Chocolately packages from Repos
Powershell.exe -File C:\ProgramData\chocolatey\ChocoUpgradeALL.ps1

REM Update Office 
"C:\Program Files\Common Files\microsoft shared\ClickToRun\OfficeC2RClient.exe" /update user