Rapport d’atelier – Sauvegarde et restauration d’une machine virtuelle Hyper-V

ID : [300160862]
Nom : Yamna Cherif
Projet : Sauvegarde et restauration d’une machine virtuelle Hyper-V
Cours : INF1092-201-E26-01

Situation

Dans ce laboratoire, j’ai utilisé PowerShell et Hyper-V pour créer une copie de sauvegarde de ma machine virtuelle VMMONID.

J’ai enregistré les données de la machine virtuelle dans le dossier suivant :

D:\Backups\HyperV\VMMONID

Après l’exportation, j’ai vérifié le contenu du dossier pour m’assurer que les fichiers importants avaient été sauvegardés.

J’ai ensuite importé cette sauvegarde dans Hyper-V sous la forme d’une nouvelle machine virtuelle. Pour la différencier de la machine originale, je l’ai nommée VMMONID-Restored.

Enfin, j’ai démarré la machine restaurée et vérifié son état afin de confirmer qu’elle fonctionnait normalement.

Vérification de la sauvegarde

J’ai utilisé la commande Get-ChildItem pour afficher tous les éléments enregistrés dans le dossier de sauvegarde.

Le résultat montrait les dossiers suivants :

Snapshots
Virtual Hard Disks
Virtual Machines

Le dossier de sauvegarde contenait aussi :

le disque dur virtuel VMMONID.vhdx;
le fichier de configuration avec l’extension .vmcx;
les fichiers liés à l’état de la machine virtuelle.

La présence de ces éléments confirme que la machine virtuelle a été exportée correctement et que sa sauvegarde est complète.

Vérification de la restauration

Après l’importation, j’ai exécuté la commande Get-VM pour afficher les machines virtuelles disponibles dans Hyper-V.

La nouvelle machine VMMONID-Restored apparaissait correctement dans la liste.

Son état était Running, ce qui signifie qu’elle était démarrée. Son statut indiquait Operating normally, ce qui confirme qu’aucun problème de fonctionnement n’a été détecté.

Photo du résultat

Insérer ici la capture d’écran montrant la machine virtuelle restaurée et son état.

Résultat

La sauvegarde de la machine virtuelle VMMONID a été réalisée avec succès dans le dossier prévu.

Les fichiers nécessaires à la restauration étaient présents. La sauvegarde a ensuite été importée sous le nom VMMONID-Restored.

La machine virtuelle restaurée a démarré normalement. Les opérations de sauvegarde, d’importation et de vérification ont donc été complétées avec succès.

<img width="1600" height="1200" alt="0000000000" src="https://github.com/user-attachments/assets/f9bce2d5-a9bb-4cdf-803c-82f3c284d0e4" />

