Rapport de laboratoire – Création d'une machine virtuelle Windows Server 2022 avec Hyper-V

Objectif
L'objectif de ce laboratoire était de créer une machine virtuelle Windows Server 2022 à l'aide d'Hyper-V et d'un fichier ISO téléchargé depuis Azure Education. La machine virtuelle devait être configurée avec les caractéristiques suivantes :
•	Génération 1 
•	4 Go de mémoire RAM fixe 
•	2 processeurs virtuels 
•	Disque dur virtuel de 60 Go 
•	Connexion au commutateur réseau External 

Étape 1 – Téléchargement du fichier ISO
Le fichier ISO de Windows Server 2022 a été téléchargé à partir du portail Azure Education puis enregistré dans le dossier personnel :
D:\ISO\300157606\


Étape 2 – Création de la machine virtuelle
La machine virtuelle a été créée avec PowerShell en utilisant la commande New-VM.
Configuration utilisée :
•	Nom : VM300157606
•	Génération : 1 
•	Mémoire : 4 Go 
•	Disque virtuel : 60 Go 
•	Réseau : External 



Étape 3 – Configuration de la machine virtuelle
Après sa création, la machine virtuelle a été configurée avec les paramètres suivants :
•	2 processeurs virtuels 
•	Mémoire dynamique désactivée 
•	Montage du fichier ISO dans le lecteur DVD virtuel 

Étape 4 – Installation de Windows Server 2022
La machine virtuelle a ensuite été démarrée dans Hyper-V afin de lancer l'installation de Windows Server 2022 à partir du fichier ISO.


Étape 5 – Fin de l'installation
Une fois l'installation terminée, le système d'exploitation a démarré correctement et Server Manager s'est ouvert automatiquement.


Étape 6 – Vérification de la configuration
Pour vérifier que la machine virtuelle respectait les exigences du laboratoire, les commandes PowerShell suivantes ont été utilisées :
•	Get-VM 
•	Get-VMMemory 
•	Get-VMProcessor 
•	Get-VMHardDiskDrive 
•	Get-VMNetworkAdapter 
Résultats obtenus
Paramètre	Valeur
Nom	VM300157606
État	Running
Génération	1
Mémoire RAM	4 Go
Mémoire dynamique	Désactivée
Processeurs	2
Disque virtuel	60 Go
Réseau	External

Conclusion
Ce laboratoire m'a permis d'apprendre à créer et à configurer une machine virtuelle Windows Server 2022 avec Hyper-V en utilisant PowerShell. Toutes les exigences ont été respectées, notamment l'utilisation d'un fichier ISO provenant d'Azure Education, la création d'une machine virtuelle de génération 1, l'attribution de 4 Go de mémoire fixe, de 2 processeurs, d'un disque virtuel de 60 Go et d'une connexion au réseau External. Après l'installation du système, les vérifications effectuées avec PowerShell ont confirmé que la machine virtuelle était correctement configurée et pleinement fonctionnelle.

Captures d’écran
Les captures ajoutées à la fin du rapport montrent :

Rapport de laboratoire – Création d'une machine virtuelle Windows Server 2022 avec Hyper-V
Objectif
L'objectif de ce laboratoire était de créer une machine virtuelle Windows Server 2022 à l'aide d'Hyper-V et d'un fichier ISO téléchargé depuis Azure Education. La machine virtuelle devait être configurée avec les caractéristiques suivantes :
•	Génération 1 
•	4 Go de mémoire RAM fixe 
•	2 processeurs virtuels 
•	Disque dur virtuel de 60 Go 
•	Connexion au commutateur réseau External 

Étape 1 – Téléchargement du fichier ISO
Le fichier ISO de Windows Server 2022 a été téléchargé à partir du portail Azure Education puis enregistré dans le dossier personnel :
D:\ISO\300157606\
Étape 2 – Création de la machine virtuelle
La machine virtuelle a été créée avec PowerShell en utilisant la commande New-VM.
Configuration utilisée :
•	Nom : VM300157606
•	Génération : 1 
•	Mémoire : 4 Go 
•	Disque virtuel : 60 Go 
•	Réseau : External 



Étape 3 – Configuration de la machine virtuelle
Après sa création, la machine virtuelle a été configurée avec les paramètres suivants :
•	2 processeurs virtuels 
•	Mémoire dynamique désactivée 
•	Montage du fichier ISO dans le lecteur DVD virtuel 

Étape 4 – Installation de Windows Server 2022
La machine virtuelle a ensuite été démarrée dans Hyper-V afin de lancer l'installation de Windows Server 2022 à partir du fichier ISO.


Étape 5 – Fin de l'installation
Une fois l'installation terminée, le système d'exploitation a démarré correctement et Server Manager s'est ouvert automatiquement.




Étape 6 – Vérification de la configuration
Pour vérifier que la machine virtuelle respectait les exigences du laboratoire, les commandes PowerShell suivantes ont été utilisées :
•	Get-VM 
•	Get-VMMemory 
•	Get-VMProcessor 
•	Get-VMHardDiskDrive 
•	Get-VMNetworkAdapter 
Résultats obtenus
Paramètre	Valeur
Nom	VM300157606
État	Running
Génération	1
Mémoire RAM	4 Go
Mémoire dynamique	Désactivée
Processeurs	2
Disque virtuel	60 Go
Réseau	External

Conclusion
Ce laboratoire m'a permis d'apprendre à créer et à configurer une machine virtuelle Windows Server 2022 avec Hyper-V en utilisant PowerShell. Toutes les exigences ont été respectées, notamment l'utilisation d'un fichier ISO provenant d'Azure Education, la création d'une machine virtuelle de génération 1, l'attribution de 4 Go de mémoire fixe, de 2 processeurs, d'un disque virtuel de 60 Go et d'une connexion au réseau External. Après l'installation du système, les vérifications effectuées avec PowerShell ont confirmé que la machine virtuelle était correctement configurée et pleinement fonctionnelle.

Captures d’écran
Les captures ajoutées à la fin du rapport montrent :

Rapport de laboratoire – Création d'une machine virtuelle Windows Server 2022 avec Hyper-V
Objectif
L'objectif de ce laboratoire était de créer une machine virtuelle Windows Server 2022 à l'aide d'Hyper-V et d'un fichier ISO téléchargé depuis Azure Education. La machine virtuelle devait être configurée avec les caractéristiques suivantes :
•	Génération 1 
•	4 Go de mémoire RAM fixe 
•	2 processeurs virtuels 
•	Disque dur virtuel de 60 Go 
•	Connexion au commutateur réseau External 

Étape 1 – Téléchargement du fichier ISO
Le fichier ISO de Windows Server 2022 a été téléchargé à partir du portail Azure Education puis enregistré dans le dossier personnel :
D:\ISO\300157606\
Étape 2 – Création de la machine virtuelle
La machine virtuelle a été créée avec PowerShell en utilisant la commande New-VM.
Configuration utilisée :
•	Nom : VM300157606
•	Génération : 1 
•	Mémoire : 4 Go 
•	Disque virtuel : 60 Go 
•	Réseau : External 



Étape 3 – Configuration de la machine virtuelle
Après sa création, la machine virtuelle a été configurée avec les paramètres suivants :
•	2 processeurs virtuels 
•	Mémoire dynamique désactivée 
•	Montage du fichier ISO dans le lecteur DVD virtuel 

Étape 4 – Installation de Windows Server 2022
La machine virtuelle a ensuite été démarrée dans Hyper-V afin de lancer l'installation de Windows Server 2022 à partir du fichier ISO.


Étape 5 – Fin de l'installation
Une fois l'installation terminée, le système d'exploitation a démarré correctement et Server Manager s'est ouvert automatiquement.




Étape 6 – Vérification de la configuration
Pour vérifier que la machine virtuelle respectait les exigences du laboratoire, les commandes PowerShell suivantes ont été utilisées :
•	Get-VM 
•	Get-VMMemory 
•	Get-VMProcessor 
•	Get-VMHardDiskDrive 
•	Get-VMNetworkAdapter 
Résultats obtenus
Paramètre	Valeur
Nom	VM300157606
État	Running
Génération	1
Mémoire RAM	4 Go
Mémoire dynamique	Désactivée
Processeurs	2
Disque virtuel	60 Go
Réseau	External

Conclusion
Ce laboratoire m'a permis d'apprendre à créer et à configurer une machine virtuelle Windows Server 2022 avec Hyper-V en utilisant PowerShell. Toutes les exigences ont été respectées, notamment l'utilisation d'un fichier ISO provenant d'Azure Education, la création d'une machine virtuelle de génération 1, l'attribution de 4 Go de mémoire fixe, de 2 processeurs, d'un disque virtuel de 60 Go et d'une connexion au réseau External. Après l'installation du système, les vérifications effectuées avec PowerShell ont confirmé que la machine virtuelle était correctement configurée et pleinement fonctionnelle.

Captures d’écran
Les captures ajoutées à la fin du rapport montrent :

<img width="4000" height="3000" alt="20260721_131610" src="https://github.com/user-attachments/assets/a4aba2af-d898-46ac-b556-a84dbbe3f583" />

<img width="4000" height="3000" alt="20260721_134902" src="https://github.com/user-attachments/assets/adfa5548-f401-4fdf-8a53-a65040951fa7" />

<img width="4000" height="3000" alt="20260721_141500" src="https://github.com/user-attachments/assets/bacb971a-21f6-4f44-8010-f00beae7fc5e" />

<img width="4000" height="3000" alt="20260721_141921" src="https://github.com/user-attachments/assets/20f162fc-5545-46b1-ab07-bb0f8817a09f" />

<img width="4000" height="3000" alt="20260721_142018" src="https://github.com/user-attachments/assets/a3e68cce-fff5-4ec4-bb67-6fa0ad593f2b" />

<img width="4000" height="3000" alt="20260721_142925" src="https://github.com/user-attachments/assets/5021ee34-1441-46c2-b369-6cf13d1c16d9" />

<img width="4000" height="3000" alt="20260721_143036" src="https://github.com/user-attachments/assets/29d3016a-7688-40ba-a1d0-d295897c897c" />

<img width="4000" height="3000" alt="20260721_143346" src="https://github.com/user-attachments/assets/562eff16-ca52-424f-aed5-660a738e4161" />

<img width="4000" height="3000" alt="20260721_143416" src="https://github.com/user-attachments/assets/7c3a3302-1cf9-4897-92fd-135d36b4996c" />

