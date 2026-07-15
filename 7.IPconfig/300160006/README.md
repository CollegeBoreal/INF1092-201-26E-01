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
![images alt](https://github.com/CollegeBoreal/INF1092-201-26E-01/blob/61e9e4a64495d32b09470ac9b0c9d3200043733c/7.IPconfig/300160006/images/WhatsApp%20Image%202026-07-14%20at%2017.20.41%20(1).jpeg)
![images alt](https://github.com/CollegeBoreal/INF1092-201-26E-01/blob/60f3d41af33a883ac851b61aadced9539c58832e/7.IPconfig/300160006/images/WhatsApp%20Image%202026-07-14%20at%2017.20.42.jpeg)
![images alt](https://github.com/CollegeBoreal/INF1092-201-26E-01/blob/0005e3304ff4767dca8ac7a8e35fef5e8e8a6573/7.IPconfig/300160006/images/WhatsApp%20Image%202026-07-14%20at%2017.20.42%20(1).jpeg)
![images alt](https://github.com/CollegeBoreal/INF1092-201-26E-01/blob/efbf6eef6402b06d03377b8dd9f9bfa9363bb6f1/7.IPconfig/300160006/images/WhatsApp%20Image%202026-07-14%20at%2017.20.42%20(2).jpeg)

Par la suite, j'ai testé la connectivité réseau en utilisant des commandes ping vers la passerelle, Internet et un nom de domaine afin de m'assurer que la configuration était correcte. J'ai ensuite activé le Bureau à distance (RDP), configuré les règles du pare-feu nécessaires et vérifié que le service fonctionnait correctement.

Enfin, j'ai établi une connexion à distance à la machine virtuelle avec Remote Desktop (mstsc). Les différents tests ont confirmé que la configuration réseau et l'accès à distance étaient correctement configurés et pleinement fonctionnels.

