Compte rendu – Installation d’un disque NVMe
Étudiant : 300159203
🎯 Objectif
L’objectif était d’ajouter de l’espace disque à un serveur HP DL360 G6 en installant un disque NVMe 1TB via un adaptateur PCIe/NVMe, puis de le rendre disponible sous Windows Server 2022 Datacenter.
Vérification du serveur
Le serveur HP DL360 G6 démarre correctement

Windows Server 2022 Datacenter est installé et fonctionnel

Le matériel essentiel (CPU, RAM, réseau Ethernet) est stable

Serveur prêt pour l’ajout du NVMe
<img width="2048" height="1536" alt="aaa" src="https://github.com/user-attachments/assets/75815931-0b10-486f-9f40-5a9ae9edb107" />
Installation d’un adaptateur PCIe → NVMe compatible avec le G6

Insertion du NVMe 1TB dans l’adaptateur

Démarrage du serveur et détection du matériel

Vérification dans Device Manager
<img width="2048" height="1536" alt="bb" src="https://github.com/user-attachments/assets/528989a0-592b-4499-850d-17443f6d800a" />
<img width="1170" height="654" alt="aa" src="https://github.com/user-attachments/assets/a0fe55d1-d809-4690-8c3e-5e91a0b690de" />
<img width="1536" height="2048" alt="cc" src="https://github.com/user-attachments/assets/39f70d70-e9f6-421c-958e-ebd55e2ddb4b" />
Ouverture de Disk Management

Initialisation du disque en GPT

Création d’un volume simple

Formatage en NTFS

Vérification de la capacité : 1TB disponible


✔️ Disque prêt à l’utilisation
<img width="2048" height="1536" alt="ff" src="https://github.com/user-attachments/assets/90a7f532-d4fc-4d6c-8016-5c4e440ddc7c" />
<img width="2048" height="1536" alt="ee" src="https://github.com/user-attachments/assets/9ddab298-a761-4d1a-9d99-101010cb8377" />
<img width="2048" height="1536" alt="gg" src="https://github.com/user-attachments/assets/0e44d236-3968-4527-b346-77fc0fe969b5" />
