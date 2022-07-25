# Install all updates of packages installed from Chocolately Repos
choco upgrade all  -y

# Query and Install all Windows Updates
# Get-WindowsUpdate -AcceptAll -Install -IgnoreReboot
Install-WindowsUpdate -NotCategory "Drivers" -AcceptAll  -IgnoreReboot