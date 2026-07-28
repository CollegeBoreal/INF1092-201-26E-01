# 🧪 Laboratoire Backup

Pour **sauvegarder (exporter)** et **restaurer (importer)** une machine virtuelle Hyper-V avec PowerShell, utilisez les commandes suivantes.

### 1. Sauvegarde (Export) d'une VM Hyper-V

**Exporter une VM spécifique :**

```powershell
Export-VM -Name "VMXXXXXXXXX" -Path "D:\Backups\HyperV"
```

**Exporter en utilisant l'ID de la VM :**

```powershell
Get-VM -Name "VMXXXXXXXXX" | Export-VM -Path "D:\Backups\HyperV"
```

**Vérifier les VM disponibles :**

```powershell
Get-VM
```

***

### 2. Restauration (Import) d'une VM Hyper-V

**Afficher les informations de la VM exportée :**

```powershell
Compare-VM -Path "D:\Backups\HyperV\VMXXXXXXXXX\Virtual Machines\GUID.xml"
```

**Importer la VM dans son emplacement d'origine :**

```powershell
Import-VM -Path "D:\Backups\HyperV\VMXXXXXXXXX\Virtual Machines\GUID.vmcx"
```

**Importer et enregistrer ailleurs :**

```powershell
Import-VM -Path "D:\Backups\HyperV\VMXXXXXXXXX\Virtual Machines\GUID.vmcx" `
-NewVirtualMachinePath "D:\VMs" `
-VhdDestinationPath "D:\VHDs"
```

**Importer comme copie (génère un nouvel ID unique) :**

```powershell
Import-VM -Path "D:\Backups\HyperV\VMXXXXXXXXX\Virtual Machines\GUID.vmcx" -Copy `
-GenerateNewId
```

***

### 3. Démarrer la VM restaurée

```powershell
Start-VM -Name "VMXXXXXXXXX"
```

### 4. Arrêter la VM avant sauvegarde (option recommandée)

```powershell
Stop-VM -Name "VMXXXXXXXXX"
```

Ou pour arrêter proprement le système invité :

```powershell
Stop-VM -Name "VMXXXXXXXXX" -Shutdown
```

***

### Exemple complet

```powershell
# Sauvegarde
Export-VM -Name "VMXXXXXXXXX" -Path "E:\Backups\HyperV"

# Restauration
Import-VM -Path "E:\Backups\HyperV\VMXXXXXXXXX\Virtual Machines\VMID.vmcx"

# Démarrage
Start-VM -Name "VMXXXXXXXXX"
```

Pour le cours **INF1092**, retenez principalement :

```powershell
# Sauvegarde
Export-VM -Name "Nom_VM" -Path "Chemin_Sauvegarde"

# Restauration
Import-VM -Path "Chemin_VM_Exportee\VM.vmcx"
```

Ces deux commandes sont les plus utilisées pour la sauvegarde et la récupération d'une VM Hyper-V.
