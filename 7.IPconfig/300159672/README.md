
# 300159672

```powershell
New-NetIPAddress `
-InterfaceAlias "Ethernet" `
-IPAddress 10.7.237.225 `
-PrefixLength 23 `
-DefaultGateway 10.7.237.1
```

## description

L'objectif de ce laboratoire était de configurer le réseau d'une machine virtuelle Windows Server 2022 et d'activer l'accès à distance. J'ai d'abord vérifié le nom de la machine ainsi que sa configuration réseau existante avec `hostname` et `Get-NetIPConfiguration`.

J'ai ensuite identifié l'interface réseau active, puis configuré une adresse IP statique (10.7.237.225), le masque de sous-réseau, la passerelle par défaut (10.7.237.1) ainsi que le serveur DNS (10.7.237.3) à l'aide des commandes PowerShell appropriées.

J'ai validé la connectivité réseau en testant la passerelle, l'accès Internet (8.8.8.8) et la résolution DNS (google.ca), confirmant que le routage et le DNS fonctionnaient correctement.

Enfin, j'ai activé le Bureau à distance en modifiant la clé de registre nécessaire et en autorisant les règles de pare-feu associées, puis j'ai vérifié que le port 3389 était bien à l'écoute avant d'établir avec succès une connexion RDP vers la machine virtuelle.

<img width="1002" height="527" alt="Capture d’écran 2026-08-04 à 18 11 36" src="https://github.com/user-attachments/assets/466bc86c-791b-4bb6-a3a6-c8231b27f11e" />


<img width="1512" height="982" alt="Capture d’écran 2026-07-30 à 19 15 38" src="https://github.com/user-attachments/assets/49c4cac1-c21f-4837-b8b3-e8bf3d6f7d38" />



<img width="1512" height="982" alt="Capture d’écran 2026-08-06 à 17 32 35" src="https://github.com/user-attachments/assets/b289b7d5-4351-46fe-8e87-93466633cd53" />

<img width="1316" height="918" alt="Capture d’écran 2026-08-06 à 17 42 06" src="https://github.com/user-attachments/assets/665c827a-b9e6-49a8-afe6-5c738700fef5" />


