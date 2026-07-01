# 300160006
```$vm="VM30016000X"
$iso="D:\ISO\300160006\en_us_windows_server_2022_updated_july_2023_x64_dvd_541692c3.iso"

New-VM -Name $vm -Generation 1 -MemoryStartupBytes 4GB `
  -NewVHDPath "D:\VMs\$vm\$vm.vhdx" -NewVHDSizeBytes 60GB `
  -SwitchName "External"

Set-VMProcessor -VMName $vm -Count 2
Set-VMMemory -VMName $vm -DynamicMemoryEnabled $false

Set-VMDvdDrive -VMName $vm -ControllerNumber 1 -ControllerLocation 0 -Path $iso

Start-VM -Name $vm
```
![images alt](https://github.com/CollegeBoreal/INF1092-201-26E-01/blob/704be770aac05aaff8aad6166f3974d3cc35f787/6.HyperV/300160006/images/WhatsApp%20Image%202026-07-01%20at%2013.18.40.jpeg)
