

```powershell
$vm="VM300098957"
$iso="D:\ISO\en-us_windows_server_2022_updated_july_2023_x64_dvd_541692c3.iso"

# 1. Create VM GEN1 (stable G6)
New-VM -Name $vm `
  -Generation 1 `
  -MemoryStartupBytes 4GB `
  -NewVHDPath "D:\VMs\$vm\$vm.vhdx" `
  -NewVHDSizeBytes 100GB `
  -SwitchName "External"

# 2. CPU
Set-VMProcessor -VMName $vm -Count 2

# 3. RAM
Set-VMMemory -VMName $vm `
  -DynamicMemoryEnabled $false

# 4. Ajouter ISO (IDE obligatoire en Gen1)
Set-VMDvdDrive -VMName $vm `
  -ControllerNumber 1 `
  -ControllerLocation 0 `
  -Path $iso

# 5. IMPORTANT : Boot CD first (sans toucher BIOS)
# (Hyper-V fait déjà CD en premier automatiquement en Gen1)

# 6. Start
Start-VM -Name $vm

```

```powershell
$vm="VM300098957"
$iso="D:\ISO\en-us_windows_server_2022_updated_july_2023_x64_dvd_541692c3.iso"

# 0. Clean TOTAL
Stop-VM -Name $vm -Force -ErrorAction SilentlyContinue
Remove-VM -Name $vm -Force -ErrorAction SilentlyContinue
Remove-Item "D:\VMs\$vm" -Recurse -Force -ErrorAction SilentlyContinue
```
