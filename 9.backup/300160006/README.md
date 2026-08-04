# 300160006
#     Laboratoire Backup : Sauvegarde et restauration d'une machine virtuelle Hyper-V avec PowerShell
# Objectif du laboratoire:
L’objectif de ce laboratoire était d’apprendre à sauvegarder et restaurer une machine virtuelle Hyper-V à l’aide de PowerShell.
J’ai utilisé les commandes d’exportation et d’importation afin de créer une copie de sauvegarde d’une machine virtuelle et de pouvoir la récupérer en cas de problème.
#     Étape 1 : Vérification des machines virtuelles disponibles

Avant de commencer la sauvegarde, j’ai vérifié les machines virtuelles présentes sur le serveur Hyper-V.
Commande utilisée :
Get-VM
Cette commande permet d’afficher la liste des machines virtuelles disponibles ainsi que leur état.
Résultat : la machine virtuelle à sauvegarder a été identifiée.
#   Étape 2 : Arrêt de la machine virtuelle avant la sauvegarde

Avant d’effectuer l’exportation, j’ai arrêté la machine virtuelle afin d’éviter des problèmes de cohérence des données pendant la sauvegarde.
Commande utilisée :
Stop-VM -Name "VM300160006"
L’arrêt de la VM permet de garantir que les fichiers de la machine virtuelle sont dans un état stable.
Résultat : la machine virtuelle est passée à l’état Off.

#  Étape 3 : Création du dossier de sauvegarde

J’ai créé un dossier destiné à recevoir les fichiers de sauvegarde de la machine virtuelle.
Exemple :
New-Item -Path "D:\Backups\HyperV" -ItemType Directory
Ce dossier contientra les fichiers nécessaires pour restaurer la machine virtuelle.
![images alt](https://github.com/CollegeBoreal/INF1092-201-26E-01/blob/adaefb58705c495e26e6b2346c1a34ee2a40d5cb/9.backup/300160006/images/WhatsApp%20Image%202026-08-04%20at%2013.42.38.jpeg)
#   Étape 4 : Exportation de la machine virtuelle

J’ai effectué la sauvegarde de la VM avec la commande Export-VM.
Commande utilisée :
Export-VM -Name "VM300160006" -Path "D:\Backups\HyperV"
Cette commande copie tous les éléments nécessaires de la machine virtuelle :
la configuration de la VM ;
le disque virtuel .vhdx ;
les fichiers nécessaires au fonctionnement d’Hyper-V.
Résultat : un dossier contenant la sauvegarde de la VM a été créé.
![images alt](https://github.com/CollegeBoreal/INF1092-201-26E-01/blob/3b6fc9445c39c6fdab0fc069e7619e4d6e8a0897/9.backup/300160006/images/WhatsApp%20Image%202026-08-04%20at%2013.42.38%20(1).jpeg)
 #   Étape 5 : Vérification des fichiers sauvegardés

J’ai vérifié que les fichiers d’exportation étaient bien présents dans le dossier de sauvegarde.
Commande utilisée :
dir D:\Backups\HyperV -Recurse
Les fichiers importants obtenus sont :
.vhdx : disque dur virtuel de la machine ;.vmcx : fichier de configuration Hyper-V.
Résultat : la sauvegarde de la VM est disponible.
![images alt](https://github.com/CollegeBoreal/INF1092-201-26E-01/blob/e10962f0bff5af4b6e1bb5f8b000dbeaf4701a97/9.backup/300160006/images/WhatsApp%20Image%202026-08-04%20at%2013.42.38%20(5).jpeg)
#  Étape 6 : Vérification avant restauration

Avant d’importer la machine virtuelle, j’ai vérifié les informations de la sauvegarde.
Commande utilisée :
Compare-VM -Path "D:\Backups\HyperV\VM300160006\Virtual Machines\GUID.vmcx"
Cette commande permet de vérifier si la machine virtuelle peut être restaurée correctement sur le serveur Hyper-V.

# Étape 7 : Importation de la machine virtuelle

J’ai restauré la machine virtuelle à partir du fichier de sauvegarde.
Commande utilisée :
Import-VM -Path "D:\Backups\HyperV\VM300160006\Virtual Machines\GUID.vmcx"
L’importation permet de recréer la machine virtuelle dans Hyper-V avec sa configuration et ses fichiers.

# Étape 8 : Importation comme nouvelle copie

Comme la machine virtuelle originale existait déjà, j’ai importé la sauvegarde comme une copie avec un nouvel identifiant.
Commande utilisée :
Import-VM -Path "D:\Backups\HyperV\VM300160006\Virtual Machines\GUID.vmcx" -Copy -GenerateNewId
Cette option évite les conflits entre la VM originale et la VM restaurée.
Résultat : une nouvelle machine virtuelle a été créée.

# Étape 9 : Vérification de la restauration

J’ai vérifié que la machine virtuelle restaurée apparaissait bien dans Hyper-V.
Commande utilisée :
Get-VM
Résultat : la VM restaurée apparaît dans la liste des machines virtuelles.
![images alt](https://github.com/CollegeBoreal/INF1092-201-26E-01/blob/ab46c4cc3118847cb514a531b18db084278d8e41/9.backup/300160006/images/WhatsApp%20Image%202026-08-04%20at%2013.42.38%20(1).jpeg)
![images alt](https://github.com/CollegeBoreal/INF1092-201-26E-01/blob/7f33e9255a6bb78311e50528691a4bd60d431afe/9.backup/300160006/images/WhatsApp%20Image%202026-08-04%20at%2013.42.38%20(3).jpeg)
![images alt](https://github.com/CollegeBoreal/INF1092-201-26E-01/blob/b781ada338811708bac626c346e845ea7b59f609/9.backup/300160006/images/WhatsApp%20Image%202026-08-04%20at%2013.42.38%20(5).jpeg)
