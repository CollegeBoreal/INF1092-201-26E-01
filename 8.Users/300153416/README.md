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
<img width="2040" height="1536" alt="WhatsApp Image 2026-08-06 at 16 05 56 (1)" src="https://github.com/user-attachments/assets/5e189771-0d75-458e-bd43-2d9296aec98b" />
<img width="2040" height="1536" alt="WhatsApp Image 2026-08-06 at 16 05 56 (2)" src="https://github.com/user-attachments/assets/e4acbe25-6d0f-4b86-8315-c4ba8ca1984e" />
<img width="2040" height="1536" alt="WhatsApp Image 2026-08-06 at 16 05 56 (3)" src="https://github.com/user-attachments/assets/164a2119-0f64-4ad6-a8f6-1764d7fdb707" />
<img width="2040" height="1536" alt="WhatsApp Image 2026-08-06 at 16 05 56 (4)" src="https://github.com/user-attachments/assets/bcfa1099-b64b-4487-99f9-e76ffcf7bcba" />
<img width="2040" height="1536" alt="WhatsApp Image 2026-08-06 at 16 05 56 (5)" src="https://github.com/user-attachments/assets/3ebe490d-a939-4720-999f-5a6d68f9e0fe" />
<img width="2040" height="1536" alt="WhatsApp Image 2026-08-06 at 16 05 56" src="https://github.com/user-attachments/assets/59275d47-bb8f-4dbe-aa5a-8938c06bde17" />
<img width="2040" height="1536" alt="WhatsApp Image 2026-08-06 at 16 05 57 (1)" src="https://github.com/user-attachments/assets/c88afd8a-61f1-4e01-a9e5-b978dec7e2d4" />
<img width="2040" height="1536" alt="WhatsApp Image 2026-08-06 at 16 05 57" src="https://github.com/user-attachments/assets/231d3207-0177-4e18-a6fc-d357e1ad2db9" />








