6// installation de la VM : ``` $vm="VM300147253vm" $iso="E:\ISO\300153416\en-us_windows_server_2022_updated_july_2023_x64_dvd_541692c4.iso"

Nouvelle-VM -Nom $vm -Génération 1 -MémoireDémarrage4 Go -NewVHDPath "D:\VMs\$vm\$vm.vhdx" -NewVHDSizeBytes 60GB -NomCommutateur "Externe"

Définir-VMProcessor -VMName $vm -Count 2 Définir-VMMemory -VMName $vm -DynamicMemoryEnabled $false

Set-VMDvdDrive -VMName $vm -ControllerNumber 1 -ControllerLocation 0 -Path $iso

Démarrer-VM -Nom $vm /
<img width="1239" height="1062" alt="image" src="https://github.com/user-attachments/assets/4660089a-3375-4e15-9017-38e43a0e223e" />
