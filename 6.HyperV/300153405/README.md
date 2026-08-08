# Rapport d'atelier - Hyper-V
### ID : 300153405
### Nom : Rekaik Khaled 
### Projet : Hyper-V
### Cours : INF1092-201-E26-01

-----------------------------------------------------------------------------------------------------------------------------------

# Création et configuration d'une machine virtuelle Windows Server 2022 avec Hyper-V
Introduction

Dans ce laboratoire, j'ai créé et configuré une machine virtuelle Windows Server 2022 à l'aide de Microsoft Hyper-V sur Windows Server.

La machine virtuelle a été créée conformément aux exigences du laboratoire avec les paramètres suivants :

Numéro d'étudiant : 300153405
Nom de la machine virtuelle : VM300153405
Génération : 1
Mémoire RAM : 4 Go
Mémoire dynamique : Désactivée
Nombre de processeurs : 2
Disque virtuel : 60 Go (VHDX)
Commutateur réseau : External
Système d'exploitation : Windows Server 2022
## 1. Création et configuration de la machine virtuelle

<img width="1680" height="978" alt="1" src="https://github.com/user-attachments/assets/fd94ab82-fd93-4c27-9bc5-2b243084b32d" />

Cette capture d'écran montre les commandes PowerShell utilisées pour créer la machine virtuelle VM300153405.

Les paramètres configurés sont les suivants :

Génération 1
Mémoire de démarrage de 4 Go
Disque virtuel VHDX de 60 Go
Commutateur réseau External
Attribution de deux processeurs virtuels
Désactivation de la mémoire dynamique
Montage du fichier ISO de Windows Server 2022
Démarrage de la machine virtuelle

Cette étape permet de préparer entièrement la machine avant l'installation du système d'exploitation.


## 2. Vérification de la configuration de la machine virtuelle

<img width="1686" height="980" alt="2" src="https://github.com/user-attachments/assets/2a4873cf-fe90-437d-a930-b9c9652f1b8b" />

Cette image présente les résultats des commandes PowerShell utilisées pour vérifier la configuration de la machine virtuelle.

Les vérifications effectuées confirment que :

la machine virtuelle est Running;
la mémoire attribuée est de 4096 Mo (4 Go);
la mémoire dynamique est désactivée;
deux processeurs virtuels sont configurés;
le disque virtuel VHDX est correctement attaché;
le commutateur réseau utilisé est External.

Ces informations confirment que la configuration respecte les exigences du laboratoire.


## 3. Vérification du disque virtuel et du réseau

<img width="1686" height="985" alt="3" src="https://github.com/user-attachments/assets/daa53387-9eb0-48a7-9769-eead5101c63f" />

Cette capture présente la fin des commandes de vérification.

On peut notamment observer :

le disque virtuel situé dans :
D:\VMs\VM300153405\VM300153405.vhdx
le disque connecté au contrôleur IDE;
la carte réseau connectée au commutateur virtuel External.

Cette étape confirme que les ressources de stockage et le réseau sont correctement configurés.


## 4. Premier démarrage de Windows Server

Cette image montre le premier démarrage de la machine virtuelle.

<img width="2040" height="1536" alt="WhatsApp Image 2026-08-07 at 8 30 25 PM" src="https://github.com/user-attachments/assets/62a59667-99c6-440e-b419-516af5b27db9" />

L'écran de verrouillage de Windows Server apparaît, ce qui confirme que la machine virtuelle démarre correctement et que l'installation progresse normalement.


## 5. Chargement de Windows Server

Cette capture montre l'écran de démarrage de Windows Server.

<img width="2040" height="1536" alt="WhatsApp Image 2026-08-07 at 8 30 26 PM" src="https://github.com/user-attachments/assets/f2f7f9e6-6a73-4fc2-ae25-8500cf11f310" />

Le système charge les services nécessaires avant de poursuivre l'installation du système d'exploitation.

Cette étape confirme que la machine virtuelle démarre correctement à partir du fichier ISO monté précédemment.


## 6. Installation de Windows Server 2022

<img width="2040" height="1536" alt="WhatsApp Image 2026-08-07 at 8 30 27 PM" src="https://github.com/user-attachments/assets/389e689c-cd78-47ab-b939-54ee1019d379" />

Cette image montre l'installation de Windows Server 2022.

À cette étape, les fichiers d'installation sont copiés sur le disque virtuel et Windows prépare automatiquement le système.

Les différentes étapes comprennent :

copie des fichiers;
préparation de l'installation;
installation des fonctionnalités;
installation des mises à jour;
finalisation de l'installation.

Cette progression confirme que l'installation du système d'exploitation se déroule normalement.


# Conclusion

Au cours de ce laboratoire, j'ai créé et configuré avec succès une machine virtuelle Windows Server 2022 à l'aide de Microsoft HyperV.

Les principales étapes réalisées sont les suivantes :

création de la machine virtuelle VM300153405;
création d'un disque virtuel de 60 Go;
attribution de 4 Go de mémoire RAM fixe;
désactivation de la mémoire dynamique;
configuration de 2 processeurs virtuels;
connexion au commutateur réseau External;
montage du fichier ISO de Windows Server 2022;
démarrage de la machine virtuelle;
vérification complète de la configuration avec PowerShell;
lancement de l'installation de Windows Server 2022.

La machine virtuelle est correctement configurée et l'installation de Windows Server 2022 se déroule normalement. Elle est maintenant prête pour les prochains laboratoires portant sur l'administration et la configuration des services Windows Server.
