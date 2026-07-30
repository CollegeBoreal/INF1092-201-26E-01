cat > "6.HyperV/300158085/README.md" <<'EOF'
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
J’ai utilisé la commande `Export-VM` pour exporter ma VM dans un dossier de sauvegarde, puis j’ai vérifié les fichiers créés afin de confirmer que la sauvegarde était bien réalisée.

---

## Étape 1 : Vérifier les machines virtuelles

J’ai commencé par afficher les machines virtuelles disponibles avec :

```powershell
Get-VM
```

Cette commande permet de voir les VM présentes sur le serveur Hyper-V, leur état et leurs informations principales.

![Liste des VM](images/01_get_vm.png)

---

## Étape 2 : Préparer le dossier de sauvegarde

J’ai défini le nom de ma VM et le chemin de sauvegarde :

```powershell
$vm = "VM300158085"
$backup = "E:\Backups\HyperV"
```

Ensuite, j’ai vérifié que le dossier de sauvegarde existait :

```powershell
Test-Path $backup
```

Le résultat `True` confirme que le chemin de sauvegarde est valide.

---

## Étape 3 : Arrêter la VM avant la sauvegarde

Avant de faire l’export, j’ai arrêté ma VM avec :

```powershell
Stop-VM -Name $vm
```

Puis j’ai vérifié son état :

```powershell
Get-VM -Name $vm
```

La VM était bien à l’état `Off`, ce qui permet de faire une sauvegarde plus propre.

![Arrêt de la VM](images/02_backup_folder_stop_vm.png)

---

## Étape 4 : Exporter la VM

J’ai lancé la sauvegarde avec :

```powershell
Export-VM -Name $vm -Path $backup
```

Après l’exportation, j’ai vérifié le dossier de sauvegarde :

```powershell
Get-ChildItem $backup
```

Le dossier `VM300158085` apparaît bien dans `E:\Backups\HyperV`, ce qui confirme que l’export a été créé.

---

## Étape 5 : Vérifier les fichiers exportés

J’ai ensuite vérifié les fichiers de configuration de la VM exportée :

```powershell
Get-ChildItem "$backup\$vm\Virtual Machines"
```

Le fichier `.vmcx` est présent.  
Ce fichier est important, car il sert à importer ou restaurer la machine virtuelle.

![Fichier VMCX](images/03_export_vmcx.png)

---

## Étape 6 : Redémarrer la VM

Après la sauvegarde, j’ai redémarré la VM avec :

```powershell
Start-VM -Name $vm
```

Puis j’ai vérifié son état :

```powershell
Get-VM -Name $vm
```

La VM est revenue à l’état `Running`, ce qui confirme qu’elle fonctionne après la sauvegarde.

![VM redémarrée](images/04_start_vm_running.png)

---

## Difficultés rencontrées

J’ai rencontré une difficulté avec la commande suivante :

```powershell
Stop-VM -Name $vm -Shutdown
```

PowerShell a affiché une erreur parce que le paramètre `-Shutdown` n’était pas reconnu dans cet environnement.  
Pour continuer le laboratoire, j’ai utilisé la commande compatible :

```powershell
Stop-VM -Name $vm
```

J’ai aussi eu une erreur avec `Compare-VM`, car la VM originale existait encore avec le même identifiant. Cette erreur est normale : pour importer une copie, il faudrait générer un nouvel ID avec une commande comme :

```powershell
Import-VM -Path $vmcx -Copy -GenerateNewId
```

---

## Résultat obtenu

À la fin du laboratoire, j’ai réussi à :

- afficher les VM avec `Get-VM` ;
- préparer un chemin de sauvegarde ;
- arrêter la VM avant l’export ;
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
