
# 300159672

## description

L'objectif de ce laboratoire était de créer une machine virtuelle Windows Server 2022 avec Hyper-V. J'ai d'abord téléchargé l'image ISO depuis Azure Education et je l'ai enregistrée dans mon dossier personnel sur le lecteur D:\ISO.

Ensuite, j'ai créé une machine virtuelle de génération 1 en configurant les paramètres demandés : 4 Go de mémoire fixe, 2 processeurs, un disque de 60 Go et un réseau de type External. J'ai ensuite monté l'image ISO, démarré la machine virtuelle et vérifié que l'installation de Windows Server 2022 se lançait correctement.

Enfin, j'ai utilisé les commandes PowerShell pour vérifier la configuration de la machine virtuelle (processeurs, mémoire, disque et réseau) afin de confirmer qu'elle respectait les exigences du laboratoire.

```powershell
$vm="VM300159672"
$iso="D:\ISO\300159672\en-us_windows_server_2022_updated_july_2023_x64_dvd_541692c3.iso"

New-VM -Name $vm -Generation 1 -MemoryStartupBytes 4GB `
  -NewVHDPath "D:\VMs\$vm\$vm.vhdx" -NewVHDSizeBytes 60GB `
  -SwitchName "External"

Set-VMProcessor -VMName $vm -Count 2
Set-VMMemory -VMName $vm -DynamicMemoryEnabled $false

Set-VMDvdDrive -VMName $vm -ControllerNumber 1 -ControllerLocation 0 -Path $iso

Start-VM -Name $vm
```

