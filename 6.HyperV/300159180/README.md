PROJET INSTALLATION D UNE MACHINE VIRTUEL DANS LE SERVEUR .
Les captures d'écran montrent l'utilisation de plusieurs commandes PowerShell pour obtenir des informations sur une machine virtuelle Hyper-V nommée VM300159180. Ces commandes permettent à un administrateur de vérifier l'état de la machine virtuelle ainsi que sa configuration matérielle. Informations générales sur la machine virtuelle Hyper-V

Cette fenêtre PowerShell montre plusieurs commandes qui affichent les caractéristiques de la machine virtuelle VM300159180.

Get-VM -Name "VM300159180"
Cette commande affiche les informations générales de la machine virtuelle.

Name : VM300159180 → Nom de la machine virtuelle. State : Running → La machine virtuelle est actuellement allumée. CPUUsage : 0 % → Au moment de la capture, le processeur n'était presque pas utilisé. MemoryAssigned : 4096 MB → La VM utilise actuellement 4 Go de mémoire RAM. Uptime : 1 heure 51 minutes → La machine fonctionne depuis environ deux heures. Status : Operating normally → Aucun problème détecté. Version : 10.0 → Version de configuration Hyper-V de la VM. 2. Get-VMMemory

Cette commande affiche les paramètres de mémoire.

DynamicMemoryEnabled : False La mémoire dynamique est désactivée. La VM utilise toujours la quantité de mémoire configurée au démarrage. Minimum : 512 MB Valeur minimale possible si la mémoire dynamique était activée. Startup : 4096 MB La VM démarre avec 4 Go de RAM. Maximum : 1048576 MB Valeur maximale configurée (environ 1 To).
<img width="4000" height="3000" alt="20260721_161351" src="https://github.com/user-attachments/assets/a916d15a-1edb-4493-b2b5-54b7d1e942ce" />
<img width="4000" height="3000" alt="20260721_161330" src="https://github.com/user-attachments/assets/91a604aa-1328-404c-bb34-b03acc22728e" />
<img width="4000" height="3000" alt="20260721_161335" src="https://github.com/user-attachments/assets/774beae4-c978-4bc6-84ea-b7ca08456e61" />
<img width="4000" height="3000" alt="20260721_161258" src="https://github.com/user-attachments/assets/a1c3a672-f9ec-433b-a34b-6b0a755e04f1" />



