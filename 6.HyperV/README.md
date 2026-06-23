# 🧪 INF1092 – Création d’une VM (Hyper-V)

| #️⃣ | Participations |
|-|-|
| 1️⃣ | [:tada: Participation](.scripts/Participation-group1.md) |
| 2️⃣ | [:tada: Participation](.scripts/Participation-group2.md) |
| 3️⃣ | [:tada: Participation](.scripts/Participation-group3.md) |
| 4️⃣ | [:tada: Participation](.scripts/Participation-group4.md) |
|    | [:tada: Participation](.scripts/Participation-group5.md) |


## 🗄️ Rack 2️⃣ - 📇 42U

| Rack | U#️⃣| 🏙️ Serveurs | 🏷️  | S/N #️⃣        | Host IP                    | RAM  | CPU | HD      | Comments                             |
| ---- | -:| ------------| --- | ------------ | --------------------------- | ---: | ---:| ------- | ------------------------------------ |
| 2️⃣   | 27 | 🅰️ G6️⃣      | S19 | MXQ00309PP✅ | 10.7.237.7                  | 64GB | 16  | 273.4G  |   
| 2️⃣   | 26 | 🅰️ G6️⃣      | S39 | USE025N7B5✅ | 10.7.237.35                 | 64GB | 16  | 273.4G  | 🚨 $\color{red}RAM-P2(1)$
| 2️⃣   | 25 | 🅰️ G6️⃣      | S25 | MXQ016001V✅ | 10.7.237.24                 | 64GB | 16  | 273.4G  |   
| 2️⃣   | 24 | 🅰️ G6️⃣      | S13 | MXQ0030BLP✅ | 10.7.237.28                 | 64GB | 16  | 273.4G  | 


## 🎯 Objectif

Créer une machine virtuelle **Windows Server 2022** fonctionnelle avec Hyper‑V.

***

# ✅ 🟢 Étapes à suivre (copier/coller)

## 1. 📌 Variables (À MODIFIER) :id:

```powershell
$vm="VMXXXXXXX"   # 👉 Remplacer par TON numéro étudiant
$iso="D:\ISO\XXXXXXX\windows_server_2022.iso"  # 👉 Adapter chemin ISO
```

***

## 2. 🖥️ Création de la VM

```powershell
New-VM -Name $vm `
  -Generation 1 `
  -MemoryStartupBytes 4GB `
  -NewVHDPath "D:\VMs\$vm\$vm.vhdx" `
  -NewVHDSizeBytes 60GB `
  -SwitchName "External"
```

👉 Pourquoi GEN1 ?  
➡️ Plus stable sur les serveurs physiques (ex: G6 en laboratoire)

***

## 3. ⚙️ Configuration CPU

```powershell
Set-VMProcessor -VMName $vm -Count 2
```

***

## 4. 🧠 Configuration RAM

```powershell
Set-VMMemory -VMName $vm -DynamicMemoryEnabled $false
```

***

## 5. 💿 Monter l’ISO (OBLIGATOIRE)

```powershell
Set-VMDvdDrive -VMName $vm `
  -ControllerNumber 1 `
  -ControllerLocation 0 `
  -Path $iso
```

👉 Important :

* GEN1 = contrôleur IDE uniquement pour le DVD

***

## 6. ▶️ Démarrer la VM

```powershell
Start-VM -Name $vm
```

***

# 🔍 🟢 Vérification (OBLIGATOIRE)

```powershell
Get-VM -Name $vm
Get-VMMemory -VMName $vm
Get-VMProcessor -VMName $vm
Get-VMHardDiskDrive -VMName $vm
Get-VMNetworkAdapter -VMName $vm | Select VMName,SwitchName
```

***

# ⚠️ Points importants (à comprendre)

✅ Boot automatique sur ISO (pas besoin BIOS)  
✅ Switch réseau = **External**  
✅ Disque = **60GB minimum**  
✅ RAM fixe = **4GB recommandé**

***

# ❌ 🔴 Recommencer proprement (si erreur)

```powershell
Stop-VM -Name $vm -Force -ErrorAction SilentlyContinue
Remove-VM -Name $vm -Force -ErrorAction SilentlyContinue
Remove-Item "D:\VMs\$vm" -Recurse -Force -ErrorAction SilentlyContinue
```

***

## 🚀 Version ultra‑résumée (cheat sheet étudiant)

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
