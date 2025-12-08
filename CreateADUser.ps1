New-ADUser `
-Name "Gabe Petitt" `
-GivenName "Gabe" `
-Surname "Petitt" `
-UserPrincipalName "gpetitt@gcp1180.com" `
-SamAccountName "gpetitt" `
-Path "dc=gcp1180,dc=com" `
-PasswordNeverExpires:$true `
-AccountPassword $(ConvertTo-SecureString "Password1" -AsPlainText -Force) `
-Enabled:$true

Add-ADGroupMember -Identity "Domain Admins" -Members "gpetitt"
