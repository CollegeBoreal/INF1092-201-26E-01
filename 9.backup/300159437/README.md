# Laboratoire Hyper-V (Export et Import d'une VM)

L'objectif du laboratoire était d'apprendre à :

arrêter une machine virtuelle;
sauvegarder (exporter) une VM;
restaurer (importer) une VM;
démarrer la VM restaurée;
vérifier que la restauration s'est déroulée correctement.

# Étape 1 : Arrêt de la machine virtuelle

J'ai arrêté la machine virtuelle VM300159437 avec la commande :

 Stop-VM -Name "VM300159437"
 
 ![Image](images/WhatsApp%20Image%202026-07-31%20at%2010.45.06.jpeg)

# Étape 2 : Sauvegarde (Export)

Une fois la machine arrêtée, j'ai créé une sauvegarde avec :

Export-VM -Name "VM300159437" -Path "E:\Backups\HyperV"

![Image](images/WhatsApp%20Image%202026-07-31%20at%2010.45.07%20(1).jpeg)

# Étape 3 : Vérification de la sauvegarde

J'ai vérifié que les fichiers avaient bien été créés avec :

Get-ChildItem "E:\Backups\HyperV\VM300159437"

# Étape 4 : Restauration (Import)

J'ai restauré la machine virtuelle à partir du dossier de sauvegarde avec la commande :

Import-VM -Path "E:\Backups\HyperV\VM300159437\Virtual Machines\*.vmcx"


![Image](images/WhatsApp%20Image%202026-07-31%20at%2010.45.06%20(1).jpeg)
# Étape 5 : Démarrage de la machine virtuelle

Après l'importation, j'ai démarré la VM avec :

Start-VM -Name "VM300159437"
