# Rapport de laboratoire – Installation d'un disque NVMe

## Introduction

Dans ce laboratoire, j'ai procédé à l'installation d'un disque **NVMe de 1 To** sur un serveur **HP DL360 G6** à l'aide d'un adaptateur **PCIe**. Après l'installation du matériel, le serveur a été démarré sous **Windows Server 2022 Datacenter** afin de vérifier que le disque était correctement détecté. Le disque a ensuite été initialisé, partitionné et formaté pour être prêt à l'utilisation. Enfin, plusieurs vérifications ont été réalisées afin de confirmer son bon fonctionnement.

## Objectif

L'objectif de ce laboratoire était d'installer et de configurer un disque **NVMe de 1 To** sur un serveur afin d'augmenter sa capacité de stockage et d'améliorer les performances du système.

## Déroulement du laboratoire

### Préparation du matériel

Avant de commencer l'installation, le serveur a été arrêté et débranché afin d'assurer une intervention sécuritaire. Une vérification de la compatibilité entre le serveur, l'adaptateur PCIe et le disque NVMe a également été effectuée.

### Installation du disque

Le disque NVMe a été installé sur l'adaptateur PCIe, puis l'ensemble a été inséré dans un emplacement d'extension du serveur. Après avoir fixé correctement les composants, le boîtier du serveur a été refermé et l'alimentation reconnectée.

### Vérification de la détection

Au redémarrage du serveur, une vérification a été effectuée dans le BIOS afin de confirmer que le disque NVMe était bien reconnu. Cette étape a permis de valider que l'installation physique avait été réalisée correctement.

### Configuration du disque

Une fois Windows Server 2022 Datacenter démarré, le nouveau disque a été initialisé à l'aide de l'outil de gestion des disques. Une partition a ensuite été créée et le disque a été formaté afin de pouvoir être utilisé pour le stockage des données.

### Validation

Pour terminer, plusieurs tests ont été réalisés afin de confirmer que le disque fonctionnait normalement. Sa présence a été vérifiée dans Windows et des opérations de lecture et d'écriture ont permis de valider son bon fonctionnement.

## Conclusion

Ce laboratoire m'a permis d'acquérir les connaissances nécessaires pour installer et configurer un disque NVMe sur un serveur HP DL360 G6. Les différentes étapes, de l'installation physique jusqu'à la configuration sous Windows Server, ont été réalisées avec succès. Le disque est maintenant pleinement fonctionnel et contribue à améliorer les capacités de stockage et les performances du serveur.

## Preuves d'installation

Les captures d'écran présentées dans ce rapport illustrent les principales étapes du laboratoire, notamment l'installation du disque NVMe, sa détection par le système, son initialisation, son partitionnement, son formatage ainsi que les vérifications finales confirmant son bon fonctionnement.
<img width="4032" height="1816" alt="626774279-9aa0c364-282e-406e-a5a3-8b25545f83d6" src="https://github.com/user-attachments/assets/b6a08fe9-197e-49f7-a295-53af4416ce3d" />
<img width="4032" height="1816" alt="626774082-a8d6e9b2-26e4-408e-9a8e-c248548a865e" src="https://github.com/user-attachments/assets/015fe2ab-9e01-4db0-9d0e-ce6bbaa7e183" />
<img width="454" height="325" alt="626773958-193ae2cd-0f44-4fe5-89be-955f080c7d6f" src="https://github.com/user-attachments/assets/8cae548a-f1cb-4cb2-af45-5b2319314718" />
<img width="455" height="313" alt="626773858-361cb062-cf9a-487d-8b7d-9d8439fcbcb3" src="https://github.com/user-attachments/assets/f3fa220b-888e-4dc8-8204-b4fdc67c812c" />
<img width="4000" height="3000" alt="626774821-0dfbedc7-b974-4d58-a841-88e3efdda6fe" src="https://github.com/user-attachments/assets/d017c83a-0edd-4502-8dae-632e36c1f5d6" />
<img width="4000" height="3000" alt="626774821-0dfbedc7-b974-4d58-a841-88e3efdda6fe (1)" src="https://github.com/user-attachments/assets/ed6f7fbe-55ae-4f96-bf3a-a4e96e7ff067" />
<img width="4032" height="1816" alt="626774493-d85aa2a3-3d2e-47b1-a6ed-2c75e1bd84c2" src="https://github.com/user-attachments/assets/ef814ab3-d803-4e05-87e7-9f78ebb35a5c" />
<img width="4032" height="1816" alt="626774414-6beb5018-70e9-4fcd-8057-333ec66ad0a7" src="https://github.com/user-attachments/assets/59982e1d-be29-4710-81ec-7be7d2ca6409" />
<img width="4032" height="1816" alt="626774344-ddaf2620-0258-4a27-9beb-c3c2b2324ac7" src="https://github.com/user-attachments/assets/34168d8d-f777-4a63-95d6-13d0c95de499" />

