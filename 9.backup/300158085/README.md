
cat > "9.backup/300158085/README.md" <<'EOF'
# Laboratoire Backup Hyper-V

## Identification

- Cours : INF1092
- Sujet : Sauvegarde d’une machine virtuelle Hyper-V
- Numéro étudiant : 300158085
- VM utilisée : `VM300158085`
- Chemin de sauvegarde : `E:\Backups\HyperV`

---

## Objectif du laboratoire

L’objectif de ce laboratoire était de sauvegarder une machine virtuelle Hyper-V avec PowerShell.  
J’ai utilisé `Export-VM` pour exporter ma VM dans un dossier de sauvegarde, puis j’ai vérifié les fichiers créés pour confirmer que la sauvegarde était bien réalisée.

---

## Étape 1 : Vérifier les machines virtuelles

J’ai commencé par afficher les machines virtuelles disponibles avec la commande :

```powershell
Get-VM
```

Cette commande permet de voir les machines virtuelles présentes sur le serveur Hyper-V, leur état et leurs informations principales.

![Liste des machines virtuelles](images/01_get_vm.png)

---

## Étape 2 : Préparer le dossier de sauvegarde

J’ai défini le nom de ma VM et le chemin de sauvegarde avec les variables suivantes :

```powershell
$vm = "VM300158085"
$backup = "E:\Backups\HyperV"
```

Ensuite, j’ai vérifié que le dossier de sauvegarde existait avec :

```powershell
Test-Path $backup
```

Le résultat `True` confirme que le chemin de sauvegarde est valide.

---

## Étape 3 : Arrêter la VM avant la sauvegarde

Avant de faire l’exportation, j’ai arrêté la VM avec :

```powershell
Stop-VM -Name $vm
```

Puis j’ai vérifié son état avec :

```powershell
Get-VM -Name $vm
```

La VM était bien à l’état `Off`, ce qui permet de faire une sauvegarde plus propre.

![Arrêt de la VM avant la sauvegarde](images/02_backup_export.png)

---

## Étape 4 : Exporter la machine virtuelle

J’ai lancé la sauvegarde avec la commande :

```powershell
Export-VM -Name $vm -Path $backup
```

Après l’exportation, j’ai vérifié le dossier de sauvegarde avec :

```powershell
Get-ChildItem $backup
```

Le dossier `VM300158085` apparaît bien dans `E:\Backups\HyperV`.  
Cela confirme que l’exportation de la machine virtuelle a été créée correctement.

---

## Étape 5 : Vérifier les fichiers exportés

J’ai vérifié les fichiers de configuration de la VM exportée avec :

```powershell
Get-ChildItem "$backup\$vm\Virtual Machines"
```

Le fichier `.vmcx` est présent dans le dossier `Virtual Machines`.  
Ce fichier est important, car il sert à importer ou restaurer la machine virtuelle.

![Vérification du fichier VMCX](images/03_vmcx_export.png)

---

## Étape 6 : Redémarrer la VM après la sauvegarde

Après la sauvegarde, j’ai redémarré la VM avec :

```powershell
Start-VM -Name $vm
```

Puis j’ai vérifié son état avec :

```powershell
Get-VM -Name $vm
```

La VM est revenue à l’état `Running`, ce qui confirme qu’elle fonctionne correctement après la sauvegarde.

![VM redémarrée après la sauvegarde](images/04_start_vm.png)

---

## Difficultés rencontrées

Pendant le laboratoire, j’ai rencontré une difficulté avec cette commande :

```powershell
Stop-VM -Name $vm -Shutdown
```

PowerShell a affiché une erreur parce que le paramètre `-Shutdown` n’était pas reconnu dans cet environnement.  
Pour continuer correctement, j’ai utilisé la commande compatible :

```powershell
Stop-VM -Name $vm
```

J’ai aussi eu une erreur avec `Compare-VM`, car la VM originale existait encore avec le même identifiant. Cette erreur est normale dans ce contexte.  
Pour importer une copie sans conflit, il faudrait générer un nouvel identifiant avec une commande comme :

```powershell
Import-VM -Path $vmcx -Copy -GenerateNewId
```

---

## Résultat obtenu

À la fin du laboratoire, j’ai réussi à :

- afficher les VM avec `Get-VM` ;
- préparer le chemin de sauvegarde ;
- arrêter la VM avant l’exportation ;
- exporter la VM avec `Export-VM` ;
- vérifier la présence du fichier `.vmcx` ;
- redémarrer la VM après la sauvegarde.

---

## Conclusion

Ce laboratoire m’a permis de comprendre comment sauvegarder une machine virtuelle Hyper-V avec PowerShell.  
La commande principale à retenir est :

```powershell
Export-VM -Name "Nom_VM" -Path "Chemin_Sauvegarde"
```

Cette sauvegarde est importante, car elle permet de récupérer une VM en cas de panne, d’erreur ou de mauvaise manipulation.
EOF
