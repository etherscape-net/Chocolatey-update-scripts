# Install all updates of packages installed from Chocolately Repos
choco upgrade all  -y

# Be sure to install Install-Module PSWindowsUpdate -force, first!!
# https://stackoverflow.com/questions/41117421/ps1-cannot-be-loaded-because-running-scripts-is-disabled-on-this-system

# Query and Install all Windows Updates
# Get-WindowsUpdate -AcceptAll -Install -IgnoreReboot
Install-WindowsUpdate -NotCategory "Drivers" -AcceptAll  -IgnoreReboot
