# Install all updates of packages installed from Chocolately Repos
# Author: Dave Del Purgatorio | etherScape 2024
# Date: 2021-04-01
# Version: 1.0.0
# Description: This script will check for updates to all packages installed from the Chocolatey repo and install them. It will also check for and install all Windows and Office updates.

# Check for and install any updates to packages installed from the Chocolatey repo
    write-host "Now checking the Chocolatey repo for updates....`n"
    choco upgrade all  -y


# Install any Windows Updates (except drivers). Accept prompts and  surpress any auto-reboots.
# First import-pswindowsupdate  module
    Import-Module -Name PSWindowsUpdate
    write-host  "Now checking for windows updates...`n"
    Install-WindowsUpdate -NotCategory "Drivers" -AcceptAll -verbose -IgnoreReboot

# Install any Office Updates
    write-host "Now checking for office updates...`n"
    Start-Process -FilePath 'C:\Program Files\Common Files\microsoft shared\ClickToRun\OfficeC2RClient.exe' "/update user"
