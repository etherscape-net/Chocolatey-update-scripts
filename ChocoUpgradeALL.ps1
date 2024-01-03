# Install all updates of packages installed from Chocolately Repos

    write-host "Now checking the Chocolatey repo for updates....`n"
    choco upgrade all  -y

# Query and Install all Windows Updates
    
    write-host  "Now checking for windows updates...`n"
    Install-WindowsUpdate -NotCategory "Drivers" -AcceptAll -verbose -IgnoreReboot

# Install any Office Updates

    write-host "Now checking for office updates...`n"
    Start-Process -FilePath 'C:\Program Files\Common Files\microsoft shared\ClickToRun\OfficeC2RClient.exe' "/update user"