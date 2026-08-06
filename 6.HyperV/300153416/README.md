6// installation de la VM : ```
$vm="VM300153416"
$iso="E:\ISO\300153416\en-us_windows_server_2022_updated_july_2023_x64_dvd_541692c3.iso"

New-VM -Name $vm -Generation 1 -MemoryStartupBytes 4GB `
  -NewVHDPath "D:\VMs\$vm\$vm.vhdx" -NewVHDSizeBytes 60GB `
  -SwitchName "External"

Set-VMProcessor -VMName $vm -Count 2
Set-VMMemory -VMName $vm -DynamicMemoryEnabled $false

Set-VMDvdDrive -VMName $vm -ControllerNumber 1 -ControllerLocation 0 -Path $iso

Start-VM -Name $vm  /

<img width="2040" height="1536" alt="WhatsApp Image 2026-08-06 at 15 33 38 (1)" src="https://github.com/user-attachments/assets/da26dc76-d845-42c5-bb69-0ffa1758cb9e" />
<img width="2040" height="1536" alt="WhatsApp Image 2026-08-06 at 15 33 38 (2)" src="https://github.com/user-attachments/assets/b26fbdd7-0c17-49aa-9850-caf4849e4d48" />
<img width="2040" height="1536" alt="WhatsApp Image 2026-08-06 at 15 33 38" src="https://github.com/user-attachments/assets/7a1d3b61-9abe-4435-847b-0f69c17dcd19" />

