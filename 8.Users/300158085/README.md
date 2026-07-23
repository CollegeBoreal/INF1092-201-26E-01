# Laboratoire PowerShell : Gestion des utilisateurs INF1092

## Objectif

Ce laboratoire avait pour objectif de pratiquer la gestion des utilisateurs, des groupes et des permissions à l’aide de PowerShell sur Windows Server.

---

## Partie 1 : Création des utilisateurs

Commandes utilisées :

```powershell
$Password = ConvertTo-SecureString "P@ssw0rd123!" -AsPlainText -Force

New-LocalUser -Name "etudiant01" -FullName "Étudiant Test" -Description "Compte de laboratoire" -Password $Password

New-LocalUser -Name "etudiant02" -FullName "Étudiant Test 2" -Description "Compte de laboratoire" -Password $Password

Get-LocalUser
