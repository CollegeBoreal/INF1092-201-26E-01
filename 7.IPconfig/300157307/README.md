# README - Configuration réseau et activation de RDP

## Objectif

Configurer une adresse IP statique sur une machine virtuelle Windows Server, vérifier la connectivité réseau et activer le Bureau à distance (RDP).

---

## 1. Vérifier le nom de la VM

```powershell
hostname
```

---

## 2. Vérifier la configuration réseau

```powershell
Get-NetIPConfiguration
```

ou

```powershell
ipconfig /all
```

---

## 3. Configurer une adresse IP statique

Identifier l'interface réseau :

```powershell
Get-NetAdapter
```

Configurer l'adresse IP :

```powershell
New-NetIPAddress `
-InterfaceAlias "Ethernet" `
-IPAddress 10.7.237.213 `
-PrefixLength 23 `
-DefaultGateway 10.7.237.1
```

Configurer le serveur DNS :

```powershell
Set-DnsClientServerAddress `
-InterfaceAlias "Ethernet" `
-ServerAddresses 10.7.237.3
```

Vérifier :

```powershell
ipconfig
```

---

## 4. Tester la connectivité

Passerelle :

```powershell
ping 10.7.237.1
```

Internet :

```powershell
ping 8.8.8.8
```

DNS :

```powershell
ping google.ca
```

---

## 5. Activer le Bureau à distance (RDP)

Activer RDP :

```powershell
Set-ItemProperty `
-Path "HKLM:\System\CurrentControlSet\Control\Terminal Server" `
-Name "fDenyTSConnections" `
-Value 0
```

Autoriser le pare-feu :

```powershell
Enable-NetFirewallRule `
-DisplayGroup "Remote Desktop"
```

Vérifier que le port est ouvert :

```powershell
Test-NetConnection localhost -Port 3389
```

---

## 6. Vérifier le compte utilisateur

```powershell
whoami
```

ou

```powershell
Get-LocalUser
```

---

## 7. Tester la connexion RDP

Depuis un autre ordinateur :

* Ouvrir **mstsc**.
* Entrer l'adresse IP **10.7.237.213**.
* Se connecter avec le compte **Administrator**.

---

## 8. Vérifier la session RDP

```powershell
query user
```

---

## Conclusion

La machine virtuelle est configurée avec l'adresse IP **10.7.237.213**. La connectivité réseau a été vérifiée et le Bureau à distance (RDP) est activé, ce qui permet l'administration de la VM à distance.


<img width="308" height="191" alt="Capture d’écran 2026-07-21 133850" src="https://github.com/user-attachments/assets/a138098d-2891-4688-965a-776500417e52" />
<img width="842" height="512" alt="Capture d’écran 2026-07-21 134103" src="https://github.com/user-attachments/assets/71854600-4160-4121-9677-d61e54237187" />

