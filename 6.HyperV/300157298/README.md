Rapport de laboratoire – Mise en place d’une machine virtuelle Windows Server 2022 avec Hyper-V
1. Objectif du laboratoire

L’objectif de ce laboratoire était de mettre en place une machine virtuelle fonctionnant sous Windows Server 2022 à l’aide du gestionnaire de virtualisation Hyper-V. L’installation devait être effectuée à partir d’une image ISO obtenue par l’intermédiaire d’Azure Education.

La machine virtuelle devait respecter les paramètres suivants :

Génération : 1
Mémoire vive : 4 Go fixes
Processeurs virtuels : 2
Disque dur virtuel : 60 Go
Réseau : commutateur virtuel External

L’objectif était également de réaliser une partie de la configuration à l’aide de PowerShell, puis de vérifier les paramètres une fois l’installation terminée.

2. Obtention de l’image ISO

Dans un premier temps, l’image ISO de Windows Server 2022 a été téléchargée depuis le portail Azure Education. Une fois le téléchargement terminé, le fichier a été placé dans le répertoire personnel suivant :

D:\ISO\300157606\

Ce fichier ISO a ensuite servi de support d’installation pour le système d’exploitation de la machine virtuelle.

3. Création de la machine virtuelle

La machine virtuelle a été créée à l’aide de la commande PowerShell New-VM. Lors de cette étape, les principales caractéristiques de la VM ont été définies conformément aux exigences du laboratoire.

Les paramètres utilisés étaient les suivants :

Paramètre	Configuration
Nom de la VM	VM300157298
Génération	Génération 1
Mémoire initiale	4 Go
Disque virtuel	60 Go
Réseau	External

La création par PowerShell a permis de préparer rapidement la structure de base de la machine virtuelle.

4. Configuration des ressources

Après la création de la VM, certains paramètres ont été ajustés afin de correspondre exactement aux consignes.

La machine virtuelle a été configurée avec 2 processeurs virtuels. La mémoire dynamique a été désactivée afin que la machine conserve en permanence une allocation fixe de 4 Go de RAM.

Le fichier ISO de Windows Server 2022 a ensuite été associé au lecteur DVD virtuel de la machine. Cette configuration permettait à la VM de démarrer sur l’image d’installation lors de son lancement.

5. Installation de Windows Server 2022

Une fois la configuration terminée, la machine virtuelle a été démarrée à partir de l’interface Hyper-V. Le démarrage a permis d’accéder au programme d’installation de Windows Server 2022 présent sur le fichier ISO.

L’installation du système d’exploitation a été effectuée normalement jusqu’à sa finalisation. Après le redémarrage de la machine virtuelle, Windows Server 2022 s’est lancé correctement et Server Manager s’est affiché, confirmant que le système avait été installé avec succès.

6. Vérification de la configuration

Après l’installation, une série de commandes PowerShell a été utilisée afin de contrôler les paramètres de la machine virtuelle et de confirmer qu’ils correspondaient aux exigences du laboratoire.

Les commandes utilisées étaient :

Get-VM
Get-VMMemory
Get-VMProcessor
Get-VMHardDiskDrive
Get-VMNetworkAdapter

Les vérifications ont permis de confirmer les informations suivantes :

Élément vérifié	Résultat
Nom	VM300157298
État	Running
Génération	1
Mémoire	4 Go
Mémoire dynamique	Désactivée
Processeurs virtuels	2
Disque virtuel	60 Go
Connexion réseau	External

Les résultats obtenus montrent que la configuration finale correspondait aux paramètres demandés.

7. Captures d’écran

Les captures d’écran placées à la fin du rapport permettent de présenter les différentes étapes réalisées pendant le laboratoire. Elles montrent notamment la création et la configuration de la machine virtuelle, les paramètres matériels utilisés, le démarrage de Windows Server 2022 ainsi que les vérifications effectuées avec PowerShell.

Ces captures servent également à démontrer que les paramètres de la VM ont bien été configurés conformément aux exigences.

8. Conclusion

Ce laboratoire m’a permis de mettre en pratique la création et la gestion d’une machine virtuelle Windows Server 2022 avec Hyper-V. J’ai notamment appris à utiliser PowerShell pour créer une VM et à modifier ses principales ressources matérielles.

La configuration finale répond aux exigences du laboratoire : la machine VM300157606 est de génération 1, dispose de 4 Go de mémoire fixe, de 2 processeurs virtuels, d’un disque de 60 Go et est connectée au commutateur réseau External.

L’installation de Windows Server 2022 s’est également déroulée correctement. Les commandes PowerShell utilisées à la fin du laboratoire ont permis de confirmer que les ressources attribuées et les paramètres réseau étaient conformes. Cette activité m’a donc permis de mieux comprendre le fonctionnement d’Hyper-V ainsi que les principales étapes nécessaires à la création et à la configuration d’un serveur virtuel.
