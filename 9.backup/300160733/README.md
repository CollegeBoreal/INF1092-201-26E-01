Nom : Yanis Belhadi 300160733

Laboratoire – Sauvegarde et restauration d’une VM Hyper-V :

Introduction :

Dans ce laboratoire, j’ai réalisé la sauvegarde et la restauration d’une machine virtuelle Hyper-V avec PowerShell. La machine utilisée est VM300160733. L’objectif est d’exporter la machine virtuelle dans un dossier de sauvegarde, de vérifier les fichiers créés, puis d’importer une copie de la VM afin de confirmer que la restauration fonctionne correctement.

Préparation de la sauvegarde :

Dans cette étape, je définis le nom de la machine virtuelle VM300160733 et le chemin de sauvegarde D:\Backups\HyperV. Je crée ensuite le dossier de sauvegarde, vérifie l’état de la VM avec Get-VM, puis je l’arrête avant de commencer l’exportation.

<img width="1766" height="1015" alt="image" src="https://github.com/user-attachments/assets/40e32a68-4518-4b9a-8afa-96a255442ccf" />

Exportation de la machine virtuelle :

La machine virtuelle VM300160733 est arrêtée avant la sauvegarde. Elle est ensuite exportée dans le dossier D:\Backups\HyperV. La commande Get-ChildItem permet de vérifier les dossiers et les fichiers créés pendant l’exportation. Une deuxième tentative d’exportation indique que le dossier existe déjà.

<img width="1910" height="1051" alt="image" src="https://github.com/user-attachments/assets/86c60914-7f02-4bb7-827e-de96166ff206" />

Vérification des fichiers de sauvegarde :

Cette étape permet de vérifier le contenu complet de la sauvegarde de VM300160733. On peut voir le dossier Virtual Hard Disks contenant le fichier .vhdx ainsi que le dossier Virtual Machines contenant les fichiers de configuration de la machine virtuelle.

<img width="1826" height="997" alt="image" src="https://github.com/user-attachments/assets/279877a5-8eda-4462-9789-08cb237da022" />

Nouvelle exportation et vérification :

L’ancienne sauvegarde est supprimée avec Remove-Item, puis une nouvelle exportation de VM300160733 est effectuée. Les fichiers sont ensuite vérifiés pour confirmer que la sauvegarde a bien été créée. La machine virtuelle originale est également redémarrée et son fichier de configuration .vmcx est identifié pour préparer la restauration.

<img width="1807" height="1007" alt="image" src="https://github.com/user-attachments/assets/845fb103-d42b-4f38-8403-724fa1e5b7ff" />

Importation de la machine virtuelle sauvegardée :

Le fichier de configuration de la sauvegarde est utilisé avec la commande Import-VM. L’option Copy avec GenerateNewId permet de créer une nouvelle copie de la machine virtuelle avec un identifiant unique. La copie importée est ensuite renommée VM300160733_RESTAUREE afin de la distinguer de la VM originale.

<img width="1846" height="1025" alt="image" src="https://github.com/user-attachments/assets/b7ddb34a-affb-4203-a159-4b98a30f6a1e" />

Vérification de la VM restaurée :

La machine VM300160733_RESTAUREE est démarrée afin de tester la restauration. La commande Get-VM permet de vérifier que la machine originale et la machine restaurée fonctionnent correctement. Les deux machines affichent le statut Operating normally, ce qui confirme que la restauration a réussi. La VM restaurée est ensuite arrêtée après le test.

<img width="1286" height="940" alt="image" src="https://github.com/user-attachments/assets/5c6478f9-da4e-4266-8ce8-9a78efc4a258" />

Conclusion :

Ce laboratoire m’a permis d’apprendre à sauvegarder, vérifier et restaurer une machine virtuelle Hyper-V avec PowerShell. J’ai réussi à exporter VM300160733, à vérifier les fichiers de sauvegarde et à importer une copie nommée VM300160733_RESTAUREE. Le démarrage et le statut Operating normally confirment que la sauvegarde et la restauration ont été réalisées avec succès.
