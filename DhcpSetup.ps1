# Set up DHCP
Add-DhcpServerv4Scope -Name "UserScope" -StartRange "192.168.1.100" -EndRange "192.168.1.200" -SubnetMask "255.255.255.0" -LeaseDuration $(New-Timespan -Days 8) -State Active
Set-DhcpServerv4OptionValue -ScopeId "192.168.1.0" -OptionId 6 -Value "192.168.1.2"
Set-DhcpServerv4OptionValue -ScopeId "192.168.1.0" -OptionId 3 -Value "192.168.1.1"
Add-DhcpServerInDC -DnsName goku.gcp1180.com -IPAddress "192.168.1.2"
Restart-Service DhcpServer
