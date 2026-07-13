# 🎋 HyperV

Windows Server 2022 Datacenter **n'installe pas Hyper‑V par défaut** après une installation standard. Hyper‑V est un **rôle Windows Server** que tu dois ajouter après l'installation de l'OS. [\[learn.microsoft.com\]](https://learn.microsoft.com/fr-fr/windows-server/virtualization/hyper-v/get-started/Install-Hyper-V), [\[infohub.de...logies.com\]](https://infohub.delltechnologies.com/en-us/l/end-to-end-single-node-deployment-microsoft-hci-solutions-from-dell-technologies-1/install-roles-and-features-69/)

### Vérifier si Hyper‑V est installé

```powershell
Get-WindowsFeature Hyper-V
```

Si tu vois :

```text
[X] Hyper-V
```

alors le rôle est installé.

***

### Installer Hyper‑V

```powershell
Install-WindowsFeature -Name Hyper-V -IncludeManagementTools -Restart
```

Microsoft indique que sur Windows Server, Hyper‑V s'installe comme un rôle via Server Manager ou PowerShell. [\[learn.microsoft.com\]](https://learn.microsoft.com/fr-fr/windows-server/virtualization/hyper-v/get-started/Install-Hyper-V), [\[gadgetsfeed.com\]](https://gadgetsfeed.com/how-to-enable-hyper-v/)

***

### Dans ton cas (lab G6)

Après une installation fraîche de Windows Server 2022 Datacenter, je fais généralement :

```powershell
Install-WindowsFeature Hyper-V -IncludeManagementTools -Restart
```

Puis je vérifie :

```powershell
Get-VMHost
```

Si la commande retourne les informations de l'hôte Hyper‑V, tout est prêt.

***

### Exception

Si tu installes **Microsoft Hyper‑V Server** (ancien produit gratuit, maintenant discontinué) ou une image déjà préparée par quelqu'un, Hyper‑V peut déjà être présent. Mais avec une ISO standard de **Windows Server 2022 Datacenter**, il faut ajouter le rôle manuellement. [\[learn.microsoft.com\]](https://learn.microsoft.com/fr-fr/windows-server/virtualization/hyper-v/get-started/Install-Hyper-V), [\[learn.micr...om.mcas.ms\]](https://learn.microsoft.com.mcas.ms/en-us/windows-server/virtualization/hyper-v/hyper-v-on-windows-server/)

### Vérification rapide sur tes G6

```powershell
Get-WindowsFeature Hyper-V | Select DisplayName, InstallState
```

Tu verras immédiatement quels serveurs ont déjà Hyper‑V d'installé.
