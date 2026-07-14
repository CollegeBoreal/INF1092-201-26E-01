##Rapport d'atelier - Installation d'un disque NVMe

ID : 300151722
Projet : 5.NVMe
Cours : INF1092-201-E26-01

Lors de cet atelier, nous avons installé un disque NVMe sur le serveur. Nous avons vérifié que le matériel était correctement installé, puis nous avons ajouté le disque NVMe.

Après le démarrage de Windows Server 2022, nous avons confirmé que le disque était détecté par le système. Nous avons ensuite formaté le disque afin de pouvoir l'utiliser pour le stockage des données.

Les captures d'écran suivantes montrent les principales étapes de cette installation.

##Installation du disque NVMe
Cette étape sert à ajouter un nouveau disque de stockage au serveur avant de le détecter dans Windows Server.
<img width="4032" height="3024" alt="0 (2)" src="https://github.com/user-attachments/assets/b983dd47-854e-4d26-9368-590de74267f2" />
<img width="3024" height="4032" alt="0 (1)" src="https://github.com/user-attachments/assets/03124499-389a-4284-b798-4e368456c520" />

##Détection du disque NVMe
La commande Get-Disk dans PowerShell. On voit que le disque NVMe 1TB est détecté par Windows Server avec une capacité d’environ 953 GB. Cette étape sert à vérifier que le disque est bien reconnu avant de l’initialiser et de le formater.
<img width="5120" height="3840" alt="1" src="https://github.com/user-attachments/assets/c18a7493-860d-4888-a94d-79f964794859" />

##Formatage du disque NVMe
Après quelques erreurs, le disque a été initialisé, une partition a été créée, puis le volume a été formaté en NTFS avec le nom DATA. Cette étape confirme que le disque est prêt pour le stockage.
<img width="5120" height="3840" alt="2" src="https://github.com/user-attachments/assets/a00493ed-b4ef-46b6-a832-c8c5155dc71b" />

##Configuration réseau du serveur
J’ai utilisé la commande ipconfig pour vérifier que la configuration réseau est bien appliquée. Cette étape est importante pour permettre l’accès au serveur sur le réseau.
<img width="1600" height="1204" alt="3" src="https://github.com/user-attachments/assets/c0c706b7-b6f5-40b0-b9ac-3bc8dbd6a79c" />

##Vérification du réseau et de l’accès Internet
Le test ping 8.8.8.8 fonctionne avec 0% de perte, donc le serveur est bien connecté au réseau.
<img width="2048" height="1536" alt="4" src="https://github.com/user-attachments/assets/db093a33-3efc-48f3-8034-d9490d87c026" />


