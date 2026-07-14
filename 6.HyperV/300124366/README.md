Rapport de laboratoire – Hyper-V
Création d'une machine virtuelle Windows Server 2022

Nom : Rosemene Bernard
Numéro étudiant : 300124366
Cours : _Administration systèmes___________________
Professeur : ____________________
Date : _14/07/2026___________________

Objectif

L'objectif de ce laboratoire est de créer une machine virtuelle Windows Server 2022 fonctionnelle dans Hyper-V à l'aide de PowerShell. La machine virtuelle doit respecter les exigences du laboratoire et être capable de démarrer l'installation de Windows Server 2022.

| Élément                | Configuration       |
| ---------------------- | ------------------- |
| Nom de la VM           | VM300124366         |
| Génération             | Génération 1        |
| Mémoire RAM            | 4 Go (fixe)         |
| Processeurs            | 2                   |
| Disque dur virtuel     | 60 Go               |
| Commutateur réseau     | External            |
| Système d'exploitation | Windows Server 2022 |


Les principales commandes PowerShell utilisées sont :

```powershell
$vm="VM300124366"
$iso="E:\ISO\300124366\en-us_windows_server_2022_updated_july_2023_x64_dvd_541692c3 (1).iso"

New-VM -Name $vm -Generation 1 -MemoryStartupBytes 4GB `
  -NewVHDPath "D:\VMs\$vm\$vm.vhdx" -NewVHDSizeBytes 60GB `
  -SwitchName "External"

Set-VMProcessor -VMName $vm -Count 2
Set-VMMemory -VMName $vm -DynamicMemoryEnabled $false

Set-VMDvdDrive -VMName $vm -ControllerNumber 1 -ControllerLocation 0 -Path $iso

Start-VM -Name $vm
```
