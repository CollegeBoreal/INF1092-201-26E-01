Rapport de laboratoire – Hyper-V
Création d'une machine virtuelle Windows Server 2022

Nom : Rosemene Bernard

Numéro étudiant : 300124366

Cours : _Introduction à l'administration des systèmes___________________

Professeur : Brice Robert____________________

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

On n'a d'abord installé le SSH et le HYPER-V sur le serveur avant la créattion de la machine virtuelle.

<img width="1600" height="1200" alt="WhatsApp Image 2026-07-28 at 4 54 54 PM" src="https://github.com/user-attachments/assets/4a95b065-1bff-4007-ab9f-6b189768f451" />


Puis, on vérifie si tout est prêt avec l'hote Hyper-V

<img width="1600" height="1200" alt="WhatsApp Image 2026-07-28 at 4 56 44 PM" src="https://github.com/user-attachments/assets/bb48c5c1-56d0-4916-b30c-9f4912db6dcb" />



Les principales commandes PowerShell utilisées pour créer la machine virtuelle sont :

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

<img width="1600" height="1200" alt="WhatsApp Image 2026-07-30 at 6 45 10 PM" src="https://github.com/user-attachments/assets/baa5cb20-a325-44c8-b60d-6b8c93d88fba" />

<img width="1600" height="1200" alt="WhatsApp Image 2026-07-30 at 6 45 18 PM" src="https://github.com/user-attachments/assets/e8433633-2444-451d-ba82-5526ae669dce" />

<img width="1600" height="1200" alt="WhatsApp Image 2026-07-30 at 6 45 14 PM (1)" src="https://github.com/user-attachments/assets/bf479ea5-557d-46d8-8d3d-da6023de2158" />

<img width="1600" height="1200" alt="WhatsApp Image 2026-07-30 at 6 45 14 PM" src="https://github.com/user-attachments/assets/4730fc82-78b9-405f-a670-41975db26384" />

<img width="1200" height="468" alt="WhatsApp Image 2026-07-30 at 6 45 16 PM" src="https://github.com/user-attachments/assets/c01db459-544b-492f-97e4-62fa03fe7249" />














