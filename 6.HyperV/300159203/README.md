Création d'une Machine Virtuelle sous Hyper-V
1-Objectif du Laboratoire
L'objectif est de créer, configurer et démarrer de manière automatisée une machine virtuelle Windows Server 2022 fonctionnelle sous l'hyperviseur **Hyper-V**. 
Le déploiement est ciblé pour s'exécuter de manière stable sur l'architecture matérielle physique du laboratoire (serveurs de génération **HP ProLiant DL360 G6**).


2-Spécifications de la Machine Virtuelle

Pour ce laboratoire, nous configurons une machine virtuelle de Génération 1 afin de garantir une stabilité maximale sur les processeurs de nos serveurs physiques HP G6. 
Au niveau des ressources, nous lui attribuons 2 cœurs de processeur (vCPUs) pour une exécution fluide et 4 GB de mémoire RAM fixe, en désactivant la mémoire dynamique pour ne pas fragmenter l'hôte. Pour le stockage, nous créons un disque dur virtuel VHDX de 60 GB adapté au système Windows Server 2022. Enfin, la carte réseau est rattachée au commutateur virtuel `External` pour lui donner un accès à Internet.
Étape 1 : Récupération de l'ISO d'installation
<img width="1273" height="664" alt="1" src="https://github.com/user-attachments/assets/7b58195b-ecec-4360-aadc-bce1f1a1805f" />
Étape 2 : Préparation du Rôle Hyper-V sur le Serveur Hôte
nous avons configuré notre serveur hôte physique (`SRV-GROUPE3`). À l'aide de l'assistant d'ajout de rôles et fonctionnalités (*Add Roles and Features Wizard*) du **Gestionnaire de serveur (Server Manager)**, nous avons installé le rôle **Hyper-V** ainsi que l'ensemble des outils d'administration distants associés (le module Hyper-V pour Windows PowerShell et les outils de gestion graphique GUI). 
L'installation s'est terminée avec succès et j ai redemarer le systeme
<img width="2048" height="1536" alt="5e6cb14f-967f-4f01-89be-fb9c2b67f53a" src="https://github.com/user-attachments/assets/4868d1e7-4b43-4a39-a044-046ed2cfe796" />
Étape 3 : Création du Répertoire Étudiant
nous avons ouvert une invite de commande Windows PowerShell en mode Administrateur pour préparer notre espace de stockage. Nous avons exécuté la commande suivante afin de créer un dossier nominatif dédié sur le lecteur `E:` pour y accueillir nos futurs fichiers et disques virtuels
<img width="2048" height="1536" alt="99b65ae8-ea9b-4fb7-add7-092a52a08c0b" src="https://github.com/user-attachments/assets/fa09ac19-ab7d-4b39-b423-6fd87572eaeb" />
etap 4 Récupération et Validation Locale de l'ISO
Une fois le dossier étudiant créé et le fichier ISO disponible sur notre machine locale, nous nous sommes positionnés dans notre répertoire de téléchargement (`C:\Users\sahra\Downloads`) pour initier le transfert vers le serveur.
Nous avons utilisé la commande sécurisée `scp` pour pousser le fichier vers le serveur de destination (`10.7.237.24`) :
<img width="1536" height="2048" alt="image" src="https://github.com/user-attachments/assets/e5444333-b587-4189-82f0-4d805e85f4e9" />


