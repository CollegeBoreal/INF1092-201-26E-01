Rapport d'installation d'un disque NVMe sur serveur HP DL360 G6

Répertoire du projet
Création du dossier : `300147891`

Objectif
Ajouter de l'espace disque à un serveur HP DL360 G6 fonctionnant avec Windows Server 2022 Datacenter en utilisant un disque NVMe de 1TB avec un adaptateur PCIe.

Checklist de réalisation

1. Serveur HP DL360 G6 avec Windows Server 2022 Datacenter ✅

☑ Windows Server 2022 Datacenter installé et fonctionnel  
☑ Serveur démarré correctement  
☑ Matériel assemblé dans le laboratoire  
☑ Vérification du fonctionnement de la mémoire RAM et du processeur  

Résultat : 
Le serveur démarre correctement et Windows Server 2022 Datacenter est opérationnel.

2. Installation du disque NVMe ✅

Matériel utilisé :

☑ Adaptateur PCIe vers NVMe compatible avec le serveur  
☑ Disque NVMe 1TB installé  

Étapes réalisées :

1. Arrêt complet du serveur.
2. Installation de l'adaptateur PCIe/NVMe dans un port PCIe disponible.
3. Installation du disque NVMe 1TB dans l'adaptateur.
4. Redémarrage du serveur.
5. Vérification de la détection du nouveau disque dans Windows Server.

Résultat :
Le disque NVMe est reconnu par Windows Server 2022

3. Formatage du disque NVMe ✅

Étapes réalisées :

1. Ouverture de **Gestion des disques Windows**.
2. Initialisation du nouveau disque.
3. Création d'une nouvelle partition.
4. Formatage en **NTFS**.
5. Attribution d'une lettre de lecteur.

Résultat :

☑ Disque NVMe disponible avec environ 1TB d'espace libre.  
☑ Le disque peut être utilisé pour stocker des données.

4. Activation de l'accès à distance (RDP) ✅

 Étapes réalisées :

1. Activation du Bureau à distance dans Windows Server.
2. Vérification du pare-feu Windows.
3. Test de connexion depuis un autre poste.

**Résultat :**

☑ Connexion RDP fonctionnelle.  
☑ Administration du serveur possible à distance.
Décision finale : INSTALLER ✅

Critères validés :

✅ Windows Server 2022 Datacenter fonctionne  
✅ Connexion Ethernet fonctionnelle  
✅ Disque NVMe 1TB installé et reconnu  
✅ Stockage supplémentaire disponible  
✅ Accès distant RDP fonctionnel  

Conclusion

L'ajout d'un disque NVMe de 1TB avec un adaptateur PCIe est une solution économique pour augmenter l'espace de stockage du serveur HP DL360 G6.

Le serveur peut être utilisé comme mini data center à faible coût avec Windows Server 2022 Datacenter.

<img width="612" height="822" alt="image" src="https://github.com/user-attachments/assets/1db38f6b-33ee-48db-ad4a-e1012004bd0d" />
<img width="628" height="831" alt="image" src="https://github.com/user-attachments/assets/6e41c429-7cde-462f-bfbe-068f66acbfad" />
<img width="615" height="821" alt="image" src="https://github.com/user-attachments/assets/40355489-220e-4f45-802f-00d1b8c3df95" />
<img width="1076" height="645" alt="image" src="https://github.com/user-attachments/assets/48328f5c-3194-4edf-95ec-7c2792356098" />
<img width="918" height="618" alt="image" src="https://github.com/user-attachments/assets/5b5f665d-133f-
 <img width="887" height="783" alt="image" src="https://github.com/user-attachments/assets/1069739e-67ca-4388-bd62-07340dc603b7" />
4d83-aaf1-40ec0c895c90" />
<img width="1005" height="647" alt="image" src="https://github.com/user-attachments/assets/44e7cc9a-6391-4f67-a64e-e4de1a92d49c" />
<img width="922" height="737" alt="image" src="https://github.com/user-attachments/assets/2e6777a5-cff1-4818-babf-92abc12f0cc4" />
<img width="1031" height="792" alt="image" src="https://github.com/user-attachments/assets/03d0608d-c006-43c4-bef3-5369880b011c" />
<img width="1046" height="687" alt="image" src="https://github.com/user-attachments/assets/74d53713-bfac-4763-b0a5-57218e79f9aa" />
<img width="1097" height="830" alt="image" src="https://github.com/user-attachments/assets/0ca32268-054f-491f-91a3-dcc3b96deb3b" />











**Décision : INSTALLER ✅**
