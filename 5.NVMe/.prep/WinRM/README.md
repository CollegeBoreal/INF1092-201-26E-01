# 🔧 Bloc 1 — Préparer le serveur pour l’administration distante

```powershell
Enable-PSRemoting
```

✅ Active PowerShell Remoting (WinRM)  
→ Permet de gérer le serveur à distance (Invoke-Command, Enter-PSSession)

✔ Concrètement :

* démarre le service WinRM
* ouvre le firewall
* autorise connexions PowerShell distantes

👉 Indispensable pour automatisation (Ansible, scripts, lab multi‑VM)

***

```powershell
Enable-WSManCredSSP -Role server -Force
```

✅ Active **CredSSP côté serveur**

👉 Permet la **délégation des credentials** (double hop)

✔ Utile quand :

* tu fais du remote → puis accès réseau (ex: SMB, AD)
* scénarios Hyper‑V, scripts multi-machines

⚠️ Attention :

* Moins sécurisé que Kerberos
* À utiliser en lab / contrôlé

***

***

# 🔐 Bloc 2 — Autoriser un hôte distant spécifique

```powershell
Set-Item WSMan:\localhost\Client\TrustedHosts -Value "10.7.237.27"
```

✅ Ajoute une machine comme **Trusted Host**

👉 Permet connexions WinRM **sans Kerberos** (ex: workgroup, IP directe)

✔ Ici :

* autorise la machine `10.7.237.27` à se connecter

***

# ⚠️ Important (sécurité)

* Ce réglage contourne certaines protections d’authentification
* Utiliser :
  * en labo ✅
  * ou avec HTTPS / réseau sécurisé

***

# 🧠 Vue d’ensemble (très important pour ton contexte labo)

👉 Ton script fait en réalité :

1. Active remote management (PS + WinRM)
2. Active délégation d’identifiants (CredSSP)
3. Redémarre
4. Autorise un client distant spécifique

➡️ En résumé :

> tu prépares un **host administrable à distance**

***

# ⚡ TL;DR

* `Enable-PSRemoting` → accès distant PowerShell
* `Enable-WSManCredSSP` → double hop auth
* `TrustedHosts` → autorise connexion depuis IP donnée

