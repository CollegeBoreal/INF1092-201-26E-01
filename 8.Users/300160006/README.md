# 300160006
#     description
# Laboratoire PowerShell : Gestion des utilisateurs, groupes et permissions
#    Objectif:
Le but de ce laboratoire était d’apprendre à utiliser PowerShell pour administrer des comptes utilisateurs, des groupes et des droits d’accès sur Windows.
J’ai réalisé plusieurs opérations : création de comptes, création d’un groupe, ajout des utilisateurs, configuration des permissions et gestion de l’état des comptes

![images alt](https://github.com/CollegeBoreal/INF1092-201-26E-01/blob/1682a3ec764a641869b1126b6b04bc1a6b956e56/8.Users/300160006/images/WhatsApp%20Image%202026-08-04%20at%2012.42.32%20(1).jpeg)
# Étape 1 : Création des utilisateurs
Pour commencer, j’ai créé deux comptes locaux nommés etudiant01 et etudiant02.
J’ai d’abord créé un mot de passe sécurisé avec PowerShell, puis je l’ai utilisé pour créer les utilisateurs.
La commande Get-LocalUser m’a permis de vérifier que les comptes ont bien été ajoutés au système.
Résultat : les deux utilisateurs apparaissent dans la liste des comptes locaux.
![images alt](https://github.com/CollegeBoreal/INF1092-201-26E-01/blob/a4840baccbe6df96c3fcb44cfecb5c6a4b18e61f/8.Users/300160006/images/WhatsApp%20Image%202026-08-04%20at%2012.42.32.jpeg)
![images alt](https://github.com/CollegeBoreal/INF1092-201-26E-01/blob/74a66b8c08bfa8f07ec504ea6a004cea6a515b49/8.Users/300160006/images/WhatsApp%20Image%202026-08-04%20at%2012.42.33%20(1).jpeg)
# Étape 2 : Création du groupe INF1092
Ensuite, j’ai créé un groupe local appelé INF1092.
L’utilisation d’un groupe permet de réunir plusieurs utilisateurs qui auront les mêmes droits. Cela évite de configurer les permissions séparément pour chaque compte.
Résultat : le groupe INF1092 a été créé correctement.

# Étape 3 : Ajout des utilisateurs au groupe
Après la création du groupe, j’ai ajouté les comptes etudiant01 et etudiant02 au groupe INF1092.
J’ai utilisé la commande Get-LocalGroupMember pour vérifier les membres du groupe.
Résultat : les deux utilisateurs font maintenant partie du groupe INF1092.

# Étape 4 : Configuration des permissions du dossier
J’ai ensuite créé un dossier nommé C:\Laboratoire.
J’ai attribué au groupe INF1092 un accès complet (FullControl) sur ce dossier.
Cette méthode permet de gérer les permissions plus facilement, car tous les utilisateurs du groupe obtiennent automatiquement les mêmes droits.
La commande Get-Acl a permis de vérifier les permissions appliquées.

# Résultat : le groupe INF1092 possède un contrôle total sur le dossier.
![images alt](https://github.com/CollegeBoreal/INF1092-201-26E-01/blob/cd310cda16bffd04380e7c2356c2be14e1cad4c2/8.Users/300160006/images/WhatsApp%20Image%202026-08-04%20at%2012.42.33%20(2).jpeg)
![images alt](https://github.com/CollegeBoreal/INF1092-201-26E-01/blob/1b2bb8211b3355bc6dd1a7aecadf1fad32a96980/8.Users/300160006/images/WhatsApp%20Image%202026-08-04%20at%2012.42.33.jpeg)
