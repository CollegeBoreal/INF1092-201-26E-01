Nom de l'étudiant : Bernard Rosemene

Cours : Introduction à l'administration des systèmes

Date :30/07/2026

ID: 300124366

Objectifs

L'objectif de ce laboratoire était de configurer une machine virtuelle Windows Server 2022 afin de permettre son administration à distance.



- Nom de la machine virtuelle

<img width="1600" height="522" alt="WhatsApp Image 2026-07-30 at 6 45 13 PM" src="https://github.com/user-attachments/assets/446dafeb-5ec7-457a-ba36-9e09214271bd" />

- Configuration de l'adresse IP statique

<img width="1434" height="629" alt="WhatsApp Image 2026-07-30 at 6 45 13 PM (1)" src="https://github.com/user-attachments/assets/bc598fe2-a928-4cf0-aab2-6b924203ca92" />

- Vérification de la connectivité réseau

<img width="1498" height="702" alt="WhatsApp Image 2026-07-30 at 6 45 13 PM (3)" src="https://github.com/user-attachments/assets/d4945935-3de9-4091-9d20-935fedd07c4e" />

- Ping vers Google

<img width="1600" height="787" alt="WhatsApp Image 2026-07-30 at 6 45 13 PM (2)" src="https://github.com/user-attachments/assets/a72fd5a8-5e5b-4553-9a47-08a3c18ea257" />

- Activation du Bureau à distance et connexion RDP

Le Bureau à distance a été activé sur la machine virtuelle afin de permettre une connexion à distance.
Les paramètres du pare-feu Windows autorisent les connexions RDP. Puis, une connexion Bureau à distance a été établie avec succès entre l'ordinateur hôte et la machine virtuelle.

<img width="1600" height="1200" alt="WhatsApp Image 2026-07-30 at 6 45 12 PM (2)" src="https://github.com/user-attachments/assets/c017b0ef-2aa4-4a6f-ae24-be577118bb68" />

<img width="1079" height="914" alt="WhatsApp Image 2026-07-30 at 6 45 11 PM" src="https://github.com/user-attachments/assets/b589add3-bb2b-4a6b-b371-a9fb0409ff0d" />

<img width="1600" height="1200" alt="WhatsApp Image 2026-07-30 at 6 45 10 PM" src="https://github.com/user-attachments/assets/dd87a346-682b-44e5-a872-92aea604aad0" />

-Les principales commandes powershell effectuées pour la configuration du réseau Hyper-V sont:

hostname 

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





