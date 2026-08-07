
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
<img width="2040" height="1536" alt="WhatsApp Image 2026-08-07 at 15 37 14 (2)" src="https://github.com/user-attachments/assets/7422c97c-17fe-4e85-86d7-b5fec915798a" />
<img width="2040" height="1536" alt="WhatsApp Image 2026-08-07 at 15 37 14 (1)" src="https://github.com/user-attachments/assets/e05353d8-63b1-4eb2-b80b-3045cae4b52e" />
<img width="2040" height="1536" alt="WhatsApp Image 2026-08-07 at 15 37 14" src="https://github.com/user-attachments/assets/c390f64f-2bbd-44d7-882b-eed872249784" />
<img width="2040" height="1536" alt="WhatsApp Image 2026-08-07 at 15 34 47 (2)" src="https://github.com/user-attachments/assets/799f8be8-79b4-4052-8c6c-1c7a08989c5c" />
<img width="2040" height="1536" alt="WhatsApp Image 2026-08-07 at 15 34 47 (1)" src="https://github.com/user-attachments/assets/630decab-0bbb-4f85-98dc-5b5179392459" />
<img width="2040" height="1536" alt="WhatsApp Image 2026-08-07 at 15 34 47" src="https://github.com/user-attachments/assets/7c81bfcf-e9fc-4cd4-8c82-61bef0395d45" />





