300153404
# Rapport d’atelier — Préparation d’un serveur physique

Dans le cadre de cet atelier, nous avons procédé à la préparation d’un serveur physique et à l’installation de son système d’exploitation. Cette étape était essentielle avant de pouvoir automatiser sa configuration à l’aide de l’Infrastructure as Code.

## 1. Préparation et inspection du matériel

Avant d’effectuer les manipulations logicielles, nous avons inspecté le serveur afin de vérifier son état général et la présence de ses principales composantes :

* les processeurs;
* la mémoire vive (RAM);
* les disques de stockage;
* les blocs d’alimentation;
* les ventilateurs et le système de refroidissement.

Nous avons ensuite raccordé les périphériques nécessaires :

* un écran;
* un clavier;
* une souris;
* les câbles d’alimentation;
* le câble réseau.

Cette vérification permet de confirmer que le serveur est complet et prêt à être démarré.

### Image 1 — Présentation du serveur

<img width="1200" height="1600" alt="615308705-395f580f-9f01-4871-aee9-cc17667b62ae" src="https://github.com/user-attachments/assets/37eab3ff-2f34-4410-bb2b-0ee71f6c0e10" />

Cette image présente le serveur physique utilisé pendant l’atelier. Avant son ouverture, nous avons vérifié son état extérieur ainsi que la présence des connecteurs et des composants amovibles.

### Image 2 — Ouverture et inspection du serveur

<img width="1536" height="2048" alt="WhatsApp Image 2026-07-29 at 2 05 35 PM" src="https://github.com/user-attachments/assets/2791c760-46b4-4397-a1e4-de9fea4019dd" />

Nous avons ouvert le boîtier afin d’examiner les composants internes du serveur. Cette inspection nous a permis de repérer les disques, les barrettes de mémoire RAM, les processeurs, les ventilateurs et les blocs d’alimentation.

### Image 3 — Vérification des disques

<img width="2048" height="1536" alt="619141038-a39ccd92-e795-4c31-8f30-d6da183da8c1" src="https://github.com/user-attachments/assets/04f05554-9de6-4289-aaf7-c630b29cc82d" />

Nous avons vérifié la présence et le positionnement des disques dans les baies de stockage. Les disques doivent être correctement insérés afin d’être détectés par le contrôleur RAID et par le système d’exploitation.

### Image 4 — Vérification de la mémoire RAM

<img width="1536" height="2048" alt="619141556-e6482158-098d-4c14-8ac1-94c9ff32160f" src="https://github.com/user-attachments/assets/1ac12df4-27c0-46c0-9cbc-a0ec4d2b2ca8" />

Cette image montre la vérification visuelle et physique de la quantité de mémoire RAM installée sur la carte mère. Nous avons compté les barrettes présentes et vérifié qu’elles étaient correctement fixées dans leurs emplacements.
### Image 5 — les blocks d'alimentation (PSU)

<img width="1536" height="2048" alt="619140769-75d5f81a-b254-4e57-9ebe-8eb78a582827" src="https://github.com/user-attachments/assets/cc1967d7-d722-4d6b-ba2a-e3c1820458e9" />

### Image 6 — Préparation des câbles de connexion
<img width="1200" height="694" alt="619142651-e8da5230-968e-4d8a-b484-8df0ecc53671" src="https://github.com/user-attachments/assets/c528f6ef-3962-4ba6-a721-fed076850ffc" />

Cette image présente les câbles nécessaires pour raccorder le serveur à ses périphériques. Nous avons préparé deux câbles VGA pour la connexion à un écran ainsi que les câbles d’alimentation. Ces branchements permettent d’afficher l’interface du serveur et de fournir l’énergie nécessaire à son démarrage.

## 2. Démarrage et accès au serveur

Après avoir terminé l’inspection matérielle, nous avons mis le serveur sous tension. Le démarrage s’est effectué correctement et nous avons pu accéder à son interface de gestion.

Nous avons utilisé les identifiants requis pour ouvrir une session, puis nous avons accédé aux paramètres du BIOS/UEFI. Cette interface permet notamment de vérifier les composants détectés et de modifier l’ordre de démarrage.

<img width="2040" height="942" alt="WhatsApp Image 2026-07-29 at 2 03 42 PM" src="https://github.com/user-attachments/assets/a7e68206-f13d-4b10-bd17-ebd8e7715b0d" />
<img width="2040" height="942" alt="WhatsApp Image- 2026-07-29 at 2 03 42 PM" src="https://github.com/user-attachments/assets/53b9bd52-4580-4d5a-97ae-34d16901685b" />


## 3. Documentation de l’atelier

Les photographies enregistrées dans le dossier `images/` permettent de documenter les principales étapes de l’atelier :

* l’identification du serveur;
* l’ouverture du boîtier;
* l’inspection des composants;
* la vérification des disques et de la mémoire RAM;
* le démarrage du serveur;
* l’accès au BIOS/UEFI;


## Conclusion

Cet atelier m’a permis de mieux comprendre les différentes étapes nécessaires à la préparation d’un serveur physique. J’ai appris à reconnaître et à vérifier ses principales composantes, à accéder au BIOS/UEFI.

Le serveur est maintenant prêt pour les prochaines étapes du projet.

