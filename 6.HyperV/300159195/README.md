## TOUADJNI ISLEM ##
# Création et configuration d’une machine virtuelle Windows Server 2022 avec Hyper-V
## Introduction

Dans ce laboratoire, j’ai créé et configuré une machine virtuelle Windows Server 2022 à l’aide de Microsoft Hyper-V.

La machine virtuelle a été configurée avec les paramètres suivants :

- *Numéro d’étudiant :* 300159195
- Nom de la machine virtuelle : VM300159195
- Génération : 1
- Mémoire RAM : 4 Go
- Mémoire dynamique : désactivée
- Nombre de processeurs : 2
- Disque virtuel : 60 Go
- Réseau : commutateur virtuel externe
- Système d’exploitation : Windows Server 2022 Datacenter avec expérience de bureau

## 1. Premier démarrage de Windows Server 2022 :

Cette image montre le premier démarrage réussi de Windows Server 2022 dans la machine virtuelle VM300159195.
Le Gestionnaire de serveur s’est ouvert automatiquement, ce qui confirme que l’installation du système d’exploitation a été terminée avec succès.
La fenêtre de détection du réseau apparaît également. J’ai autorisé la détection du PC sur le réseau du laboratoire afin de permettre les communications réseau nécessaires.

<img width="1346" height="1142" alt="Capture d’écran 2026-07-14 181456" src="https://github.com/user-attachments/assets/47a25f65-aecc-4e9c-b21e-7018e7384452" />

## 2. Préparation de Windows Server

Cette image montre la phase de préparation de Windows Server après le démarrage de la machine virtuelle.
Le système charge les fichiers nécessaires et prépare l’environnement avant d’afficher l’assistant d’installation ou la première ouverture de session.

<img width="1087" height="1155" alt="Capture d’écran 2026-07-14 180704" src="https://github.com/user-attachments/assets/261ffef2-7f28-49bd-bc2e-707c8131ba4e" />

## 3. Sélection du disque d’installation

Cette image montre le disque virtuel créé pour la machine virtuelle.
Le disque Lecteur 0 possède une capacité totale de 60 Go et apparaît comme espace non alloué.
J’ai sélectionné ce disque comme emplacement d’installation de Windows Server 2022. Windows crée ensuite automatiquement les partitions nécessaires.

<img width="1130" height="1166" alt="Capture d’écran 2026-07-14 175901" src="https://github.com/user-attachments/assets/9ad5b1c9-4274-49d3-bcef-a599bc63675d" />

## 4. Sélection de l’édition de Windows Server 2022

Cette image montre les différentes éditions de Windows Server 2022 disponibles dans le fichier ISO.
J’ai sélectionné :
Windows Server 2022 Datacenter (expérience de bureau)
Cette version comprend l’interface graphique complète de Windows, ce qui permet d’utiliser le Bureau, le Gestionnaire de serveur et les outils d’administration graphiques.

<img width="1143" height="1193" alt="Capture d’écran 2026-07-14 175815" src="https://github.com/user-attachments/assets/759cf3fb-ade6-4298-be03-2e02c45fae3d" />

## 5. Configuration de la langue et du clavier

Cette image montre la configuration initiale de la langue de Windows Server.
Les options suivantes ont été sélectionnées :

- Langue à installer : Français (France)
- Format horaire et monétaire : Français (France)
- Clavier ou méthode d’entrée : Français

Ces paramètres permettent d’installer Windows Server avec une interface française.

<img width="1140" height="1162" alt="Capture d’écran 2026-07-14 175632" src="https://github.com/user-attachments/assets/b596615d-5d05-4907-885f-8179bc7103f7" />

## 6. Vérification de la configuration de la machine virtuelle

Cette image présente les résultats des commandes PowerShell utilisées pour vérifier la configuration de la machine virtuelle.
Les éléments suivants ont été vérifiés :

- La machine virtuelle porte le nom VM300159195
- La mémoire dynamique est désactivée
- La mémoire de démarrage est de 4096 Mo, soit 4 Go
- Le nombre de processeurs virtuels est de 2
- Le disque virtuel est connecté au contrôleur IDE
- Le fichier ISO de Windows Server 2022 est monté dans le lecteur DVD virtuel
- La carte réseau de la VM est connectée au commutateur virtuel externe

Cette vérification confirme que la machine virtuelle respecte les paramètres demandés dans le laboratoire

<img width="846" height="862" alt="Capture d’écran 2026-07-14 175152" src="https://github.com/user-attachments/assets/e4cb86a4-af6a-4336-b9ca-0dd60b5dca6c" />

## 7. Configuration des ressources de la machine virtuelle

Cette image montre les commandes PowerShell utilisées pour configurer les ressources de la machine virtuelle.
La commande suivante a été utilisée pour attribuer deux processeurs virtuels :

```powershell
Set-VMProcessor -VMName $vm -Count 2
La mémoire dynamique a été désactivée avec la commande suivante :
Set-VMMemory -VMName $vm -DynamicMemoryEnabled $false
Le fichier ISO de Windows Server 2022 a ensuite été monté dans le lecteur DVD virtuel avec la commande :
Set-VMDvdDrive `
    -VMName $vm `
    -ControllerNumber 1 `
    -ControllerLocation 0 `
    -Path $iso
Les commandes de vérification confirment que la mémoire de démarrage est de 4 Go, que la VM possède 2 CPU et que le fichier ISO est correctement monté.

<img width="912" height="873" alt="Capture d’écran 2026-07-14 175046" src="https://github.com/user-attachments/assets/48ce6c99-9e3b-42b5-bfaf-a33c75edc577" />

## 8. Création des dossiers ISO et VM

Cette image montre la création des dossiers nécessaires pour organiser les fichiers du laboratoire.
Les variables suivantes ont été définies :

powershell
$studentId = "300159195"
$vm = "VM$studentId"
$isoFolder = "E:\ISO\$studentId"
$vmFolder = "E:\VMs\$vm"

Les dossiers ont ensuite été créés avec les commandes :
Les chemins créés sont :
Dossier du fichier ISO : E:\ISO\300159195
Dossier de la machine virtuelle : E:\VMs\VM300159195
La commande Test-Path retourne True pour les deux dossiers, ce qui confirme qu’ils ont été créés correctement.

<img width="927" height="885" alt="Capture d’écran 2026-07-14 174047" src="https://github.com/user-attachments/assets/ccde525b-1f98-4f6f-b98a-a2916631d4f7" />



## Conclusion

La machine virtuelle VM300159195 a été créée et configurée avec succès dans Hyper-V.

Les étapes réalisées sont les suivantes :

- Création des dossiers de travail
- Création de la machine virtuelle
- Configuration de la génération 1
- Attribution de 4 Go de mémoire RAM fixe
- Attribution de 2 processeurs virtuels
- Création d’un disque virtuel de 60 Go
- Connexion au commutateur réseau externe
- Montage du fichier ISO de Windows Server 2022
- Sélection de Windows Server 2022 Datacenter avec expérience de bureau
- Installation du système d’exploitation
- Premier démarrage réussi de Windows Server 2022

La machine virtuelle est maintenant fonctionnelle et prête pour les prochaines étapes de configuration réseau et d’administration.










