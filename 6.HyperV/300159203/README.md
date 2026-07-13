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
Afin d'assurer le bon fonctionnement de notre serveur OpenSSH sur l'hôte, nous avons configuré le fichier de configuration système
<img width="1536" height="2048" alt="c264e9b2-4d9e-43fb-a0e4-f7e3db90dbb8" src="https://github.com/user-attachments/assets/c8916405-d46f-403f-92fc-798cc1754d93" />
<img width="1536" height="2048" alt="aa4f8bb0-34da-4802-abf3-758793fbabd4" src="https://github.com/user-attachments/assets/718a712f-ff72-45c0-bf23-4a8851b7857a" />
Une fois cette étape validée, nous avons exécuté une commande de vérification dans PowerShell pour s'assurer que le fichier ISO était intact et correctement placé dans notre dossier sur le serveur Le retour de la commande étant True, nous avons validé la présence du fichier et avons initialisé nos variables PowerShell ($vm et $iso) pour préparer le script de déploiement de la machine virtuelle.
<img width="1536" height="2048" alt="925fa218-3fc2-4bcc-97d5-56bf1c3bc3b0" src="https://github.com/user-attachments/assets/c776a610-00c5-4c3b-96f1-07c583f5a32f" />
<img width="1536" height="2048" alt="43a0ee22-f7bf-4950-9969-d0018bf52029" src="https://github.com/user-attachments/assets/d5dbd82a-aabc-4751-9d46-3a5ac34983ce" />
<img width="1536" height="2048" alt="ec9f40f1-b027-4381-85e8-e9d0ecbde876" src="https://github.com/user-attachments/assets/098b192c-bf0b-49b0-91a1-f5b60bdaf274" />
Pour automatiser la création de la machine virtuelle tout en respectant les exigences strictes du laboratoire, nous avons utilisé des commandes PowerShell spécifiques. Nous avons d'abord identifié le commutateur réseau virtuel externe disponible à l'aide de Get-VMSwitch.
Ensuite, nous avons exécuté la commande de création suivante en lui passant nos variables ainsi que les paramètres de ressources requis (Génération 1, 4 GB de RAM fixe, et un disque dur virtuel VHDX de 60 GB
Une fois la machine virtuelle générée avec succès, nous avons procédé à des vérifications de contrôle dans le terminal :
L'exécution de Get-VMMemory a validé que la mémoire dynamique était bien désactivée (False) avec une allocation fixe de 4 GB.
L'exécution de Get-VMProcessor a quant à elle confirmé la bonne prise en compte de la configuration des processeurs virtuels indispensables au bon fonctionnement de notre environnement Windows Server 2022.
etap finale:
<img width="2048" height="1536" alt="299d91b8-71db-4018-804d-44939eae3092" src="https://github.com/user-attachments/assets/0644b464-28db-4952-ab7a-d6d6fabd4e1a" />
Dès l'ouverture de la console virtuelle, la machine a booté correctement sur notre image ISO.
<img width="2048" height="1536" alt="90074cfe-9a3d-4f23-8475-fd0d9e6780f8" src="https://github.com/user-attachments/assets/0f01cbba-ba9e-46da-91c1-083cdafbe518" />
Après avoir sélectionné l'installation personnalisée et ciblé notre disque virtuel de 60 GB, le processus d'écriture s'est déclenché. Le programme d'installation a validé l'étape de copie des fichiers et a poursuivi de manière autonome la Préparation des fichiers pour l'installation.
<img width="1536" height="2048" alt="639dfc33-6097-4ea1-86ec-0788b325e595" src="https://github.com/user-attachments/assets/2970b400-0a9d-42cd-a78f-4c718b960331" />
Au terme du processus d'installation et après le redémarrage automatique de la machine virtuelle, le système a affiché l'écran des paramètres de personnalisation. Nous avons défini et confirmé le mot de passe de sécurité complexe destiné à protéger le compte local principal du serveur
<img width="2048" height="1536" alt="a71d775e-9e59-4761-aff1-d7127141c174" src="https://github.com/user-attachments/assets/bc1b7902-86e0-41ed-8b11-4bb33f545136" />
instalation de windows sur la VM reussie


Vérification:
<img width="1177" height="1600" alt="52ccfccf-5cd3-4451-a547-b28dd3d4c8fa" src="https://github.com/user-attachments/assets/ee2f40bf-3bc9-4340-be3b-88a882533e5e" />



