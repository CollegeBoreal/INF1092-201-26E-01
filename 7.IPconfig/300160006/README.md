# 300160006
 ```
 New-NetIPAddress `
-InterfaceAlias "Ethernet" `
-IPAddress 10.7.237.228 `
-PrefixLength 23 `
-DefaultGateway 10.7.237.1
```
# description
L'objectif de ce laboratoire était de configurer le réseau d'une machine virtuelle Windows Server 2022 et d'activer l'accès à distance. J'ai d'abord vérifié le nom de la machine ainsi que sa configuration réseau, puis j'ai configuré une adresse IP statique, le masque de sous-réseau, la passerelle par défaut et le serveur DNS à l'aide des commandes PowerShell.

Par la suite, j'ai testé la connectivité réseau en utilisant des commandes ping vers la passerelle, Internet et un nom de domaine afin de m'assurer que la configuration était correcte. J'ai ensuite activé le Bureau à distance (RDP), configuré les règles du pare-feu nécessaires et vérifié que le service fonctionnait correctement.

Enfin, j'ai établi une connexion à distance à la machine virtuelle avec Remote Desktop (mstsc). Les différents tests ont confirmé que la configuration réseau et l'accès à distance étaient correctement configurés et pleinement fonctionnels.

