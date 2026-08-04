Description 

Dans ce laboratoire, j’ai procédé à la mise en place d’une machine virtuelle Windows Server 2022 en utilisant Hyper‑V. Pour commencer, j’ai récupéré l’image ISO de Windows Server 2022 via Azure Education, puis je l’ai placée dans mon répertoire personnel situé sur D:\ISO.

J’ai ensuite créé une machine virtuelle de génération 1 en respectant les paramètres requis : allocation de 4 Go de mémoire fixe, configuration de 2 processeurs virtuels, création d’un disque dur virtuel de 60 Go, et connexion au commutateur réseau External. Après cela, j’ai monté l’ISO sur le lecteur DVD virtuel, puis j’ai démarré la VM afin de vérifier que l’assistant d’installation de Windows Server 2022 se lançait correctement.

Pour terminer, j’ai utilisé plusieurs commandes PowerShell afin de contrôler la configuration de la machine virtuelle. J’ai validé que la mémoire, le nombre de processeurs, le disque virtuel et la carte réseau correspondaient bien aux exigences du laboratoire.

$vm="VM300160424"
$iso="D:\ISO\300160424\en-us_windows_server_2022_updated_july_2023_x64_dvd_541692c3.iso"

New-VM -Name $vm -Generation 1 -MemoryStartupBytes 4GB `
  -NewVHDPath "D:\VMs\$vm\$vm.vhdx" -NewVHDSizeBytes 60GB `
  -SwitchName "External"

Set-VMProcessor -VMName $vm -Count 2
Set-VMMemory -VMName $vm -DynamicMemoryEnabled $false

Set-VMDvdDrive -VMName $vm -ControllerNumber 1 -ControllerLocation 0 -Path $iso

Start-VM -Name $vm

<img width="2000" height="1126" alt="WhatsApp Image 2026-08-04 at 18 18 02" src="https://github.com/user-attachments/assets/85d40516-0dba-4a88-bcf6-f04271b362b7" />
<img width="2000" height="1126" alt="WhatsApp Image 2026-08-04 at 18 18 02 (1)" src="https://github.com/user-attachments/assets/44edec50-4d78-40ad-a388-7e26273778d4" />
<img width="2000" height="1126" alt="WhatsApp Image 2026-08-04 at 18 18 02 (2)" src="https://github.com/user-attachments/assets/f312c7ea-0176-43cd-86b5-a462cfc35d28" />
<img width="2000" height="1126" alt="WhatsApp Image 2026-08-04 at 18 18 02 (5)" src="https://github.com/user-attachments/assets/60faf088-defe-4862-bc8a-ce8a8ec7e84d" />
<img width="2000" height="1126" alt="WhatsApp Image 2026-08-04 at 18 18 02 (6)" src="https://github.com/user-attachments/assets/5c11c63d-4660-4441-8e85-407b94cc91fd" />



