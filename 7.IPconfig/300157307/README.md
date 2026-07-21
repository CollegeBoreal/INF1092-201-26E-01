# README

## Configuration de la VM

### Vérifier le nom de la VM

```powershell
hostname
```

### Vérifier la configuration réseau

```powershell
ipconfig /all
```

### Configurer l'adresse IP

* Adresse IP : **10.7.237.213**
* Masque : **255.255.254.0**
* Passerelle : **10.7.237.1**
* DNS : **10.7.237.3**

### Tester la connexion

```powershell
ping 10.7.237.1
ping 8.8.8.8
ping google.ca
```

### Activer le Bureau à distance (RDP)

```powershell
Enable-NetFirewallRule -DisplayGroup "Remote Desktop"
```

### Vérifier le port RDP

```powershell
Test-NetConnection localhost -Port 3389
```

## Résultat

 Adresse IP configurée : **10.7.237.213**
 Réseau fonctionnel
 RDP activé

 <img width="308" height="191" alt="Capture d’écran 2026-07-21 133850" src="https://github.com/user-attachments/assets/5232dd70-f23a-43b8-80ed-6d0ec25dc4f8" />

<img width="842" height="512" alt="Capture d’écran 2026-07-21 134103" src="https://github.com/user-attachments/assets/d7b27b88-e8f5-4fa5-8d62-7a1dc2d4b998" />


 
* ✅ La VM est accessible à distance

