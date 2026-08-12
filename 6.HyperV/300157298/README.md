Rapport de laboratoire – Création d’une VM Windows Server 2022
Objectif

Le but de ce laboratoire était de créer une machine virtuelle Windows Server 2022 avec Hyper-V à partir d’un fichier ISO téléchargé depuis Azure Education.

1. Téléchargement de l’ISO

Le fichier ISO de Windows Server 2022 a été téléchargé depuis Azure Education et enregistré dans :

D:\ISO\300157298\

2. Création de la VM

La machine virtuelle VM300157298 a été créée avec PowerShell à l’aide de la commande New-VM.

Configuration :

Génération 1
4 Go de RAM fixe
2 processeurs virtuels
Disque de 60 Go
Réseau External
3. Installation

Le fichier ISO a été monté dans le lecteur DVD virtuel, puis la VM a été démarrée afin d’installer Windows Server 2022. L’installation s’est terminée correctement et Server Manager s’est lancé.

4. Vérification

Les commandes suivantes ont permis de confirmer la configuration :

Get-VM
Get-VMMemory
Get-VMProcessor
Get-VMHardDiskDrive
Get-VMNetworkAdapter

Les résultats ont confirmé que tous les paramètres demandés étaient respectés.

Conclusion

Ce laboratoire m’a permis de pratiquer la création et la configuration d’une machine virtuelle Windows Server 2022 avec Hyper-V et PowerShell. La VM fonctionne correctement et respecte toutes les exigences du laboratoire.

Captures d’écran

Les captures montrent les différentes étapes de création, de configuration, d’installation et de vérification de la machine virtuelle.
