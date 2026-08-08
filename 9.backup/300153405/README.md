# Laboratoire 10 – Sauvegarde et restauration d'une machine virtuelle Hyper-V

### Cours : INF1092-Introduction à l'administration des systèmes-26E-01
### Laboratoire : Sauvegarde et restauration d'une machine virtuelle Hyper-V avec PowerShell
### Nom : Rekaik khaled
### Numéro d'étudiant : 300153405

----------------------------------------------------------------------------------------------------------------------------------
## Introduction

Dans ce laboratoire, nous avons appris à effectuer la sauvegarde et la restauration d'une machine virtuelle Hyper-V à l'aide de PowerShell. Nous avons utilisé les commandes d'exportation et d'importation afin de créer une copie de sauvegarde de la machine virtuelle, puis de la restaurer. Ce laboratoire permet de comprendre les principales opérations de protection et de récupération des machines virtuelles dans un environnement Hyper-V.


### 1. Sauvegarde (Export) de la machine virtuelle

La commande Export-VM permet de créer une sauvegarde complète de la machine virtuelle dans le dossier spécifié.

Export-VM -Name "VM300153405" -Path "D:\Backups\HyperV"

Après l'exportation, la commande suivante permet de vérifier que la machine virtuelle est toujours présente sur l'hôte.

Get-VM

Cette étape confirme que la sauvegarde a été réalisée avec succès.

Capture d'écran : Exportation de la machine virtuelle.

<img width="1692" height="985" alt="Capture d’écran 2026-08-07 142958" src="https://github.com/user-attachments/assets/6c0863bd-7c02-4039-ad6a-fea07be23675" />

### 2. Importation de la sauvegarde

Après l'exportation, la sauvegarde est restaurée à l'aide de Import-VM. Une vérification est d'abord effectuée avec Compare-VM, puis la machine virtuelle est importée en tant que copie afin de générer un nouvel identifiant.

Compare-VM -Path "D:\Backups\HyperV\VM300153405\Virtual Machines\GUID.vmcx"

Import-VM `
-Path "D:\Backups\HyperV\VM300153405\Virtual Machines\GUID.vmcx" `
-Copy `
-GenerateNewId

Une fois l'importation terminée, la nouvelle machine virtuelle est renommée.

Get-VM -Name "VM300153405" |
Where-Object {$_.State -eq "Saved"} |
Rename-VM -NewName "VM300153405-Restored"

Cette opération crée une copie indépendante de la machine virtuelle originale.

Capture d'écran : Importation et renommage de la machine virtuelle restaurée.
<img width="1692" height="985" alt="Capture d’écran 2026-08-07 142958" src="https://github.com/user-attachments/assets/e2cfcd47-6154-4b5d-bc4b-3c4d9a6f5698" />

<img width="1691" height="987" alt="Capture d’écran 2026-08-07 143014" src="https://github.com/user-attachments/assets/bf686ceb-b116-47bc-9a61-9c49d528b8e9" />

### 3. Démarrage et vérification de la machine restaurée

Après l'importation, la machine virtuelle restaurée est démarrée afin de vérifier que la restauration a été effectuée correctement.

Start-VM -Name "VM300153405-Restored"

La machine virtuelle originale est ensuite arrêtée.

Stop-VM -Name "VM300153405"

Enfin, la commande suivante affiche toutes les machines virtuelles présentes sur l'hôte.

Get-VM

Le résultat confirme que la machine restaurée fonctionne correctement et apparaît dans la liste des machines virtuelles.

Capture d'écran : Vérification finale des machines virtuelles restaurées.

<img width="1676" height="970" alt="Capture d’écran 2026-08-07 143125" src="https://github.com/user-attachments/assets/a6ab14f0-c11c-490e-b523-d13eeec9312d" />

### Remarque : La commande Stop-VM -Shutdown a généré une erreur, car ce paramètre n'était pas disponible dans l'environnement utilisé. La commande Stop-VM -Name "VM300153405" a permis d'arrêter correctement la machine virtuelle.

# Conclusion

Au cours de ce laboratoire, j'ai appris à utiliser PowerShell pour sauvegarder et restaurer une machine virtuelle Hyper-V. J'ai exporté une machine virtuelle, importé une copie en générant un nouvel identifiant, puis vérifié son fonctionnement après le démarrage. Ce laboratoire m'a permis de mieux comprendre les procédures de sauvegarde et de récupération des machines virtuelles ainsi que l'importance de ces opérations pour assurer la continuité des services et la protection des données.
