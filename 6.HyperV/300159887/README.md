```
$vm="VM300159887"
$iso="D:\ISO\30159887\en-us_windows_server_2022_updated_july_2023_x64_dvd_541692c3.iso"

New-VM -Name $vm -Generation 1 -MemoryStartupBytes 4GB `
  -NewVHDPath "D:\VMs\$vm\$vm.vhdx" -NewVHDSizeBytes 60GB `
  -SwitchName "External"

Set-VMProcessor -VMName $vm -Count 2
Set-VMMemory -VMName $vm -DynamicMemoryEnabled $false

Set-VMDvdDrive -VMName $vm -ControllerNumber 1 -ControllerLocation 0 -Path $iso

Start-VM -Name $vm
```
<img width="2048" height="1152" alt="WhatsApp Image 2026-07-14 at 16 14 35" src="https://github.com/user-attachments/assets/0ea2e73b-43a4-4c3e-809d-8f9413be92c9" />
