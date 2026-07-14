# Rapport d'installation d'un disque NVMe sur serveur HP DL360 G6

## Répertoire du projet
Création du dossier : `[TON_NUMERO_ETUDIANT]`

## Objectif
Ajouter de l'espace disque à un serveur HP DL360 G6 fonctionnant avec Windows Server 2022 Datacenter en utilisant un disque NVMe de 1TB avec un adaptateur PCIe.

---

# Checklist de réalisation

## 1. Serveur HP DL360 G6 avec Windows Server 2022 Datacenter ✅

☑ Windows Server 2022 Datacenter installé et fonctionnel  
☑ Serveur démarré correctement  
☑ Matériel assemblé dans le laboratoire  
☑ Vérification du fonctionnement de la mémoire RAM et du processeur  

**Résultat :**  
Le serveur démarre correctement et Windows Server 2022 Datacenter est opérationnel.

📷 Capture d'écran :
*(Ajouter ici une image du serveur démarré ou de Windows Server 2022)*

---

# 2. Installation du disque NVMe ✅

## Matériel utilisé :

☑ Adaptateur PCIe vers NVMe compatible avec le serveur  
☑ Disque NVMe 1TB installé  

## Étapes réalisées :

1. Arrêt complet du serveur.
2. Installation de l'adaptateur PCIe/NVMe dans un port PCIe disponible.
3. Installation du disque NVMe 1TB dans l'adaptateur.
4. Redémarrage du serveur.
5. Vérification de la détection du nouveau disque dans Windows Server.

**Résultat :**  
Le disque NVMe est reconnu par Windows Server 2022.

📷 Capture d'écran :
*(Ajouter ici une image du disque NVMe installé ou détecté dans Windows)*

---

# 3. Formatage du disque NVMe ✅

## Étapes réalisées :

1. Ouverture de **Gestion des disques Windows**.
2. Initialisation du nouveau disque.
3. Création d'une nouvelle partition.
4. Formatage en **NTFS**.
5. Attribution d'une lettre de lecteur.

**Résultat :**

☑ Disque NVMe disponible avec environ 1TB d'espace libre.  
☑ Le disque peut être utilisé pour stocker des données.

📷 Capture d'écran :
*(Ajouter ici une image de Gestion des disques montrant le disque de 1TB)*

---

# 4. Activation de l'accès à distance (RDP) ✅

## Étapes réalisées :

1. Activation du Bureau à distance dans Windows Server.
2. Vérification du pare-feu Windows.
3. Test de connexion depuis un autre poste.

**Résultat :**

☑ Connexion RDP fonctionnelle.  
☑ Administration du serveur possible à distance.

📷 Capture d'écran :
*(Ajouter ici une image de la connexion RDP réussie)*

---

# Décision finale : INSTALLER ✅

## Critères validés :

✅ Windows Server 2022 Datacenter fonctionne  
✅ Connexion Ethernet fonctionnelle  
✅ Disque NVMe 1TB installé et reconnu  
✅ Stockage supplémentaire disponible  
✅ Accès distant RDP fonctionnel  

---

# Conclusion

L'ajout d'un disque NVMe de 1TB avec un adaptateur PCIe est une solution économique pour augmenter l'espace de stockage du serveur HP DL360 G6.

Le serveur peut être utilisé comme mini data center à faible coût avec Windows Server 2022 Datacenter.

**Décision : INSTALLER ✅**
