Rapport d’atelier – Administration des utilisateurs et des groupes

ID : [Ton numéro d’étudiante]
Nom : Yamna Cherif
Projet : Administration des comptes, des groupes et des droits d’accès
Cours : INF1092-201-E26-01

Introduction

Dans cet atelier, j’ai travaillé avec PowerShell sur Windows Server 2022 Datacenter.

Le but du laboratoire était d’apprendre à administrer des comptes locaux. J’ai créé des utilisateurs et un groupe, ajouté un utilisateur au groupe et configuré les permissions d’un dossier.

J’ai également désactivé et réactivé un compte. À la fin du laboratoire, j’ai retiré l’utilisateur du groupe et supprimé son compte.

Partie 1 : Création des comptes locaux
Description

J’ai commencé par créer deux comptes locaux appelés etudiant01 et etudiant02 à l’aide de PowerShell.

Après la création des comptes, j’ai exécuté la commande suivante pour afficher les utilisateurs locaux :

Get-LocalUser

Les comptes etudiant01 et etudiant02 étaient visibles dans le résultat. La valeur True dans la colonne Enabled indiquait que les deux comptes étaient activés.

Capture d’écran

Insérer ici la capture de la création et de la vérification des utilisateurs.

Réponse

Question : Le compte etudiant01 apparaît-il dans la liste ?

Oui, le compte etudiant01 apparaît dans la liste des utilisateurs locaux. Le compte etudiant02 est également présent et actif.

Partie 2 : Création du groupe INF1092
Description

J’ai ensuite créé un groupe local nommé INF1092. Ce groupe permet de rassembler les utilisateurs du cours et de gérer leurs permissions plus facilement.

J’ai utilisé la commande Get-LocalGroup pour vérifier la création du groupe. Le groupe INF1092 apparaissait dans la liste avec la description Groupe des étudiants INF1092.

Capture d’écran

Insérer ici la capture de la création du groupe INF1092.

Réponse

Question : Le groupe INF1092 a-t-il été créé avec succès ?

Oui, le groupe INF1092 a été créé correctement puisqu’il apparaît dans la liste des groupes locaux.

Partie 3 : Ajout d’un utilisateur dans le groupe
Description

Dans cette étape, j’ai ajouté le compte etudiant01 au groupe INF1092.

Après l’ajout, j’ai affiché les membres du groupe pour confirmer le résultat. La vérification a montré que etudiant01 était maintenant membre du groupe local INF1092.

Capture d’écran

Insérer ici la capture montrant les membres du groupe.

Réponse

Question : Quels membres appartiennent au groupe INF1092 ?

Le groupe INF1092 contient l’utilisateur local etudiant01.

Partie 4 : Attribution des permissions sur un dossier
Description

J’ai créé un dossier appelé Laboratoire à l’emplacement suivant :

C:\Laboratoire

J’ai d’abord utilisé la commande Get-Acl pour consulter les permissions existantes sur ce dossier.

Ensuite, j’ai créé une nouvelle règle d’accès pour donner au groupe INF1092 le contrôle total du dossier. Cette permission s’applique aussi aux fichiers et aux sous-dossiers qui se trouvent à l’intérieur.

La dernière vérification affichait FullControl et Allow pour le groupe INF1092. Cela confirme que la permission a été appliquée correctement.

Captures d’écran

Insérer ici les captures des permissions avant et après la modification.

Réponse

Question : Quel niveau d’accès possède maintenant le groupe INF1092 ?

Le groupe INF1092 possède le niveau d’accès FullControl sur le dossier C:\Laboratoire.

Les membres du groupe peuvent donc consulter, ajouter, modifier et supprimer les fichiers et les sous-dossiers.

Partie 5 : Désactivation et réactivation d’un compte
Description

Dans cette partie, j’ai désactivé temporairement le compte etudiant02.

La commande Get-LocalUser a montré la valeur False dans la colonne Enabled. Cela voulait dire que le compte n’était plus actif.

J’ai ensuite réactivé le même compte. Après une nouvelle vérification, la valeur Enabled est devenue True. Le compte pouvait donc être utilisé de nouveau.

Capture d’écran

Insérer ici la capture montrant les valeurs False et True.

Réponse

Question : Le compte etudiant02 a-t-il été désactivé puis réactivé avec succès ?

Oui, l’opération a réussi. La valeur Enabled du compte etudiant02 est passée de False après sa désactivation à True après sa réactivation.

Partie 6 : Suppression des éléments créés
Description

Pour terminer le laboratoire, j’ai d’abord vérifié la présence de etudiant01 dans le groupe INF1092.

J’ai ensuite retiré ce compte du groupe avec la commande Remove-LocalGroupMember. Après cela, j’ai supprimé le compte local à l’aide de la commande Remove-LocalUser.

Une dernière vérification a confirmé que etudiant01 ne figurait plus parmi les membres du groupe et qu’il n’apparaissait plus dans la liste des utilisateurs locaux.

Capture d’écran

Insérer ici la capture de la suppression et de la vérification finale.

Résultat

Le compte etudiant01 a été retiré du groupe INF1092, puis supprimé du serveur avec succès.

Questions d’analyse
1. Quelle est la différence entre un utilisateur et un groupe ?

Un utilisateur représente le compte personnel d’une personne. Ce compte lui permet d’ouvrir une session et d’accéder aux ressources autorisées.

Un groupe rassemble plusieurs comptes d’utilisateurs. Les permissions attribuées au groupe s’appliquent à ses membres.

2. Pourquoi utilise-t-on les groupes pour attribuer des permissions ?

Les groupes facilitent l’administration des permissions. Il n’est pas nécessaire de configurer les mêmes droits séparément pour chaque utilisateur.

Il suffit d’accorder les droits au groupe, puis d’y ajouter les utilisateurs concernés.

3. Que signifie le principe du moindre privilège ?

Le principe du moindre privilège signifie qu’un utilisateur doit recevoir seulement les droits nécessaires pour accomplir ses tâches.

Ce principe améliore la sécurité et limite les erreurs ou les accès non autorisés.

4. Quelle commande PowerShell permet d’afficher les utilisateurs locaux ?

La commande utilisée est :

Get-LocalUser



<img width="1200" height="1600" alt="WhatsApp Image 2026-08-11 at 16 26 14" src="https://github.com/user-attachments/assets/62dd0024-353c-4cc1-9887-e1e9077ade17" />

