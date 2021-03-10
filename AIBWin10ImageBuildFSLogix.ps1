#Script to setup golden image with Azure Image Builder

#InstallFSLogix
New-Item -Path "c:\" -Name "temp" -ItemType "directory"
Invoke-WebRequest -Uri 'https://aka.ms/fslogix_download' -OutFile 'c:\temp\fslogix.zip'
Start-Sleep -Seconds 10
Expand-Archive -Path 'C:\temp\fslogix.zip' -DestinationPath 'C:\temp\fslogix\'  -Force
Invoke-Expression -Command 'C:\temp\fslogix\x64\Release\FSLogixAppsSetup.exe /install /quiet /norestart'

#Start sleep
Start-Sleep -Seconds 30
