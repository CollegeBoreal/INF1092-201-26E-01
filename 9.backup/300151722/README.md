# Rapport d'atelier - Sauvegarde et restauration d'une machine virtuelle Hyper-V

**ID :** 300151722  
**Nom :** Islam Oustani  
**Projet :** Sauvegarde et restauration d’une machine virtuelle Hyper-V  
**Cours :** INF1092-201-E26-01  

## Situation

Lors de cet atelier, j’ai utilisé PowerShell et Hyper-V pour sauvegarder la machine virtuelle **VM300151722**.

La sauvegarde a été enregistrée dans le dossier :

`D:\Backups\HyperV\VM300151722`

J’ai ensuite importé cette sauvegarde comme une nouvelle copie appelée **VM300151722-Restored**.

La vérification finale montre que les fichiers de sauvegarde sont présents et que la machine virtuelle restaurée fonctionne correctement.

## Vérification de la sauvegarde

La commande `Get-ChildItem` m’a permis de vérifier le contenu de la sauvegarde.

La sauvegarde contient les dossiers suivants :

- **Snapshots**
- **Virtual Hard Disks**
- **Virtual Machines**

Elle contient également :

- le disque virtuel `VM300151722.vhdx`;
- le fichier de configuration `.vmcx`;
- les fichiers d’état de la machine virtuelle.

## Vérification de la restauration

J’ai utilisé la commande `Get-VM` pour vérifier que la machine virtuelle restaurée existe dans Hyper-V.

La machine virtuelle **VM300151722-Restored** apparaît dans la liste des machines virtuelles.

Son état est **Running** et son statut est **Operating normally**, ce qui confirme que la restauration a réussi.

## Photo du résultat

<img width="912" height="928" alt="9" src="https://github.com/user-attachments/assets/8882cc71-e91a-4f35-93f4-9415f5bcd970" />


## Résultat

La machine virtuelle **VM300151722** a été sauvegardée avec succès.

La copie **VM300151722-Restored** a été importée et démarrée correctement dans Hyper-V.

La sauvegarde et la restauration de la machine virtuelle ont donc été réalisées avec succès.
