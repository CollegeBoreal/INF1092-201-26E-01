Documentation – Création d’une machine virtuelle Windows Server 2022 avec Hyper-V
1. Présentation du projet

L’objectif de ce travail est de créer une machine virtuelle Windows Server 2022 fonctionnelle dans l’environnement Hyper-V. La machine virtuelle doit être configurée selon les exigences du laboratoire afin de permettre l’installation du système d’exploitation et son utilisation future.

La création de la VM comprend le téléchargement de l’image ISO, la configuration des ressources matérielles virtuelles et le démarrage de l’installation de Windows Server 2022.

2. Téléchargement de l’image ISO

La première étape consiste à récupérer l’image d’installation de Windows Server 2022 depuis le portail Azure Education fourni par l’établissement.

Après le téléchargement, le fichier ISO est enregistré dans un dossier personnel associé au numéro étudiant afin de garder une organisation claire et d’éviter les conflits avec les fichiers des autres étudiants.

L’image ISO sera ensuite utilisée comme support d’installation virtuel pour démarrer la machine virtuelle.

3. Création de la machine virtuelle dans Hyper-V

La machine virtuelle est créée à partir du gestionnaire Hyper-V.

Lors de la création, plusieurs paramètres matériels doivent être configurés :

Nom de la machine virtuelle

Un nom unique est attribué à la VM en utilisant le numéro étudiant.

Exemple :

VM300157733

Cela permet d’identifier facilement la machine dans l’environnement Hyper-V.

Génération de la machine virtuelle

La génération choisie est :

Génération 1 (GEN1)

Cette génération est obligatoire pour respecter les contraintes du laboratoire et assurer la compatibilité avec l’environnement matériel utilisé.

Mémoire vive (RAM)

La machine virtuelle reçoit :

4 Go de mémoire RAM

La mémoire dynamique est désactivée afin que la VM utilise une quantité fixe de mémoire pendant son fonctionnement.

Processeur virtuel

La VM est configurée avec :

2 processeurs virtuels

Cela permet d’offrir suffisamment de ressources pour l’installation et l’utilisation de Windows Server 2022.

Disque dur virtuel

Un disque virtuel est créé avec une capacité de :

60 Go

Ce disque contient le système d’exploitation Windows Server 2022 ainsi que les fichiers nécessaires au fonctionnement de la machine.

Connexion réseau

La VM est connectée à un commutateur virtuel externe.

Cette configuration permet à la machine virtuelle de communiquer avec le réseau physique et d’être utilisée comme un serveur réel dans l’environnement de laboratoire.

4. Ajout de l’image ISO à la machine virtuelle

Après la création de la VM, l’image ISO Windows Server 2022 est ajoutée comme support DVD virtuel.

Cette étape permet à la machine virtuelle de démarrer sur le fichier d’installation et de lancer le processus d’installation du système d’exploitation.

La VM est ensuite configurée pour utiliser ce support au démarrage.

5. Démarrage et installation de Windows Server 2022

Une fois la configuration terminée, la machine virtuelle est démarrée.

L’installation de Windows Server 2022 commence à partir de l’image ISO.

Les étapes principales sont :

Choisir la langue et les paramètres régionaux.
Sélectionner l’édition de Windows Server.
Accepter les conditions de licence.
Choisir le type d’installation.
Sélectionner le disque virtuel de 60 Go.
Attendre la copie des fichiers et l’installation du système.
Créer le compte administrateur.
6. Vérification de la machine virtuelle

Après l’installation, la VM est vérifiée afin de confirmer que la configuration respecte les exigences du laboratoire.

Les éléments vérifiés sont :

La machine virtuelle existe correctement dans Hyper-V.
Le système Windows Server 2022 démarre correctement.
La mémoire attribuée est de 4 Go.
Les deux processeurs virtuels sont présents.
Le disque virtuel possède une capacité de 60 Go.
Le réseau virtuel est correctement connecté.
7. Résultat obtenu

À la fin du travail, une machine virtuelle Windows Server 2022 fonctionnelle est disponible dans Hyper-V.

La VM respecte les paramètres demandés :

 ISO provenant d’Azure Education
 VM créée avec Hyper-V
 Génération 1
 4 Go de RAM fixe
 2 processeurs

 
 
 Dsque virtuel de 60 Go
 Réseau externe
 Installation de Windows Server 2022 réussie

Cette documentation correspond uniquement au premier devoir : création de la VM.
La partie configuration IP statique, DNS, passerelle et RDP sera documentée séparément.

<img width="1200" height="1600" alt="image" src="https://github.com/user-attachments/assets/63aa6f14-04b7-46b5-9dfc-f94007e2a640" />
<img width="1200" height="1600" alt="image" src="https://github.com/user-attachments/assets/5e6e80d4-3a15-45cc-9618-8b9a8919951b" />
<img width="1200" height="1600" alt="image" src="https://github.com/user-attachments/assets/9f8e1aa2-48d2-4309-a97a-5167cf3cb375" />
<img width="1200" height="1600" alt="image" src="https://github.com/user-attachments/assets/0be6739b-2f82-4cf4-a4e9-247df9af79c0" />
<img width="1200" height="1600" alt="image" src="https://github.com/user-attachments/assets/0146f531-82b2-4247-a657-75407ce37fb9" />
<img width="1200" height="1600" alt="image" src="https://github.com/user-attachments/assets/03feb817-a08d-4d54-9646-92f81d8dc0d0" />
<img width="1200" height="1600" alt="image" src="https://github.com/user-attachments/assets/e6f11640-a61d-4779-bad6-24f687c24645" />
<img width="1200" height="1600" alt="image" src="https://github.com/user-attachments/assets/545137a7-81b2-4fcc-a852-ad13e44ad523" />
<img width="1200" height="1600" alt="image" src="https://github.com/user-attachments/assets/732ad825-d006-4950-a7b8-e93229c2b7af" />
<img width="1600" height="1200" alt="image" src="https://github.com/user-attachments/assets/c29ff1b5-c49f-40e7-a825-f2d2a30a93e7" />
<img width="1200" height="1600" alt="image" src="https://github.com/user-attachments/assets/c4f5e19a-9814-4622-bb73-848cbf0a2335" />
<img width="1200" height="1600" alt="image" src="https://github.com/user-attachments/assets/07177fae-ee61-46f6-b8f4-feddcfd2d833" />










