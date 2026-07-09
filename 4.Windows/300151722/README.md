Rapport d'atelier - Installation de Windows Server 2022 DataCenter

ID : 300151722

Nom : Islam Oustani

Projet : 4.Windows

Cours : INF1092-201-E26-01

Situation

Dans ce laboratoire, nous avons installé Windows Server 2022 DataCenter sur un serveur HP DL360 G6.
L’objectif était de préparer le serveur, vérifier le matériel, démarrer l’installation et configurer les paramètres de base après l’installation.


##<< Vérification du matériel avant l’installation >>##

Avant de commencer l’installation, j’ai vérifié les composants principaux du serveur.

Le serveur est bien assemblé.
Les CPU sont installés.
La mémoire RAM est présente.
Les ventilateurs sont en place.
Les blocs d’alimentation sont connectés.
Le câble réseau est branché.
L’écran et le clavier sont connectés.

Cette étape permet d’éviter les erreurs pendant l’installation de Windows Server.

Cette photo montre le démarrage du serveur, Cette étape sert à vérifier l’état des disques et du RAID avant de continuer l’installation.
On voit aussi une erreur GRUB rescue, ce qui montre que le serveur essaie de démarrer sur un ancien système ou un mauvais périphérique. Il faut donc choisir le bon démarrage, comme PXE ou une clé USB bootable, pour installer Windows Server correctement.
<img width="1600" height="1204" alt="1 (1)" src="https://github.com/user-attachments/assets/1d172a78-0af9-45f2-b34a-f7787eb21928" />
<img width="1600" height="1204" alt="1 (2)" src="https://github.com/user-attachments/assets/e12f7051-1120-4253-9286-ab701b168ff3" />

Configuration RAID
Cette étape sert à préparer le stockage avant l’installation de Windows Server.
<img width="1600" height="1204" alt="WhatsApp Image 2026-06-09 at 23 14 14 (2)" src="https://github.com/user-attachments/assets/594ee3bf-b327-40a6-a269-94aaba1c4249" />
<img width="1600" height="1204" alt="WhatsApp Image 2026-06-09 at 23 14 14 (1)" src="https://github.com/user-attachments/assets/d264d0a2-1c2e-4bc4-a975-57567da473e6" />
<img width="1600" height="1204" alt="WhatsApp Image 2026-06-09 at 23 14 12" src="https://github.com/user-attachments/assets/10b7f2eb-79ce-476b-b11c-df8c6c640c1e" />

Choix de l’installation
Cette étape sert à sélectionner Windows Server 2022 pour commencer l’installation du serveur.
<img width="1600" height="1204" alt="WhatsApp Image 2026-06-09 at 23 14 14 (4)" src="https://github.com/user-attachments/assets/4950b674-01bd-4b85-a202-82c7d0e50b2d" />

Installation de Windows Server

Cette photo montre les étapes d’installation de Windows Server 2022. On choisit d’abord la version de Windows Server, puis le disque où installer le système. Cette étape sert à lancer l’installation du système d’exploitation sur le serveur.
<img width="1600" height="1204" alt="WhatsApp Image 2026-06-09 at 23 14 15 (1)" src="https://github.com/user-attachments/assets/0f073df2-4b57-4cb6-8d1a-d520741c581a" />
<img width="1600" height="1204" alt="WhatsApp Image 2026-06-09 at 23 14 14 (6)" src="https://github.com/user-attachments/assets/6cac0b8d-eb86-43ac-a238-2971d5765e8a" />
<img width="1600" height="1204" alt="WhatsApp Image 2026-06-09 at 23 14 13" src="https://github.com/user-attachments/assets/2c409c39-8b81-4b3a-afc6-f260dce3a4b8" />

Installation et première configuration
On voit que les fichiers du système sont copiés et préparés pour l’installation.
Ensuite, La première configuration après l’installation. Cette étape sert à choisir le pays, la langue et le clavier avant d’utiliser Windows Serve
<img width="1600" height="1204" alt="WhatsApp Image 2026-06-09 at 23 14 15 (2)" src="https://github.com/user-attachments/assets/94f26cfb-b6f8-4300-bdc7-7104e84f6295" />
<img width="1204" height="1600" alt="WhatsApp Image 2026-06-09 at 23 14 15 (3)" src="https://github.com/user-attachments/assets/c98f9332-0e39-416b-ae6a-dc3a9d6b0e4d" />

Connexion au service d’installation
On entre le nom d’utilisateur et le mot de passe pour accéder à l’installation de Windows Server par le réseau.
<img width="1600" height="1204" alt="WhatsApp Image 2026-06-09 at 23 14 15" src="https://github.com/user-attachments/assets/bbc44a51-dbe3-4a16-9cdb-e2a49eb8d4f7" />

Fin de l’installation
Cette photo montre que Windows Server 2022 Datacenter est installé correctement. Le bureau Windows est affiché, donc l’installation est terminée et le serveur fonctionne.

<img width="5120" height="3840" alt="WhatsApp Image 2026-06-16 at 15 23 30" src="https://github.com/user-attachments/assets/30266a40-8673-402b-8bf8-d438b586ea6b" />
