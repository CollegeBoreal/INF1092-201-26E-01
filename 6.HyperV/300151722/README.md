# Rapport d'atelier - Hyper-V

ID : 300151722
Projet : 6.HyperV
Cours : INF1092-201-E26-01

Lors de cet atelier, nous avons créé une machine virtuelle avec Hyper-V sur Windows Server 2022. Nous avons utilisé le fichier ISO téléchargé précédemment afin d'installer le système d'exploitation dans la machine virtuelle.

Nous avons configuré les ressources de la machine virtuelle, notamment la mémoire RAM, le processeur et le disque virtuel. Par la suite, nous avons démarré la machine virtuelle et vérifié son bon fonctionnement.

Les captures d'écran suivantes montrent les principales étapes réalisées durant cet atelier.

```powershell
$vm="VMXXXXXXX"
$iso="D:\ISO\XXXXXXX\win2022.iso"

New-VM -Name $vm -Generation 1 -MemoryStartupBytes 4GB `
  -NewVHDPath "D:\VMs\$vm\$vm.vhdx" -NewVHDSizeBytes 60GB `
  -SwitchName "External"

Set-VMProcessor -VMName $vm -Count 2
Set-VMMemory -VMName $vm -DynamicMemoryEnabled $false

Set-VMDvdDrive -VMName $vm -ControllerNumber 1 -ControllerLocation 0 -Path $iso

Start-VM -Name $vm
```
