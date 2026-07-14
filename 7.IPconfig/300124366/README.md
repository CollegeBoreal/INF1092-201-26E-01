Nom de l'étudiant : Bernard Rosemene

Cours : Introduction à l'administration des systèmes

Date :10/07/2026

ID: 300124366

Objectifs

L'objectif de ce laboratoire était de configurer une machine virtuelle Windows Server 2022 afin de permettre son administration à distance.

Les principales commandes powershell effectuées pour la configuration du réseau Hyper-V sont:

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

Informations de la machine virtuelle

Nom de la VM (Hostname)
PS C:\Users\Administrator> hostname
SRV-XX
hostname : WIN-3RSSC2K52KK

Adresse IPv4 statique

L'adresse IP configurée: 10.7.237.201

Masque de sous-réseau : 255.255.254.0

Passerelle par défaut : 10.7.237.1

Serveur DNS : 10.7.237.3

Vérification de la configuration réseau

La commande suivante a été utilisée :

PS C:\Users\Administrator> ipconfig /all

Windows IP Configuration

   Host Name . . . . . . . . . . . . : SRV-XX
   Primary Dns Suffix  . . . . . . . :
   Node Type . . . . . . . . . . . . : Hybrid
   IP Routing Enabled. . . . . . . . : No
   WINS Proxy Enabled. . . . . . . . : No

Ethernet adapter Ethernet 2:

   Media State . . . . . . . . . . . : Media disconnected
   Connection-specific DNS Suffix  . :
   Description . . . . . . . . . . . : QLogic BCM5709C Gigabit Ethernet (NDIS VBD Client) #48
   Physical Address. . . . . . . . . : F4-CE-46-85-F4-3E
   DHCP Enabled. . . . . . . . . . . : No
   Autoconfiguration Enabled . . . . : Yes

Ethernet adapter vEthernet (External):

   Connection-specific DNS Suffix  . :
   Description . . . . . . . . . . . : Hyper-V Virtual Ethernet Adapter
   Physical Address. . . . . . . . . : F4-CE-46-85-F4-3C
   DHCP Enabled. . . . . . . . . . . : No
   Autoconfiguration Enabled . . . . : Yes
   Link-local IPv6 Address . . . . . : fe80::b874:a016:d808:9e69%12(Preferred)
   IPv4 Address. . . . . . . . . . . : 10.7.237.7(Preferred)
   Subnet Mask . . . . . . . . . . . : 255.255.254.0
   Default Gateway . . . . . . . . . : 10.7.237.1
   DHCPv6 IAID . . . . . . . . . . . : 334810694
   DHCPv6 Client DUID. . . . . . . . : 00-01-00-01-31-BA-1F-97-F4-CE-46-85-F4-3C
   DNS Servers . . . . . . . . . . . : 10.7.237.3
   NetBIOS over Tcpip. . . . . . . . : Enabled

   PS C:\Users\Administrator> ping 10.7.237.3

Pinging 10.7.237.3 with 32 bytes of data:
Reply from 10.7.237.3: bytes=32 time<1ms TTL=128
Reply from 10.7.237.3: bytes=32 time<1ms TTL=128
Reply from 10.7.237.3: bytes=32 time<1ms TTL=128
Reply from 10.7.237.3: bytes=32 time<1ms TTL=128

Ping statistics for 10.7.237.3:
    Packets: Sent = 4, Received = 4, Lost = 0 (0% loss),
Approximate round trip times in milli-seconds:
    Minimum = 0ms, Maximum = 0ms, Average = 0ms

    PS C:\Users\Administrator> ping google.ca

Pinging google.ca [142.250.139.94] with 32 bytes of data:
Reply from 142.250.139.94: bytes=32 time=5ms TTL=110
Reply from 142.250.139.94: bytes=32 time=3ms TTL=110
Reply from 142.250.139.94: bytes=32 time=3ms TTL=110
Reply from 142.250.139.94: bytes=32 time=3ms TTL=110

Ping statistics for 142.250.139.94:
    Packets: Sent = 4, Received = 4, Lost = 0 (0% loss),
Approximate round trip times in milli-seconds:
    Minimum = 3ms, Maximum = 5ms, Average = 3ms

    PS C:\Users\Administrator> query user
 USERNAME              SESSIONNAME        ID  STATE   IDLE TIME  LOGON TIME
>administrator         rdp-tcp#1           1  Active          .  2026-06-25 1:43 PM
PS C:\Users\Administrator>

    
