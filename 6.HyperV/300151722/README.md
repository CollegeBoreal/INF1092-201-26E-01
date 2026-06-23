# Rapport d'atelier - Hyper-V

ID : 300151722
Projet : 6.HyperV
Cours : INF1092-201-E26-01

J’ai commencé par installer le rôle Hyper-V sur le serveur et les outils de gestion nécessaires. Ensuite, j’ai créé un commutateur virtuel de type External afin de permettre l’accès réseau à la machine virtuelle. J’ai téléchargé l’image ISO de Windows Server 2022 depuis Azure Education et je l’ai enregistrée dans mon dossier personnel.

Par la suite, j’ai créé une machine virtuelle nommée VM300151722 en utilisant Hyper-V. La machine a été configurée avec une mémoire fixe de 4 Go, deux processeurs, un disque virtuel de 60 Go et un adaptateur réseau connecté au commutateur External. J’ai ensuite monté le fichier ISO de Windows Server 2022 sur le lecteur DVD virtuel de la machine.

Après le démarrage de la machine virtuelle, l’installation de Windows Server 2022 s’est lancée correctement. J’ai choisi l’édition Windows Server 2022 Standard (Desktop Experience), accepté les paramètres d’installation et procédé à l’installation sur le disque virtuel de 60 Go. Une fois l’installation terminée, j’ai configuré le compte Administrator avec le mot de passe demandé et ouvert une session.

Finalement, j’ai vérifié que la machine virtuelle fonctionnait correctement dans Hyper-V et que Windows Server 2022 démarrait normalement. Les objectifs du laboratoire ont été atteints avec succès.


```powershell
$vm="VM300151722"
$iso="E:\ISO\300151722\en-us_windows_server_2022_updated_july_2023_x64_dvd_541692c3.iso"

New-VM -Name $vm -Generation 1 -MemoryStartupBytes 4GB `
  -NewVHDPath "D:\VMs\$vm\$vm.vhdx" -NewVHDSizeBytes 60GB `
  -SwitchName "External"

Set-VMProcessor -VMName $vm -Count 2
Set-VMMemory -VMName $vm -DynamicMemoryEnabled $false

Set-VMDvdDrive -VMName $vm -ControllerNumber 1 -ControllerLocation 0 -Path $iso

Start-VM -Name $vm
```
