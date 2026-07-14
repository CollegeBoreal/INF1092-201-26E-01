# Installation d’une machine virtuelle Windows Server 2022

## Objectif

Le but de ce laboratoire était de créer une machine virtuelle Windows Server 2022 dans Hyper-V en respectant les paramètres demandés par le professeur.

Comme je travaille avec un MacBook, j’ai utilisé **Windows App** pour me connecter à l’ordinateur Windows du laboratoire. Une fois connecté, j’ai pu accéder à Hyper-V et réaliser toute l’installation de la machine virtuelle.

## Préparation du fichier ISO

J’ai téléchargé l’image ISO de Windows Server 2022 depuis **Azure Education** avec mon compte scolaire.

J’ai ensuite créé un dossier avec mon numéro étudiant pour garder mon fichier séparé de ceux des autres étudiants :

`E:\ISO\300158085`

Avant de continuer, j’ai vérifié le contenu des dossiers avec PowerShell afin de m’assurer que j’utilisais le bon emplacement et le bon fichier ISO.

## Création de la machine virtuelle

J’ai créé une nouvelle machine virtuelle avec le nom :

`VM300158085`

J’ai utilisé la configuration demandée dans le laboratoire :

| Paramètre                   | Configuration |
| --------------------------- | ------------- |
| Nom de la machine virtuelle | VM300158085   |
| Génération                  | Génération 1  |
| Mémoire RAM                 | 4 Go fixes    |
| Mémoire dynamique           | Désactivée    |
| Processeurs                 | 2             |
| Disque virtuel              | 60 Go         |
| Réseau                      | External      |

La génération 1 était obligatoire pour respecter le matériel utilisé dans le laboratoire. J’ai aussi désactivé la mémoire dynamique pour que la machine garde toujours 4 Go de RAM.

## Ajout du fichier ISO

Après avoir créé la machine virtuelle, j’ai ajouté le fichier ISO de Windows Server 2022 dans le lecteur DVD virtuel.

Comme il s’agit d’une machine de génération 1, le lecteur DVD utilise un contrôleur IDE. J’ai vérifié que l’ISO était bien montée avant de démarrer la machine.

## Installation de Windows Server

J’ai démarré la machine virtuelle dans Hyper-V. La machine a bien reconnu le fichier ISO et l’installation de Windows Server 2022 a commencé.

Pendant l’installation, j’ai choisi l’option :

**Personnalisé : installer uniquement le système d’exploitation Microsoft Server**

Cette option permet de faire une nouvelle installation sur le disque virtuel de 60 Go.

Une fois l’installation terminée, Windows Server m’a demandé de créer un mot de passe pour le compte Administrateur. Après avoir défini le mot de passe, j’ai pu ouvrir une session.

Le Gestionnaire de serveur s’est ensuite ouvert correctement. Cela confirme que Windows Server 2022 a été installé et que la machine virtuelle fonctionne.

## Vérifications réalisées

À la fin de l’installation, j’ai vérifié que la machine virtuelle respectait les paramètres demandés :

* le nom de la VM est `VM300158085`;
* la VM est de génération 1;
* la mémoire est fixée à 4 Go;
* la mémoire dynamique est désactivée;
* la machine possède 2 processeurs;
* le disque virtuel possède une capacité de 60 Go;
* la carte réseau est connectée au réseau External;
* le fichier ISO provient d’Azure Education;
* Windows Server démarre correctement;
* le compte Administrateur fonctionne;
* le Gestionnaire de serveur s’ouvre normalement.

## Difficultés rencontrées

Pendant le laboratoire, j’ai fait quelques erreurs de syntaxe dans PowerShell, surtout avec les espaces et le nom de certaines commandes.

Par exemple, pour vérifier le port RDP, j’avais d’abord écrit la commande sans espace entre `-Port` et `3389`. Après correction, la commande utilisée était :

`Test-NetConnection localhost -Port 3389`

J’ai aussi dû corriger l’orthographe de la commande `Set-ItemProperty` et utiliser le bon nom des règles du pare-feu pour le Bureau à distance.

Ces petites erreurs m’ont permis de mieux comprendre l’importance de respecter exactement la syntaxe des commandes PowerShell.

## Conclusion

La machine virtuelle `VM300158085` a été créée avec les paramètres demandés et Windows Server 2022 a été installé avec succès.

J’ai réalisé le travail depuis mon MacBook en utilisant Windows App pour accéder à l’ordinateur Windows du laboratoire. J’ai ensuite utilisé Hyper-V pour créer la machine, monter le fichier ISO, lancer l’installation et vérifier le bon fonctionnement du serveur.

## Captures d’écran

Les captures ajoutées à la fin du rapport montrent :

1. la connexion à l’ordinateur du laboratoire avec Windows App;
2. le dossier créé avec mon numéro étudiant;
3. le démarrage de l’installation de Windows Server 2022;
4. le choix de l’installation personnalisée;
5. la création du mot de passe Administrateur;
6. l’écran de connexion de Windows Server;
7. le Gestionnaire de serveur après l’installation;
8. la machine virtuelle `VM300158085` en fonctionnement.
<img width="838" height="407" alt="Screenshot 2026-07-09 at 4 05 53 PM" src="https://github.com/user-attachments/assets/66ea994d-bb3a-41fa-b3ca-aea9dd0e28cc" />
<img width="525" height="614" alt="Screenshot 2026-07-09 at 3 37 50 PM" src="https://github.com/user-attachments/assets/35144631-c155-4b75-a609-d74c854a9d55" />
<img width="849" height="257" alt="Screenshot 2026-07-09 at 3 01 52 PM" src="https://github.com/user-attachments/assets/a27bd48d-9920-4087-b41d-5ea0cf9435ae" />
<img width="1810" height="1812" alt="Screenshot 2026-07-09 at 2 55 56 PM" src="https://github.com/user-attachments/assets/29d1b99a-71c1-4af8-8173-3b65624bd0ef" />
<img width="1810" height="1812" alt="Screenshot 2026-07-09 at 2 54 37 PM" src="https://github.com/user-attachments/assets/19505926-7814-4e4a-b6f3-10b79dd7cfb6" />
<img width="1902" height="1142" alt="Screenshot 2026-07-09 at 2 36 35 PM" src="https://github.com/user-attachments/assets/bbc5605a-0447-432b-ac3a-7ebe3acb1474" />
<img width="878" height="683" alt="Screenshot 2026-07-09 at 1 28 17 PM" src="https://github.com/user-attachments/assets/f9e23c3e-25ad-4ef3-a667-b62086e489b3" />
<img width="878" height="683" alt="Screenshot 2026-07-09 at 1 27 08 PM" src="https://github.com/user-attachments/assets/728c846d-d6d0-4b46-b66d-0a80e8f9e730" />
<img width="809" height="774" alt="Screenshot 2026-07-09 at 1 09 05 PM" src="https://github.com/user-attachments/assets/4718f6ff-e29d-492d-a795-8fe3d00b579a" />
<img width="1290" height="1720" alt="IMG_E48A1376-3E57-46FD-A1F9-030E61D98AD5" src="https://github.com/user-attachments/assets/54490674-dd93-4dad-96ee-64154231c0bf" />
<img width="1290" height="1720" alt="IMG_AEACBB5B-5A28-4EFE-9A6E-B51656FE6E96" src="https://github.com/user-attachments/assets/9904ef16-1d3a-4b71-b47b-c5333005e26b" />
<img width="1512" height="982" alt="Screenshot 2026-07-14 at 3 13 06 PM" src="https://github.com/user-attachments/assets/f9e80bc4-f009-44ae-960a-ad4afad0a9cb" />
<img width="1042" height="875" alt="Screenshot 2026-07-09 at 1 43 58 PM" src="https://github.com/user-attachments/assets/38d8c7cd-50aa-477b-ab18-3add4bd8af22" />
<img width="1042" height="875" alt="Screenshot 2026-07-09 at 1 40 23 PM" src="https://github.com/user-attachments/assets/170bf81f-9291-4a3b-9c72-fd194ec8748a" />
<img width="1042" height="875" alt="Screenshot 2026-07-09 at 1 38 47 PM" src="https://github.com/user-attachments/assets/9fefec16-eb8f-4cf5-ba1b-e9b994b460ae" />

