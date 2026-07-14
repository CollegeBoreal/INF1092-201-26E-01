Nom de l'étudiant : Bernard Rosemene

Cours : Introduction à l'administration des systèmes

Date :10/07/2026

ID: 300124366

hostname : WIN-3RSSC2K52KK

Les principales commandes powershell effectuées pour la configuration du reseau Hyper-v sont:

Get-NetAdapter

Get-NetIPConfiguration

New-NetIPAddress `
-InterfaceAlias "Ethernet" `
-IPAddress 10.7.237.201`
-PrefixLength 23 `
-DefaultGateway 10.7.237.1

Set-DnsClientServerAddress `
-InterfaceAlias "Ethernet" `
-ServerAddresses 10.7.237.3

ping 10.7.237.1

ping 8.8.8.8

ping google.ca

Set-ItemProperty `
-Path "HKLM:\System\CurrentControlSet\Control\Terminal Server" `
-Name "fDenyTSConnections" `
-Value 0

Enable-NetFirewallRule `
-DisplayGroup "Remote Desktop"

Test-NetConnection localhost -Port 3389

query user
