

***

# ✅ ✅ MÉTHODE 2 — SCP (si tu fais du DevOps / automatisation)

## 🔧 Étape 1 — Activer SSH sur Windows Server 

```powershell
Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0
```
```
Path          :
Online        : True
RestartNeeded : False
```


```powershell
Start-Service sshd
```
```
WARNING: Waiting for service 'OpenSSH SSH Server (sshd)' to start...
WARNING: Waiting for service 'OpenSSH SSH Server (sshd)' to start...
WARNING: Waiting for service 'OpenSSH SSH Server (sshd)' to start...
WARNING: Waiting for service 'OpenSSH SSH Server (sshd)' to start...
```

```powershell
Set-Service -Name sshd -StartupType Automatic
```

✔ Windows Server supporte SSH + SCP nativement [\[computingf...rgeeks.com\]](https://computingforgeeks.com/configure-openssh-server-on-windows-server/)

***

## 🔧 Étape 2 — Depuis le Mac (Terminal)

```bash
scp ~/Downloads/WindowsServer2022.iso Administrator@10.7.236.131:D:/ISO/(ton ID)
```

👉 format :

```
scp SOURCE user@IP:DESTINATION
```

✔ SCP permet de copier un fichier vers un serveur distant via SSH [\[bing.com\]](https://bing.com/search?q=scp+mac+to+windows+server+how+to+transfer+file+windows+open+ssh+server+windows+server+2022+scp)

---


## 🥋 Utilise des clés SSH au lieu du mot de passe.

Sur ta VM Linux :

> ssh-keygen -t ed25519 -C "inf1092-grading"


Accepte l'emplacement par défaut :

> ~/.ssh/id_ed25519


et pour l'automatisation, laisse le mot de passe vide.

Affiche ensuite la clé publique :

> cat ~/.ssh/id_ed25519.pub


Sur l'hôte Windows Hyper-V (10.7.237.7), connecte-toi une fois puis exécute :

```powershell
mkdir $env:ProgramData\ssh -Force
notepad $env:ProgramData\ssh\administrators_authorized_keys
```

Colle le contenu de id_ed25519.pub.

Puis applique les permissions :

```powershell
icacls "$env:ProgramData\ssh\administrators_authorized_keys" /inheritance:r
icacls "$env:ProgramData\ssh\administrators_authorized_keys" /grant "Administrators:F"
icacls "$env:ProgramData\ssh\administrators_authorized_keys" /grant "SYSTEM:F"
```

Redémarre OpenSSH :

```powershell
Restart-Service sshd
```

Test :

> ssh Administrator@10.7.237.7 hostname


Tu ne devrais plus avoir de demande de mot de passe.

Pour tes scripts INF1092, ça devient :

```bash
ssh Administrator@10.7.237.7 \
  'powershell -Command "(Get-VMNetworkAdapter -VMName ''VM300124366'').IPAddresses"'
```

ou même :

```bash
ssh Administrator@10.7.237.7 \
  'powershell Invoke-Command -VMName VM300124366 -ScriptBlock { hostname }'
```

sans aucune interaction humaine.

💡 Pour la correction automatisée de plusieurs VM étudiantes, les clés SSH + PowerShell Direct sur l'hôte Hyper-V sont probablement la solution la plus simple et robuste.

