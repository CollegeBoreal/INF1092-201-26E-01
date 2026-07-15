#   PROJET INSTALLATION D UNE MACHINE VIRTUEL DANS LE SERVEUR 

Les captures d'écran montrent l'utilisation de plusieurs commandes PowerShell pour obtenir des informations sur une machine virtuelle Hyper-V nommée VM300159437. Ces commandes permettent à un administrateur de vérifier l'état de la machine virtuelle ainsi que sa configuration matérielle.
 Informations générales sur la machine virtuelle Hyper-V

Cette fenêtre PowerShell montre plusieurs commandes qui affichent les caractéristiques de la machine virtuelle VM300159437.

1. Get-VM -Name "VM300159437"

Cette commande affiche les informations générales de la machine virtuelle.

Name : VM300159437 → Nom de la machine virtuelle.
State : Running → La machine virtuelle est actuellement allumée.
CPUUsage : 0 % → Au moment de la capture, le processeur n'était presque pas utilisé.
MemoryAssigned : 4096 MB → La VM utilise actuellement 4 Go de mémoire RAM.
Uptime : 1 heure 51 minutes → La machine fonctionne depuis environ deux heures.
Status : Operating normally → Aucun problème détecté.
Version : 10.0 → Version de configuration Hyper-V de la VM.
2. Get-VMMemory

Cette commande affiche les paramètres de mémoire.

DynamicMemoryEnabled : False
La mémoire dynamique est désactivée.
La VM utilise toujours la quantité de mémoire configurée au démarrage.
Minimum : 512 MB
Valeur minimale possible si la mémoire dynamique était activée.
Startup : 4096 MB
La VM démarre avec 4 Go de RAM.
Maximum : 1048576 MB
Valeur maximale configurée (environ 1 To).
 




![Image](images/WhatsApp%20Image%202026-07-14%20at%2016.19.26%20(1).jpeg)
![Image](images/WhatsApp%20Image%202026-07-14%20at%2016.19.26.jpeg)
![Image](images/WhatsApp%20Image%202026-07-15%20at%2011.03.06%20(1).jpeg)

