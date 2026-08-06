Ce travail pratique (lab) montre la gestion complète du cycle de vie des utilisateurs, des groupes locaux et du système de fichiers sous Windows via PowerShell.

1. Gestion des comptes utilisateurs et groupes locaux

Création d'utilisateur : Création du compte local khalil avec New-LocalUser (avec description "compte de laboratoire" et mot de passe).

Création de groupe : Création du groupe local inf1092 avec New-LocalGroup.

Vérification : Inspection des comptes et des membres du groupe (Get-LocalUser, Get-LocalGroup, Get-LocalGroupMember).

2. Gestion des dossiers et des autorisations (ACL)

Création de dossier : Création du répertoire C:\laboratoire à l'aide de New-Item -Path "c:\laboratoire" -ItemType Directory.

Inspection des droits (ACL) : Vérification des autorisations NTFS héritées sur le dossier avec Get-Acl "c:\laboratoire" | Format-List.

3. Modification de l'état des comptes

Activation de compte : Réactivation du compte utilisateur désactivé à l'aide de Enable-LocalUser -Name "khalil".

4. Nettoyage des ressources (Dépression / Suppression)

Suppression de l'utilisateur : Retrait du compte local via Remove-LocalUser -Name "khalil".

Suppression du groupe : Suppression du groupe local via Remove-LocalGroup -Name "inf1092".

Suppression du dossier : Effacement complet du dossier créé avec Remove-Item -Path "c:\laboratoire" -Recurse -Force.

Confirmation finale : Exécution de Get-LocalUser -Name "khalil" confirmant que l'utilisateur n'existe plus (UserNotFoundException).
