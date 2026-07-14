300152004

**Installation de windows server 2022**

La méthode retenue pour installer Windows Server 2022 sur le serveur est le démarrage réseau PXE (Preboot eXecution Environment).
Avant de lancer le déploiement il faut vérifier le matériel du serveur et préparer son stockage (RAID).

-Etape 1

<img src="images/etape01.jpeg" width="40%" height="40%" />
Au démarrage du serveur un diagnostic mémoire BIOS s'exécute automatiquement. 

-Etape 2

<img src="images/etape02.jpeg" width="40%" height="40%" />
L'écran POST affiche le résumé matériel : 64 Go de RAM installés, 2 processeurs Intel Xeon E5540 détectés, et un message d'alerte.

-Etape 3

<img src="images/etape03.jpeg" width="40%" height="40%" />
Accès à l'utilitaire iLO 2 pour appliquer un Set Defaults.

-Etape 4

<img src="images/etape04.jpeg" width="40%" height="40%" />
Une tentative de démarrage sur l'ancien disque échoue .


-Etape 5

<img src="images/etape05.jpeg" width="40%" height="40%" />
Dans l'Option ROM Configuration for Arrays, l'option Delete Logical Drive est sélectionnée afin de supprimer l'ancienne unité logique et repartir sur une configuration RAID propre.


-Etape 6

<img src="images/etape06.jpeg" width="40%" height="40%" />
Les 3 disques physiques SAS de 146,8 Go sont listés. Le niveau RAID 5 est choisi, avec le compte de parité configuré.


-Etape 7

<img src="images/etape07.jpeg" width="40%" height="40%" />
Retour au Main Menu de l'utilitaire de configuration des tableaux, où l'option Create Logical Drive est sélectionnée pour créer la nouvelle unité logique RAID 5.

-Etape 8

<img src="images/etape08.jpeg" width="40%" height="40%" />
Le système confirme la création d'un volume logique de 273,4 Go en RAID 5. On utilise la touche F8 pour enregistrer la configuration.

-Etape 9

<img src="images/etape09.jpeg" width="40%" height="40%" />
L'écran Available Logical Drives confirme que le Logical Drive 1 est bien configuré en RAID 5, 273,4 Go.

-Etape 10

<img src="images/etape10.jpeg" width="40%" height="40%" />
Les trois disques physiques sont cochés `[X]` et assignés au RAID 5, avec la partition de démarrage désactivée.

-Etape 11

<img src="images/etape11.jpeg" width="40%" height="40%" />
Le serveur démarre sur le réseau (PXE) et contacte le serveur WDS.

-Etape 12

<img src="images/etape12.jpeg" width="40%" height="40%" />
Une fenêtre de connexion demande les identifiants du domaine pour se connecter au serveur.

-Etape 13

<img src="images/etape13.jpeg" width="40%" height="40%" />
Le Windows Boot Manager chargé depuis le serveur, propose deux images disponibles : Windows 11 Pro Setup et Windows Server 2022 Setup. On choisi Windows Server 2022 Setup.

-Etape 14

<img src="images/etape14.jpeg" width="40%" height="40%" />
L'assistant affiche la liste des images disponibles sur le serveur WDS.

-Etape 15

<img src="images/etape15.jpeg" width="40%" height="40%" />
L'écran « Où voulez-vous installer le système d'exploitation ? » affiche les partitions du disque RAID créé précédemment. On sélectionne la partition principale pour y installer le système.

-Etape 16

<img src="images/etape16.jpeg" width="40%" height="40%" />
La copie et l'installation des fichiers de Windows Server démarrent.

-Etape 17

<img src="images/etape17.jpeg" width="40%" height="40%" />
Au premier démarrage après installation, l'assistant demande le pays/région, la langue de l'application et la disposition du clavier (US).

-Etape 18

<img src="images/etape18.jpeg" width="40%" height="40%" />
L'écran Customize settings demande de définir le mot de passe du compte Administrateur intégré.

-Etape 19

<img src="images/etape19.jpeg" width="40%" height="40%" />
Une fois la configuration terminée, l'écran de verrouillage de Windows Server 2022 s'affiche, confirmant que le système est installé et opérationnel.

-Etape 20

<img src="images/etape20.jpeg" width="40%" height="40%" />
Et enfin après connexion avec le compte Administrateur, le bureau de Windows Server 2022 est atteint, confirmant la réussite complète de l'installation via PXE.


