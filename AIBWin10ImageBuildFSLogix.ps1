﻿#Script to setup golden image with Azure Image Builder

#Create temp folder
New-Item -Path 'C:\temp' -ItemType Directory -Force | Out-Null

#Start sleep
Start-Sleep -Seconds 10

#InstallFSLogix
Invoke-WebRequest -Uri 'https://aka.ms/fslogix_download' -OutFile 'c:\temp\fslogix.zip'
Start-Sleep -Seconds 10
Expand-Archive -Path 'C:\temp\fslogix.zip' -DestinationPath 'C:\temp\fslogix\'  -Force
Invoke-Expression -Command 'C:\temp\fslogix\x64\Release\FSLogixAppsSetup.exe /install /quiet /norestart'