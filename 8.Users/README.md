# Laboratoire PowerShell : Gestion des utilisateurs (INF1092)

## Objectif

Apprendre à gérer les utilisateurs, les groupes et les permissions à l'aide de PowerShell.

## Prérequis

* Windows 10/11 ou Windows Server
* PowerShell exécuté en tant qu'Administrateur

***

# Partie 1 : Création d'un utilisateur

### Étape 1 : Créer un mot de passe sécurisé

```powershell
$Password = ConvertTo-SecureString "P@ssw0rd123!" -AsPlainText -Force
```

### Étape 2 : Créer l'utilisateur (etudiant01 et etudiant02)

```powershell
New-LocalUser `
-Name "etudiant01" `
-FullName "Étudiant Test" `
-Description "Compte de laboratoire" `
-Password $Password
```

### Vérification

```powershell
Get-LocalUser
```

**Question :**

* Le compte *etudiant01* apparaît-il dans la liste ?

***

# Partie 2 : Création d'un groupe

### Créer le groupe

```powershell
New-LocalGroup -Name "INF1092" -Description "Groupe des étudiants INF1092"
```

### Vérification

```powershell
Get-LocalGroup
```

**Question :**

* Le groupe INF1092 a-t-il été créé avec succès ?

***

# Partie 3 : Ajouter un utilisateur à un groupe

### Ajouter le compte au groupe

```powershell
Add-LocalGroupMember -Group "INF1092" -Member "etudiant01"
```

### Vérifier l'appartenance

```powershell
Get-LocalGroupMember -Group "INF1092"
```

**Question :**

* Quels membres appartiennent au groupe INF1092 ?

***

# Partie 4 : Gérer les permissions d'un dossier

### Créer un dossier

```powershell
New-Item -Path "C:\Laboratoire" -ItemType Directory
```

### Vérifier les permissions actuelles

```powershell
Get-Acl "C:\Laboratoire" | Format-List
```

### Donner l'accès complet au groupe INF1092

```powershell
$acl = Get-Acl "C:\Laboratoire"

$rule = New-Object System.Security.AccessControl.FileSystemAccessRule(
"INF1092",
"FullControl",
"ContainerInherit,ObjectInherit",
"None",
"Allow")

$acl.AddAccessRule($rule)

Set-Acl "C:\Laboratoire" $acl
```

### Vérification

```powershell
(Get-Acl "C:\Laboratoire").Access
```

**Question :**

* Quel niveau d'accès possède maintenant le groupe INF1092 ?

***

# Partie 5 : Désactiver et activer un compte

### Désactiver

```powershell
Disable-LocalUser -Name "etudiant02"
```

### Vérifier

```powershell
Get-LocalUser -Name "etudiant02"
```

### Réactiver

```powershell
Enable-LocalUser -Name "etudiant02"
```

***

# Partie 6 : Supprimer les ressources créées

### Retirer l'utilisateur du groupe

```powershell
Remove-LocalGroupMember -Group "INF1092" -Member "etudiant02"
```

### Supprimer l'utilisateur

```powershell
Remove-LocalUser -Name "etudiant02"
```

***

# Questions d'analyse

1. Quelle est la différence entre un utilisateur et un groupe ?
2. Pourquoi utilise-t-on les groupes pour attribuer des permissions ?
3. Que signifie le principe du moindre privilège ?
4. Quelle commande PowerShell permet d'afficher les utilisateurs locaux ?
5. Quelle commande permet d'afficher les membres d'un groupe ?

## Résultat attendu

À la fin du laboratoire, vous serez capable de :

* Créer et gérer des comptes utilisateurs.
* Créer et administrer des groupes.
* Attribuer des permissions sur des ressources.
* Appliquer des bonnes pratiques de sécurité avec PowerShell.
