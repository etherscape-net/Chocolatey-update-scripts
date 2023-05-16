# Chocolatey-update-scripts
Powershell and batch scripts to update Windows and Chocolately packages. 

The Script is simplay a single powershell file "ChocoUpgradeALL.ps1" that contains (2) upgrade 

1. Install all updates of packages installed from Chocolately Repos ( "-y" auto accepts the update and outputs to standard output in the terminal Window)
    
    **choco upgrade all -y**
    
2. Query and Install all Windows Updates (except drivers!!), autoaccpeting the installs, and ignoring requests to reboot

   **Install-WindowsUpdate -NotCategory "Drivers" -AcceptAll  -IgnoreReboot**
   
   
Script is called from a batch file (ChocoUpgradeALL.ps1).
**note** While I personally create a desktop shortcut to ChocolateyUpdateall.bat, once can simply add it as a [Scheduled task in Windows Task Scheduler] (https://blog.netwrix.com/2018/07/03/how-to-automate-powershell-scripts-with-task-scheduler/)

  **Powershell.exe -File C:\ProgramData\chocolatey\ChocoUpgradeALL.ps1**
