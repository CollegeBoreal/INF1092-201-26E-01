\# Laboratoire PowerShell : Gestion des utilisateurs (INF1092)



\## Objectif



Apprendre à gérer les utilisateurs, les groupes et les permissions à l'aide de PowerShell.



\---



\# Partie 1 : Création des utilisateurs



\## Création du mot de passe sécurisé



```powershell

$Password = ConvertTo-SecureString "P@ssw0rd123!" -AsPlainText -Force

