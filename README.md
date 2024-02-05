# Install Chocolatey & GUI
- https://chocolatey.org/install
- https://community.chocolatey.org/packages/chocolateygui

          //install Core Choco
        Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

         //install GUI
          choco install chocolateygui
    

# Chocolatey-update-scripts | Powershell and batch scripts to update Windows, MSOffice and Chocolately packages. 
### Install all updates of packages installed from Chocolately Repos ( "-y" auto accepts the update and outputs to standard output in the terminal Window)
    
        choco upgrade all -y
    
### Query and Install all Windows Updates (except drivers!!), autoaccpeting the installs, and ignoring requests to reboot

        Install-WindowsUpdate -NotCategory "Drivers" -AcceptAll  -IgnoreReboot
   
   
### Script is called from a batch file (ChocoUpgradeALL.ps1). While I personally create a desktop shortcut to ChocolateyUpdateall.bat, once can simply add it as a [Scheduled task in Windows Task Scheduler](https://blog.netwrix.com/2018/07/03/how-to-automate-powershell-scripts-with-task-scheduler/)

        Powershell.exe -File C:\ProgramData\chocolatey\ChocoUpgradeALL.ps1
  
 
### To update office, we call the **OfficeC2RClient.exe** executable within our batch script directly:

        C:\Program Files\Common Files\microsoft shared\ClickToRun\OfficeC2RClient.exe" /update user


#### https://www.powershellgallery.com/packages/PSWindowsUpdate/2.2.0.3

          Install-Module -Name PSWindowsUpdate -RequiredVersion 2.2.0.3

 Validate Module cmdlet:
 
        Get-Command –Module PSWindowsUpdate
        Show-WindowsUpdate 
        Install-WindowsUpdate 

https://pureinfotech.com/install-windows-10-update-powershell

#### https://www.virtualizationhowto.com/2023/06/pswindowsupdate-automated-windows-updates-with-powershell/
#### https://adamtheautomator.com/import-powershell-modules/

In PowerShell, the Get-WindowsUpdate command lists all available Windows updates for a computer. The Install-WindowsUpdate command gets a list of updates and installs them. 
To install updates using PowerShell, you can:

          Run the Install-Module PSWindowsUpdate command to install the module.
          Run the Get-WindowsUpdate command to get all available updates.
