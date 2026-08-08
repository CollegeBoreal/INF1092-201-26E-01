Laboratoire PowerShell : Gestion des utilisateurs, groupes et permissions (INF1092)
Objectif

L'objectif de ce laboratoire est d'apprendre à administrer les utilisateurs, les groupes et les permissions NTFS à l'aide de PowerShell. À la fin de l'exercice, vous serez en mesure de créer des comptes locaux, gérer leur appartenance à des groupes, attribuer des permissions sur un dossier et supprimer les ressources créées.

1. Création des utilisateurs locaux

La première étape consiste à créer un mot de passe sécurisé qui sera utilisé lors de la création des comptes locaux. Ensuite, deux utilisateurs sont créés avec New-LocalUser. Enfin, la commande Get-LocalUser permet de vérifier que les comptes ont bien été ajoutés au système.

$Password = ConvertTo-SecureString "P@ssw0rd123!" -AsPlainText -Force

New-LocalUser `
-Name "etudiant01" `
-FullName "Étudiant Test" `
-Description "Compte de laboratoire" `
-Password $Password

New-LocalUser `
-Name "etudiant02" `
-FullName "Étudiant Test 2" `
-Description "Compte de laboratoire" `
-Password $Password

Get-LocalUser

Capture d'écran : Création des utilisateurs locaux.

<img width="1689" height="983" alt="Capture d’écran 2026-08-07 135022" src="https://github.com/user-attachments/assets/e1444f37-b99e-4e4f-b4c9-ad24cdc3c744" />

2. Création d'un groupe local

Afin de faciliter l'administration des permissions, un groupe nommé INF1092 est créé. La commande Get-LocalGroup permet ensuite de confirmer sa création.

New-LocalGroup -Name "INF1092" -Description "Groupe des étudiants INF1092"

Get-LocalGroup

Cette étape confirme que le groupe est maintenant disponible dans le système.

Capture d'écran : Création du groupe INF1092.

<img width="1692" height="984" alt="Capture d’écran 2026-08-07 135037" src="https://github.com/user-attachments/assets/17ad8ca2-0a6a-495d-905b-d84d256fa71b" />

3. Ajouter un utilisateur au groupe

L'utilisateur etudiant01 est ajouté au groupe INF1092 afin qu'il hérite des permissions qui seront attribuées ultérieurement.

Add-LocalGroupMember -Group "INF1092" -Member "etudiant01"

Get-LocalGroupMember -Group "INF1092"

La liste des membres confirme que l'utilisateur appartient maintenant au groupe.

Capture d'écran : Ajout de l'utilisateur au groupe INF1092.

<img width="1691" height="983" alt="Capture d’écran 2026-08-07 135057" src="https://github.com/user-attachments/assets/03376171-3cbd-472c-a643-37063d99fe51" />

4. Création d'un dossier et vérification des permissions

Un dossier nommé Laboratoire est créé à la racine du disque C:. Les permissions actuelles sont ensuite affichées afin d'observer les droits attribués par défaut.

New-Item -Path "C:\Laboratoire" -ItemType Directory

Get-Acl "C:\Laboratoire" | Format-List

Cette vérification permet de connaître les autorisations existantes avant toute modification.

Capture d'écran : Création du dossier et affichage des permissions.

<img width="1683" height="986" alt="Capture d’écran 2026-08-07 135112" src="https://github.com/user-attachments/assets/a456a59b-6520-46a9-a39e-b32e0d0df88f" />

5. Attribution des permissions au groupe

Les permissions du dossier sont modifiées afin d'accorder un contrôle total au groupe INF1092.

$acl = Get-Acl "C:\Laboratoire"

$rule = New-Object System.Security.AccessControl.FileSystemAccessRule(
"INF1092",
"FullControl",
"ContainerInherit,ObjectInherit",
"None",
"Allow")

$acl.AddAccessRule($rule)

Set-Acl "C:\Laboratoire" $acl

(Get-Acl "C:\Laboratoire").Access

L'affichage final confirme que le groupe possède désormais les droits d'accès complets sur le dossier.

Capture d'écran : Attribution des permissions au groupe INF1092.

<img width="1687" height="979" alt="Capture d’écran 2026-08-07 135139" src="https://github.com/user-attachments/assets/f4308f59-dbc4-46b1-bb0c-e1d5678a2547" />

6. Désactivation et réactivation d'un utilisateur

Afin d'illustrer la gestion des comptes, l'utilisateur etudiant01 est d'abord désactivé puis réactivé. Les commandes de vérification permettent de confirmer l'état du compte.

Disable-LocalUser -Name "etudiant01"

Get-LocalUser -Name "etudiant01"

Enable-LocalUser -Name "etudiant01"

Get-LocalUser -Name "etudiant01"

Cette manipulation démontre qu'il est possible d'empêcher temporairement l'accès à un compte sans le supprimer.

Capture d'écran : Désactivation et réactivation d'un utilisateur.

<img width="1672" height="967" alt="Capture d’écran 2026-08-07 135154" src="https://github.com/user-attachments/assets/8b794ecc-204d-49c6-b04e-986f57c28e52" />

7. Suppression des ressources créées

Pour terminer le laboratoire, les utilisateurs sont retirés du groupe lorsque nécessaire, puis les comptes créés sont supprimés.

Remove-LocalGroupMember -Group "INF1092" -Member "etudiant01"

Remove-LocalUser -Name "etudiant01"

Get-LocalUser

Cette étape permet de remettre le système dans un état propre après les manipulations.

Capture d'écran : Suppression des utilisateurs et nettoyage des ressources.

<img width="1644" height="963" alt="Capture d’écran 2026-08-07 135204" src="https://github.com/user-attachments/assets/ee285d1b-4bf4-42d9-9fd4-d8722db51565" />

Conclusion

Au cours de ce laboratoire, j'ai utilisé PowerShell pour administrer des utilisateurs, des groupes et des permissions sous Windows. J'ai créé des comptes locaux, organisé les utilisateurs dans un groupe, configuré des droits d'accès sur un dossier, puis testé la désactivation, la réactivation et la suppression des comptes. Ce laboratoire m'a permis de mieux comprendre les principales commandes PowerShell utilisées pour l'administration des ressources locales et de me familiariser avec les bonnes pratiques de gestion des utilisateurs et des permissions.
