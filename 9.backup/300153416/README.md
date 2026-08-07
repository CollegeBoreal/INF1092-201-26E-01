
Laboratoire Backup - Gestion d'une Machine Virtuelle Hyper-V
Nom de la machine virtuelle : VM300153416

Module : INF1092 - Sauvegarde et Restauration Hyper-V

1. Description du travail
Ce laboratoire présente les procédures nécessaires pour effectuer la gestion du cycle de vie d'une machine virtuelle (Hyper-V) à l'aide de PowerShell. Les opérations couvertes incluent l'arrêt propre de la machine, son exportation (sauvegarde), son importation (restauration) ainsi que son redémarrage.

2. Commandes exécutées
A. Arrêt de la machine virtuelle (Recommandé avant la sauvegarde)
Pour éviter la corruption des données, il est préférable d'arrêter la VM avant d'effectuer l'exportation :

PowerShell
Stop-VM -Name "VM300153416" -Shutdown
B. Sauvegarde (Exportation) de la VM
Exportation complète de la machine virtuelle VM300153416 vers le répertoire de sauvegarde :

PowerShell
Export-VM -Name "VM300153416" -Path "D:\Backups\HyperV"
C. Restauration (Importation) de la VM
Restauration de la machine virtuelle à partir des fichiers sauvegardés (.vmcx) :

PowerShell
Import-VM -Path "D:\Backups\HyperV\VM300153416\Virtual Machines\GUID.vmcx"
D. Redémarrage de la machine virtuelle
Démarrage de la machine virtuelle restaurée :

PowerShell
Start-VM -Name "VM300153416"
3. Synthèse des commandes essentielles (À retenir)
Pour le cours INF1092, les deux commandes fondamentales utilisées pour la sauvegarde et la récupération d'une VM Hyper-V sont :

Sauvegarde :
Export-VM -Name "VM300153416" -Path "Chemin_Sauvegarde"

Restauration :
Import-VM -Path "Chemin_VM_Exportee\VM.vmcx"
