Compte rendu : Installation d'un disque NVMe

Objectif

L'objectif de ce laboratoire était d'ajouter de l'espace de stockage à un serveur HP ProLiant DL360 G6 en installant un disque NVMe de 1 To à l'aide d'un adaptateur PCIe vers NVMe, puis de le rendre accessible sous Windows Server 2022 Datacenter.

Vérification du serveur

Avant l'installation, les vérifications suivantes ont été effectuées :

Le serveur HP DL360 G6 démarre correctement.
Windows Server 2022 Datacenter est installé et fonctionne normalement.
Le matériel essentiel (processeur, mémoire RAM et connexion réseau Ethernet) est opérationnel.
Le serveur est prêt pour l'installation du disque NVMe.
Installation du matériel

Les étapes suivantes ont été réalisées :

Installation d'un adaptateur PCIe vers NVMe compatible avec le serveur.
Insertion du disque NVMe de 1 To dans l'adaptateur.
Démarrage du serveur et détection automatique du nouveau matériel.
Vérification de la détection du disque dans le Gestionnaire de périphériques (Device Manager).
Configuration du disque

Une fois le disque détecté, les opérations suivantes ont été effectuées :

Ouverture de Disk Management (Gestion des disques).
Initialisation du disque au format GPT.
Création d'un volume simple.
Formatage du volume en NTFS.
Vérification de la capacité disponible (1 To).

Résultat
L'installation et la configuration du disque NVMe de 1 To ont été réalisées avec succès. Le disque est correctement reconnu par Windows Server 2022 Datacenter, formaté en NTFS et prêt à être utilisé pour le stockage de données.
