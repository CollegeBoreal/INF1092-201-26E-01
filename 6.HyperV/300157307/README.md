Rapport de laboratoire – Création d'une machine virtuelle Windows Server 2022 avec Hyper-V

L'objectif de ce laboratoire était de créer une machine virtuelle Windows Server 2022 à l'aide d'Hyper-V en utilisant un fichier ISO téléchargé depuis Azure Education. La machine virtuelle devait être configurée avec une génération 1, 4 Go de mémoire RAM fixe, deux processeurs virtuels, un disque dur virtuel de 60 Go ainsi qu'une connexion au commutateur réseau External.

La première étape a consisté à télécharger le fichier ISO de Windows Server 2022 à partir du portail Azure Education. Une fois le téléchargement terminé, le fichier a été enregistré dans le dossier D:\ISO\300157606\ afin d'être utilisé pour l'installation.

Ensuite, la machine virtuelle a été créée avec PowerShell en utilisant la commande New-VM. Lors de cette étape, le nom VM300157606 a été attribué à la machine, une génération 1 a été choisie, une mémoire de 4 Go a été allouée, un disque dur virtuel de 60 Go a été créé et la machine a été reliée au commutateur réseau External.

Après la création de la machine virtuelle, quelques configurations supplémentaires ont été effectuées. Le nombre de processeurs virtuels a été fixé à deux, la mémoire dynamique a été désactivée et le fichier ISO de Windows Server 2022 a été monté dans le lecteur DVD virtuel afin de permettre le démarrage de l'installation.

La machine virtuelle a ensuite été démarrée pour lancer l'installation de Windows Server 2022. Une fois l'installation terminée, le système d'exploitation s'est ouvert correctement et Server Manager s'est lancé automatiquement, confirmant que l'installation avait été réalisée avec succès.

Pour vérifier que la machine virtuelle respectait toutes les exigences du laboratoire, plusieurs commandes PowerShell ont été utilisées, notamment Get-VM, Get-VMMemory, Get-VMProcessor, Get-VMHardDiskDrive et Get-VMNetworkAdapter. Les résultats ont confirmé que la machine virtuelle était en cours d'exécution, qu'elle utilisait une génération 1, disposait de 4 Go de mémoire fixe, de deux processeurs virtuels, d'un disque dur de 60 Go et qu'elle était bien connectée au commutateur réseau External.

En conclusion, ce laboratoire m'a permis de mieux comprendre le processus de création et de configuration d'une machine virtuelle avec Hyper-V en utilisant PowerShell. J'ai appris à créer une machine virtuelle, à modifier ses paramètres, à installer Windows Server 2022 à partir d'un fichier ISO et à vérifier sa configuration à l'aide de commandes PowerShell. Les captures d'écran ajoutées à la fin du rapport présentent les différentes étapes du laboratoire ainsi que les résultats obtenus lors des vérifications.

<img width="607" height="338" alt="Screenshot 2026-07-28 132218" src="https://github.com/user-attachments/assets/f4813f6c-7cf3-43cc-bdd8-c412db32efde" />
<img width="522" height="292" alt="Screenshot 2026-07-28 132140" src="https://github.com/user-attachments/assets/fcd47d4a-026c-4b84-8759-d5fc0733702c" />
<img width="662" height="370" alt="Screenshot 2026-07-28 132101" src="https://github.com/user-attachments/assets/3ad35b72-4802-44f5-b9b4-25ccc6c096ea" />
<img width="304" height="184" alt="Screenshot 2026-07-28 131826" src="https://github.com/user-attachments/assets/a6a61ca0-89fb-4604-bc5a-85fb6ddb853a" />
<img width="852" height="514" alt="Screenshot 2026-07-28 131712" src="https://github.com/user-attachments/assets/1eefaa72-3751-45a5-b1d9-035a50fc4dbe" />



