## TOUADJNI ISLEM ##

# Installation et vérification d’un disque NVMe
## Objectif
L’objectif de ce travail est d’ajouter un disque NVMe à un serveur HP ProLiant DL360 G6 afin d’augmenter l’espace de stockage.  
Après l’installation, nous avons vérifié que le serveur démarre correctement, que Windows Server fonctionne et que le disque est détecté

Étape 01 — Vérification du serveur :

Nous avons d’abord vérifié que Windows Server démarre correctement.  
Cette étape permet de confirmer que le serveur est fonctionnel avant l’ajout du disque NVMe.

<img width="2048" height="1536" alt="01" src="https://github.com/user-attachments/assets/5f233ec3-cf7d-4b7a-9202-d17e4a4475cf" />
<img width="2048" height="1536" alt="02" src="https://github.com/user-attachments/assets/46145b8b-08a3-4e75-9f7b-6f8113900698" />

Étape 02 — Identification du disque NVMe :

Nous avons identifié le disque NVMe installé sur un adaptateur PCIe.  
Ce type de disque permet d’ajouter un espace de stockage rapide au serveur.

<img width="1170" height="654" alt="03" src="https://github.com/user-attachments/assets/1e4d684d-92fe-461a-9236-b8387dd94bce" />

Étape 03 — Installation physique du NVMe :

Nous avons installé le disque NVMe dans le serveur à l’aide de l’adaptateur PCIe.  
Cette étape permet de connecter le nouveau disque à la carte mère du serveur.

<img width="1600" height="1200" alt="007" src="https://github.com/user-attachments/assets/0e6ad916-b35b-49a3-ac06-a7b8654abafe" />
<img width="1600" height="1200" alt="008" src="https://github.com/user-attachments/assets/53715bc8-14a0-4e3d-81e6-ec417ec7ec3d" />

 Étape 04 — Vérification dans Disk Management :

Nous avons ouvert Disk Management pour vérifier que le nouveau disque est détecté par Windows Server.  
Le disque apparaît avec une capacité d’environ 1 To.

<img width="1536" height="2048" alt="04" src="https://github.com/user-attachments/assets/abf881ad-a872-4355-8e4e-ecdb28b547c0" />

 Étape 05 — Initialisation et formatage du disque :

Nous avons initialisé le disque, créé un nouveau volume simple et formaté le volume en NTFS.  
Après cette étape, le disque devient prêt à être utilisé pour le stockage.

<img width="1200" height="1600" alt="001" src="https://github.com/user-attachments/assets/e4a8ec94-171d-4102-800a-5cc1ddf75251" />
<img width="1200" height="1600" alt="006" src="https://github.com/user-attachments/assets/35b81b0e-0cc6-4f87-b3a6-c0af1e730829" />

Étape 06 — Configuration réseau :

Nous avons configuré l’adresse IP du serveur avec PowerShell.  
Cette configuration permet au serveur de communiquer avec le réseau.

<img width="1200" height="1600" alt="003" src="https://github.com/user-attachments/assets/7e2be10e-f758-4115-a189-46370c7da9db" />

Étape 07 — Test de connectivité :

Nous avons utilisé les commandes ipconfig et ping pour vérifier la configuration réseau.  
Le test confirme que le serveur possède une adresse IP et qu’il peut communiquer sur le réseau.

<img width="1200" height="1600" alt="004" src="https://github.com/user-attachments/assets/325fc9dc-a741-41d0-b04c-af6cc05cd81d" />

### Conclusion

Le disque NVMe a été installé correctement dans le serveur.  
Windows Server l’a détecté, puis nous l’avons initialisé, formaté et préparé pour l’utilisation.  
Nous avons aussi vérifié que le serveur démarre correctement et que la connexion réseau fonctionne.





