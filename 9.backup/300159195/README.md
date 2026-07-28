## ISLEM TOUADJNI

Cette capture confirme que l’exportation de la machine virtuelle VM300159195 a été effectuée avec succès. La commande Test-Path retourne True, ce qui prouve que le dossier de sauvegarde existe. Le contenu du dossier affiche également les répertoires Snapshots, Virtual Hard Disks et Virtual Machines nécessaires à la restauration de la machine virtuelle.

<img width="2040" height="942" alt="image" src="https://github.com/user-attachments/assets/3a4e1901-de16-424f-80aa-c51b483d1b88" />

Cette capture montre les fichiers créés pendant la sauvegarde, notamment le disque virtuel VHDX et les fichiers de configuration de la machine virtuelle. Après la sauvegarde, la machine virtuelle VM300159195 a été redémarrée. La commande de vérification confirme que son état est Running et que son fonctionnement est normal.

<img width="2040" height="942" alt="image" src="https://github.com/user-attachments/assets/8492a806-6863-45d2-ba6d-ff829b20533b" />

## Conclusion 

La sauvegarde de la machine virtuelle VM300159195 a été réalisée avec succès à l’aide de PowerShell. La machine virtuelle a d’abord été arrêtée, puis exportée vers le dossier E:\Backups\HyperV. La présence du disque virtuel VHDX et des fichiers de configuration confirme que la sauvegarde est complète. Enfin, la machine virtuelle a été redémarrée et son état Running confirme qu’elle fonctionne normalement après l’opération.

