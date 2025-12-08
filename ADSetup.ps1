# Self-written script to install features ahead of time
Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools
Install-WindowsFeature -Name DNS -IncludeManagementTools
Install-WindowsFeature -Name DHCP -IncludeManagementTools
Import-Module ADDSDeployment
Install-ADDSForest `
-DatabasePath "C:\WINDOWS\NTDS" `
-DomainMode "Win2025" `
-DomainName "gcp1180.com" `
-DomainNetbiosName "GCP1180" `
-ForestMode "Win2025" `
-InstallDns:$true `
-LogPath "C:\WINDOWS\NTDS" `
-NoRebootOnCompletion:$false `
-SysvolPath "C:\WINDOWS\SYSVOL" `
-SafeModeAdministratorPassword $(ConvertTo-SecureString "student" -AsPlainText -Force) `
-Force:$true
