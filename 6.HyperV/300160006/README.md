# 300160006
# description
L'objectif de ce laboratoire était de créer une machine virtuelle Windows Server 2022 avec Hyper-V. J'ai d'abord téléchargé l'image ISO depuis Azure Education et je l'ai enregistrée dans mon dossier personnel sur le lecteur D:\ISO.

Ensuite, j'ai créé une machine virtuelle de génération 1 en configurant les paramètres demandés : 4 Go de mémoire fixe, 2 processeurs, un disque de 60 Go et un réseau de type External. J'ai ensuite monté l'image ISO, démarré la machine virtuelle et vérifié que l'installation de Windows Server 2022 se lançait correctement.

Enfin, j'ai utilisé les commandes PowerShell pour vérifier la configuration de la machine virtuelle (processeurs, mémoire, disque et réseau) afin de confirmer qu'elle respectait les exigences du laboratoire.

```POWERSHELL
$vm="VM300160006"
$iso="D:\ISO\300160006\en-us_windows_server_2022_updated_july_2023_x64_dvd_541692c3.iso"

New-VM -Name $vm -Generation 1 -MemoryStartupBytes 4GB `
  -NewVHDPath "D:\VMs\$vm\$vm.vhdx" -NewVHDSizeBytes 60GB `
  -SwitchName "External"

Set-VMProcessor -VMName $vm -Count 2
Set-VMMemory -VMName $vm -DynamicMemoryEnabled $false

Set-VMDvdDrive -VMName $vm -ControllerNumber 1 -ControllerLocation 0 -Path $iso

Start-VM -Name $vm
```
![images alt](https://github.com/CollegeBoreal/INF1092-201-26E-01/blob/704be770aac05aaff8aad6166f3974d3cc35f787/6.HyperV/300160006/images/WhatsApp%20Image%202026-07-01%20at%2013.18.40.jpeg)
![images alt](https://github.com/CollegeBoreal/INF1092-201-26E-01/blob/801c15f61d94f12076ce63a5d0d87fb4bb8046d9/6.HyperV/300160006/images/WhatsApp%20Image%202026-07-14%20at%2017.04.47.jpeg_
