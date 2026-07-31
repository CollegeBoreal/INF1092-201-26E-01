ID : 300155045
Nom : Chouaib Ait
Projet : Hyper-V
Cours : INF1092-201-E26-01

Situation
Lors de cet atelier, j’ai créé et configuré une machine virtuelle Windows Server 2022 à l’aide d’Hyper-V. J’ai configuré la machine virtuelle avec une mémoire RAM fixe de 4 Go, deux processeurs, un disque virtuel de 60 Go et une connexion au commutateur réseau External. J’ai ensuite ajouté le fichier ISO et installé Windows Server 2022 Datacenter avec l’interface graphique.

Les captures d’écran suivantes présentent les principales étapes de l’installation et de la configuration.

Vérification de la machine virtuelle dans Hyper-V
On peut voir que la machine virtuelle VM300160862 est en état Running, ce qui confirme qu’elle est démarrée correctement.


Démarrage de l’installation de Windows Server 2022
Cette capture d’écran montre le démarrage du programme d’installation de Windows Server 2022 à partir du fichier ISO ajouté à la machine virtuelle.


Choix de l’édition de Windows Server 2022
J’ai sélectionné l’édition Windows Server 2022 Datacenter (Desktop Experience) afin d’avoir une interface graphique complète.


Sélection du disque d’installation
Cette capture montre la sélection du disque virtuel de 60 Go sur lequel Windows Server 2022 a été installé.


Installation de Windows Server 2022
Le programme copie les fichiers nécessaires et installe le système d’exploitation sur le disque virtuel. La machine virtuelle redémarre automatiquement pendant cette étape.


Configuration du profil réseau
Après la première ouverture de session, Windows Server demande l’autorisation d’activer la découverte du réseau. J’ai sélectionné Yes afin de permettre la communication avec les autres appareils du réseau local.

Bureau de Windows Server 2022
Cette capture d’écran montre le bureau de Windows Server 2022 après la fin de l’installation. Le système fonctionne correctement et la machine virtuelle VM300160862 est prête à être utilisée et administrée.


Conclusion
L’installation de la machine virtuelle a été réalisée avec succès. La VM utilise la génération 1, une mémoire RAM fixe de 4 Go, deux processeurs et un disque virtuel de 60 Go. Windows Server 2022 Datacenter est installé et la machine virtuelle fonctionne correctement dans Hyper-V.
``` powershell
$vm="VM300160862"
$iso="D:\ISO\300160862\win2022.iso"

New-VM -Name $vm -Generation 1 -MemoryStartupBytes 4GB `
  -NewVHDPath "D:\VMs\$vm\$vm.vhdx" -NewVHDSizeBytes 60GB `
  -SwitchName "External"

Set-VMProcessor -VMName $vm -Count 2
Set-VMMemory -VMName $vm -DynamicMemoryEnabled $false

Set-VMDvdDrive -VMName $vm -ControllerNumber 1 -ControllerLocation 0 -Path $iso

Start-VM -Name $vm
```
<img width="1320" height="1760" alt="WhatsApp Image 2026-07-16 at 19 13 48" src="https://github.com/user-attachments/assets/c94141f2-a4f1-4d43-930a-abddb95ef028" />
<img width="1320" height="1760" alt="WhatsApp Image 2026-07-16 at 19 13 48 (1)" src="https://github.com/user-attachments/assets/4e8087c1-1d49-4990-bb36-5c5fdb450239" />

<img width="1320" height="1760" alt="WhatsApp Image 2026-07-16 at 19 13 48 (2)" src="https://github.com/user-attachments/assets/fd98d72e-db78-4715-ae4f-9d099094131d" />
<img width="1320" height="1760" alt="WhatsApp Image 2026-07-16 at 19 13 48 (3)" src="https://github.com/user-attachments/assets/a8617737-191c-4628-8aba-c5a1d802f36b" />
<img width="1320" height="1760" alt="WhatsApp Image 2026-07-16 at 19 13 48 (4)" src="https://github.com/user-attachments/assets/467c5ac4-79b3-4664-8b12-26bc82168c3e" />
<img width="1536" height="2048" alt="WhatsApp Image 2026-07-16 at 19 14 13" src="https://github.com/user-attachments/assets/9cced2c8-1af5-4120-8b42-73036e5ff867" />
