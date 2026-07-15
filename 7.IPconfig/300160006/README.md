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
![images alt](https://github.com/CollegeBoreal/INF1092-201-26E-01/blob/fe66d3e79e92383e6819c55ff31926dc153839fe/7.IPconfig/300160006/images/WhatsApp%20Image%202026-07-14%20at%2017.20.42%20(3).jpeg)
![images alt](https://github.com/CollegeBoreal/INF1092-201-26E-01/blob/48bb177762dd21bd211754e7bec580f91a3317be/7.IPconfig/300160006/images/WhatsApp%20Image%202026-07-14%20at%2017.20.42%20(5).jpeg)
![images alt](https://github.com/CollegeBoreal/INF1092-201-26E-01/blob/0d43b7fb60d310e30301b8bb50cfe3c4b2ee3a1e/7.IPconfig/300160006/images/WhatsApp%20Image%202026-07-14%20at%2017.20.42%20(6).jpeg)
![images alt](https://github.com/CollegeBoreal/INF1092-201-26E-01/blob/54c043353c7d7d755c6175b950148413595f2575/7.IPconfig/300160006/images/WhatsApp%20Image%202026-07-14%20at%2017.20.42%20(7).jpeg)

Enfin, j'ai établi une connexion à distance à la machine virtuelle avec Remote Desktop (mstsc). Les différents tests ont confirmé que la configuration réseau et l'accès à distance étaient correctement configurés et pleinement fonctionnels.
![images alt](https://github.com/CollegeBoreal/INF1092-201-26E-01/blob/de03299d9bc0559ac6e94a2d616e452f0c751dab/7.IPconfig/300160006/images/WhatsApp%20Image%202026-07-14%20at%2017.20.43.jpeg)
![images alt](https://github.com/CollegeBoreal/INF1092-201-26E-01/blob/257e747a7fbc5589b31d91e8f0feb607267c80cd/7.IPconfig/300160006/images/WhatsApp%20Image%202026-07-14%20at%2017.20.43%20(1).jpeg)
![images alt](https://github.com/CollegeBoreal/INF1092-201-26E-01/blob/9cc4ca7501deb7e16bb605dadba1bb8645f2c13c/7.IPconfig/300160006/images/WhatsApp%20Image%202026-07-14%20at%2017.20.43%20(2).jpeg)
![images alt](https://github.com/CollegeBoreal/INF1092-201-26E-01/blob/6a36e12df985e8a4a602e380897761399187ecfd/7.IPconfig/300160006/images/WhatsApp%20Image%202026-07-14%20at%2017.20.43%20(3).jpeg)
![images alt](https://github.com/CollegeBoreal/INF1092-201-26E-01/blob/840954ad87fe757a449269172d0c4cb5887dc694/7.IPconfig/300160006/images/WhatsApp%20Image%202026-07-14%20at%2017.20.43%20(4).jpeg)
