Rapport – Création d'une machine virtuelle Windows Server 2022 avec Hyper-V
Étudiant : Salhi Oualid
Numéro étudiant : 300156534
Cours : INF1092
Groupe : 2
Laboratoire : Création d'une machine virtuelle Hyper-V
________________________________________
Objectif
L'objectif du laboratoire était de créer une machine virtuelle Windows Server 2022 fonctionnelle dans Hyper-V en utilisant un fichier ISO téléchargé depuis Azure Education. La machine virtuelle devait respecter les spécifications suivantes :
•	Génération 1 
•	4 Go de mémoire RAM fixe 
•	2 processeurs 
•	Disque dur virtuel de 60 Go 
•	Réseau connecté au commutateur External 

Étape 1 – Téléchargement de l'ISO
Le fichier ISO de Windows Server 2022 a été téléchargé depuis le portail Azure Education et enregistré dans le dossier personnel suivant :
D:\ISO\300156534\

Capture 1 – ISO téléchargé
<img width="870" height="402" alt="image" src="https://github.com/user-attachments/assets/51a4c994-95d1-4a19-9f17-2ac5d43d1087" />
Description :
Cette image montre le fichier ISO de Windows Server 2022 enregistré dans le dossier associé à mon numéro étudiant.
Étape 2 – Création de la machine virtuelle
La machine virtuelle a été créée avec PowerShell à l'aide de la commande New-VM.
Configuration utilisée :
•	Nom : VM300156534 
•	Génération : 1 
•	Mémoire : 4 Go 
•	Disque virtuel : 60 Go 
•	Réseau : External 

Capture 2 – Création de la VM
 <img width="870" height="402" alt="image" src="https://github.com/user-attachments/assets/833e79af-7aac-48f0-89cd-61167e6ca3dd" />

Description :
Cette capture confirme la création de la machine virtuelle VM300156534.

Étape 3 – Configuration de la VM
Après la création de la machine virtuelle, les paramètres suivants ont été configurés :
•	2 processeurs virtuels 
•	Mémoire dynamique désactivée 
•	Montage du fichier ISO dans le lecteur DVD virtuel 
Capture 3 – Configuration PowerShell
 <img width="870" height="402" alt="image" src="https://github.com/user-attachments/assets/2c2fc440-3208-47b3-94a9-d6a69220d0e6" />

Description :
Cette image montre la configuration des ressources matérielles de la machine virtuelle ainsi que le montage du fichier ISO.

Étape 4 – Installation de Windows Server 2022
La machine virtuelle a été démarrée avec Hyper-V et l'installation de Windows Server 2022 a commencé automatiquement à partir du fichier ISO.

Capture 4 – Installation de Windows Server
 <img width="870" height="1883" alt="image" src="https://github.com/user-attachments/assets/f73abead-e654-4f0f-8e05-35b774102334" />

Description :
Cette capture montre le démarrage de l'installation de Windows Server 2022 à partir du fichier ISO.

Étape 5 – Installation terminée
Une fois l'installation terminée, Windows Server 2022 a démarré correctement et Server Manager s'est ouvert automatiquement.
Capture 5 – Server Manager
 <img width="870" height="402" alt="image" src="https://github.com/user-attachments/assets/4757d7fc-81e2-4335-be70-162557eb112e" />

Description :
Cette image confirme que Windows Server 2022 est installé avec succès et que la machine virtuelle est opérationnelle.

Étape 6 – Vérification de la configuration
Les commandes PowerShell suivantes ont été utilisées pour vérifier la configuration de la machine virtuelle :
•	Get-VM 
•	Get-VMMemory 
•	Get-VMProcessor 
•	Get-VMHardDiskDrive 
•	Get-VMNetworkAdapter 
Les résultats obtenus sont :
Paramètre	Valeur
Nom	VM300156534
État	Running
Génération	1
RAM	4 Go
Mémoire dynamique	Désactivée
CPU	2
Disque	60 Go
Réseau	External

Capture 6 – Vérification PowerShell
<img width="870" height="402" alt="image" src="https://github.com/user-attachments/assets/eb71f6e8-671d-45dd-9ce1-500fd7be4cdb" />
 
Description :
Cette capture confirme que la machine virtuelle respecte toutes les exigences du laboratoire.

Conclusion
Ce laboratoire m'a permis de créer et de configurer une machine virtuelle Windows Server 2022 dans Hyper-V à l'aide de PowerShell. Toutes les exigences ont été respectées : utilisation d'un ISO téléchargé depuis Azure Education, création d'une VM de génération 1, configuration de 4 Go de mémoire fixe, de 2 processeurs, d'un disque virtuel de 60 Go et d'une connexion au réseau External. Après l'installation du système d'exploitation, les commandes de vérification ont confirmé que la machine virtuelle est fonctionnelle et conforme aux consignes du laboratoire.


