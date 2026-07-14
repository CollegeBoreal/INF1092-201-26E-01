# Rapport d'atelier - Hyper-V

**ID :** 300151722  
**Nom :** Islam Oustani  
**Projet :** Hyper-V  
**Cours :** INF1092-201-E26-01

## Situation

Lors de cet atelier, nous avons installé et configuré une machine virtuelle Windows Server 2022 à l'aide d'Hyper-V. Nous avons créé un commutateur virtuel de type **External**, installé Windows Server 2022, configuré une adresse IP statique, vérifié la connectivité réseau, activé le Bureau à distance (RDP) et confirmé le bon fonctionnement de la machine virtuelle.

Les captures d'écran suivantes présentent les principales étapes de l'installation et de la configuration.

# Vérification de la machine virtuelle dans Hyper-V
On peut voir que la machine virtuelle VM300151722 est en état Running, ce qui confirme qu'elle est démarrée correctement
<img width="1320" height="1760" alt="1" src="https://github.com/user-attachments/assets/5032c6e2-108a-4741-a903-e1d9a24faac8" />

# Démarrage de l'installation de Windows Server 2022
<img width="4032" height="3024" alt="2" src="https://github.com/user-attachments/assets/222cb6f0-54d1-49d5-b732-15b57ecd7dda" />

# Choix de l'édition de Windows Server 2022
<img width="4032" height="3024" alt="2" src="https://github.com/user-attachments/assets/8ecfb762-8689-463d-893f-7700759872c1" />

# Sélection du disque d'installation
<img width="5120" height="3840" alt="3 (2)" src="https://github.com/user-attachments/assets/854d6782-fc05-4fe8-9758-df745775aa47" />

# Configuration du compte Administrator
Cette capture d'écran montre la configuration du mot de passe du compte **Administrator**. Cette étape permet de sécuriser le serveur avant la première ouverture de session.
<img width="4032" height="3024" alt="4" src="https://github.com/user-attachments/assets/74688f58-152b-4dc3-9d0a-19277f0b1903" />

# Configuration du profil réseau
La première ouverture de session sur Windows Server 2022. Le serveur affiche le **Server Manager** et demande l'autorisation d'activer la découverte du réseau. J'ai sélectionné **Yes** afin de permettre la communication avec les autres ordinateurs du réseau local.
<img width="4032" height="3024" alt="5" src="https://github.com/user-attachments/assets/9d7b5b43-72e4-407c-b7ef-6a1e94cd2644" />

# ureau de Windows Server 2022
Le bureau de **Windows Server 2022** après la première ouverture de session. L'installation du système d'exploitation est terminée avec succès et la machine virtuelle **VM300151722** est maintenant prête pour les étapes de configuration du réseau et de l'administration.
<img width="3024" height="4032" alt="6" src="https://github.com/user-attachments/assets/73dace35-49c4-4368-83d3-d93bac9361b6" />


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
