# ⚡ INF1092 — Cheat Sheet PowerShell

***

## 🖥️ Config système (post-install)

```powershell
sconfig
hostname
systeminfo
```

***

## 💽 Disques & partitions

```powershell
Get-Disk
Get-Volume

New-Partition -DiskNumber 0 -UseMaximumSize -AssignDriveLetter
Format-Volume -DriveLetter E -FileSystem NTFS -NewFileSystemLabel DATA -Confirm:$false
```

***

## 👤 Utilisateurs & groupes

```powershell
# créer
New-LocalUser "user1" -Password (ConvertTo-SecureString "P@ss123!" -AsPlainText -Force)
Add-LocalGroupMember -Group "Administrators" -Member "user1"

# voir
Get-LocalUser
Get-LocalGroupMember Administrators

# supprimer
Remove-LocalUser user1
```

***

## 🔐 Permissions NTFS

```powershell
New-Item -ItemType Directory C:\data

icacls C:\data /grant user1:F
icacls C:\data /remove user1
icacls C:\data
```

***

## 🌐 Réseau

```powershell
Get-NetIPConfiguration
ipconfig /all

Test-Connection 8.8.8.8
Test-NetConnection google.com -Port 443
```

### IP statique

```powershell
New-NetIPAddress -InterfaceAlias "Ethernet" -IPAddress 192.168.1.10 -PrefixLength 24 -DefaultGateway 192.168.1.1
Set-DnsClientServerAddress -InterfaceAlias "Ethernet" -ServerAddresses 8.8.8.8
```

***

## 🔥 Pare-feu

```powershell
Get-NetFirewallRule

New-NetFirewallRule -DisplayName "RDP" -Direction Inbound -Protocol TCP -LocalPort 3389 -Action Allow
```

***

## 🖥️ RDP

```powershell
Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server' -Name "fDenyTSConnections" -Value 0

Enable-NetFirewallRule -DisplayGroup "Remote Desktop"
```

***

## ⚙️ Services

```powershell
Get-Service
Start-Service wuauserv
Stop-Service wuauserv
Restart-Service wuauserv
```

***

## 📦 Installation logiciels

```powershell
winget install git.git
winget install microsoft.visualstudiocode
winget list
```

***

## ⏱️ Automatisation (Task)

```powershell
schtasks /create /tn "Backup" /tr "powershell.exe -File C:\backup.ps1" /sc daily /st 12:00
```

***

## 📊 Monitoring

```powershell
Get-Process
Get-EventLog -LogName System -Newest 20
Get-ComputerInfo
```

***

## 🔄 Updates

```powershell
Install-Module PSWindowsUpdate -Force
Get-WindowsUpdate
Install-WindowsUpdate -AcceptAll -AutoReboot
```

***

## 💾 Backup

```powershell
wbadmin start backup -backupTarget:D: -include:C: -quiet
```

***

## 🧯 Restauration

```powershell
wbadmin get versions
wbadmin start recovery
```

***

## 💻 VM (Hyper-V)

```powershell
New-VM -Name "VM1" -MemoryStartupBytes 2GB -Generation 2
Set-VMDvdDrive -VMName "VM1" -Path "C:\ISO\win.iso"
Start-VM VM1
```

***

## 🧠 Concepts EXAM

* NTFS = permissions ✔
* GPO = contrôle centralisé
* Backup ≠ snapshot
* RAID ≠ backup
* Image = clone OS
* Automatisation = PowerShell + tâches

***

## ✅ Checklist LAB

```powershell
ipconfig
Test-Connection 8.8.8.8
Get-LocalUser
Get-Service
```

✔ OS OK  
✔ IP OK  
✔ RDP OK  
✔ Users OK  
✔ Permissions OK  
✔ Backup OK

***

## 🚨 Debug rapide

```powershell
whoami
hostname
systeminfo
Get-NetIPConfiguration
Test-NetConnection <IP> -Port 3389
```

***

Si tu veux pousser ça encore plus loin (très utile pour tes labs) :
👉 je peux te faire une **version “script complet de VM prête en 5 min”** (100% automatisée pour tes étudiants Proxmox/Hyper-V)
