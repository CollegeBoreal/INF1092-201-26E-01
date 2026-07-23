Installation d'une machine virtuelle Windows Server 2022
Objectif

L'objectif de ce laboratoire était de créer une machine virtuelle Windows Server 2022 avec Hyper-V en utilisant les paramètres demandés par le professeur.

Comme j'utilise un MacBook, je me suis connecté à l'ordinateur du laboratoire à l'aide de Windows App, ce qui m'a permis d'utiliser Hyper-V pour réaliser toute l'installation.

Préparation du fichier ISO

J'ai téléchargé le fichier ISO de Windows Server 2022 depuis Azure Education avec mon compte étudiant.

Ensuite, j'ai créé un dossier portant mon numéro étudiant afin d'y enregistrer le fichier ISO :

E:\ISO\300159693

Avant de créer la machine virtuelle, j'ai vérifié avec PowerShell que le fichier ISO était bien présent.

Création de la machine virtuelle

J'ai créé une machine virtuelle nommée VM300159693 avec les paramètres suivants :

Paramètre	Configuration
Nom de la VM	VM300159693
Génération	1
Mémoire RAM	4 Go
Mémoire dynamique	Désactivée
Processeurs	2
Disque dur virtuel	60 Go
Réseau	External

Après la création de la VM, j'ai monté le fichier ISO dans le lecteur DVD virtuel avant de démarrer la machine.

Installation de Windows Server

J'ai démarré la machine virtuelle et le programme d'installation de Windows Server 2022 s'est lancé automatiquement.

J'ai choisi Installation personnalisée, sélectionné le disque virtuel de 60 Go, puis laissé Windows terminer l'installation.

À la fin, j'ai créé le mot de passe du compte Administrator et ouvert une session. Le Gestionnaire de serveur (Server Manager) s'est affiché correctement.

Vérifications

Une fois l'installation terminée, j'ai vérifié que :

la machine virtuelle se nomme VM300159693;
elle est de génération 1;
elle possède 4 Go de mémoire RAM;
la mémoire dynamique est désactivée;
elle utilise 2 processeurs;
le disque virtuel est de 60 Go;
le réseau est connecté au commutateur External;
Windows Server démarre correctement;
le compte Administrator fonctionne normalement.
Difficultés rencontrées

Au cours du laboratoire, j'ai rencontré quelques erreurs de syntaxe dans PowerShell, notamment lors de la création de la machine virtuelle et de la configuration du fichier ISO.

J'ai également dû corriger le chemin du fichier ISO et le nom du Virtual Switch avant que la machine virtuelle puisse être créée correctement. Après ces corrections, toutes les commandes ont fonctionné normalement.

Conclusion

Ce laboratoire m'a permis d'apprendre à créer une machine virtuelle avec Hyper-V et à installer Windows Server 2022.

Grâce à Windows App, j'ai pu accéder à l'ordinateur du laboratoire depuis mon MacBook, créer la machine virtuelle VM300159693, installer Windows Server et vérifier que le serveur fonctionnait correctement.

Captures d'écran

Les captures d'écran présentent les principales étapes du laboratoire :

Vérification de Git et préparation du dossier de travail.
Vérification du fichier ISO avec PowerShell.
Création de la machine virtuelle VM300159693.
Démarrage de la machine virtuelle.
Installation de Windows Server 2022.
Sélection de l'installation personnalisée.
Création du mot de passe du compte Administrator.
Ouverture du Gestionnaire de serveur.
Vérification du bon fonctionnement de la machine virtuelle.
<img width="1440" height="1080" alt="WhatsApp Image 2026-07-23 at 13 47 31" src="https://github.com/user-attachments/assets/a3f59026-4efd-4592-bf64-e3541b4b5ac7" />
<img width="1440" height="1080" alt="WhatsApp Image 2026-07-23 at 13 47 32" src="https://github.com/user-attachments/assets/2de1f946-97d7-4b09-b40d-0f2b0c9b1641" />
<img width="1600" height="1200" alt="WhatsApp Image 2026-07-23 at 13 46 49" src="https://github.com/user-attachments/assets/774ac668-9a45-49a9-b69f-0b4759193720" />
<img width="1080" height="1440" alt="WhatsApp Image 2026-07-23 at 13 47 42" src="https://github.com/user-attachments/assets/cc3a4426-dbcc-4844-a3a6-17fd64dfa6e4" />
<img width="1440" height="1080" alt="WhatsApp Image 2026-07-23 at 13 47 45" src="https://github.com/user-attachments/assets/49df4eab-6f35-46c3-9912-a5eb91336036" />
<img width="1600" height="1200" alt="WhatsApp Image 2026-07-23 at 13 47 51 (1)" src="https://github.com/user-attachments/assets/efa46113-6833-4383-a0c8-8efa0944d954" />
<img width="1440" height="1080" alt="WhatsApp Image 2026-07-23 at 13 47 56" src="https://github.com/user-attachments/assets/8c65e052-886e-4bd6-90ec-9a31dc36fc9d" />
<img width="1440" height="1080" alt="WhatsApp Image 2026-07-23 at 13 47 55" src="https://github.com/user-attachments/assets/97b9e1cd-1402-4faf-b1fb-0909a79a32aa" />
<img width="1200" height="1600" alt="WhatsApp Image 2026-07-23 at 13 47 33" src="https://github.com/user-attachments/assets/1f8d2d0d-6df8-451a-a22e-1e127200a008" />
<img width="1440" height="1080" alt="WhatsApp Image 2026-07-23 at 13 47 55" src="https://github.com/user-attachments/assets/1a78c6f6-19b5-408e-95e8-e18211258030" />
<img width="1600" height="1200" alt="WhatsApp Image 2026-07-23 at 13 48 08" src="https://github.com/user-attachments/assets/afa8d55a-95e5-4b2b-a04d-086cf19b3e14" />
<img width="1600" height="1200" alt="WhatsApp Image 2026-07-23 at 13 48 09" src="https://github.com/user-attachments/assets/5253aa72-7706-4d86-bd1b-6d7a91a753a1" />
<img width="1600" height="1200" alt="WhatsApp Image 2026-07-23 at 13 48 11" src="https://github.com/user-attachments/assets/46d3ff35-b56e-4085-b68d-fd81e5bbf38f" />
<img width="1600" height="1200" alt="WhatsApp Image 2026-07-23 at 13 48 14" src="https://github.com/user-attachments/assets/f216be72-841e-4ae6-b19d-de1408213f19" />
<img width="1440" height="1080" alt="WhatsApp Image 2026-07-23 at 13 48 15" src="https://github.com/user-attachments/assets/bc2b974a-bfc0-47ad-be46-c8570eafb3af" />
<img width="1600" height="1200" alt="WhatsApp Image 2026-07-23 at 13 47 09" src="https://github.com/user-attachments/assets/ed488c85-524a-4c5a-b7e2-e4c008a91496" />
<img width="1600" height="1200" alt="WhatsApp Image 2026-07-23 at 13 47 10" src="https://github.com/user-attachments/assets/a78f107c-ea03-43a3-bb43-fc07c749eb43" />
<img width="1600" height="1200" alt="WhatsApp Image 2026-07-23 at 13 47 01" src="https://github.com/user-attachments/assets/2f0216ae-9409-4090-9fdf-39c7426048b0" />
<img width="2048" height="1536" alt="620127549-bc1b7902-86e0-41ed-8b11-4bb33f545136" src="https://github.com/user-attachments/assets/69a5ac4a-1aec-48af-97f3-cb731ffc8938" />
<img width="1440" height="1080" alt="WhatsApp Image 2026-07-23 at 13 47 04" src="https://github.com/user-attachments/assets/3dc7b0fd-dd73-4bfa-9c10-22b36a76de84" />
<img width="1600" height="1200" alt="WhatsApp Image 2026-07-23 at 13 46 58" src="https://github.com/user-attachments/assets/94441279-9a58-4e81-9310-45040b39ac8c" />
<img width="1440" height="1080" alt="WhatsApp Image 2026-07-23 at 13 46 56" src="https://github.com/user-attachments/assets/71401b4a-9863-495d-900b-cabf5c883e4b" />
<img width="1448" height="1086" alt="WhatsApp Image 2026-07-23 at 15 11 21" src="https://github.com/user-attachments/assets/abdb9b29-2bcf-41e5-a6ab-08a5e90fb1e6" />























