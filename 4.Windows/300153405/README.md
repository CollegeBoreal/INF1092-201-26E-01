# Installation de Windows Server 2022 Datacenter sur un HP ProLiant DL360 G6

**ID :** `300153405  

**Étudiant :** `rekaik khaled  
**Cours :** INF1092  
**Serveur :** HP ProLiant DL360 G6  
**Système installé :** Windows Server 2022 Datacenter

## Situation

Un employeur souhaite mettre en place un mini centre de données à faible coût à l’aide de serveurs HP ProLiant DL360 G6 achetés d’occasion.
Le but de cet atelier est de vérifier le matériel, de préparer le stockage RAID, puis d’installer Windows Server 2022 Datacenter par le réseau PXE.

## 1. Inspection physique

- [x] Inspection réalisée pendant le laboratoire précédent
- [x] Processeurs correctement installés
- [x] Mémoire RAM correctement insérée
- [x] Carte cache du contrôleur RAID présente
- [x] Disques installés dans les baies
- [x] Écran VGA fonctionnel
- [x] Clavier et périphériques USB connectés
- [x] Ventilateurs vérifiés

Avant le démarrage, nous avons vérifié que les composants étaient bien installés et qu’aucun câble n’était débranché. Un ventilateur 
qui demeure longtemps à plein régime peut indiquer un problème matériel et doit être vérifié avant de continuer.

## 2. Alimentation

- [x] PSU1 branché et fonctionnel
- [x] PSU2 branché et fonctionnel
- [x] Aucun voyant d’erreur critique observé

Les deux blocs d’alimentation ont été raccordés afin d’assurer la redondance électrique du serveur.

## 3. Réseau

- [x] Câble Ethernet branché
- [x] Port réseau fonctionnel
- [x] Démarrage PXE accessible

Le serveur doit être connecté au réseau du laboratoire pour recevoir une adresse IP et accéder au service de déploiement Windows.

## 4. Vérification et configuration du RAID

### 4.1 Avertissement détecté au démarrage

<img width="1600" height="1204" alt="1" src="https://github.com/user-attachments/assets/924f3f77-3dbb-4244-8239-d1ac5bb3f073" />

Le contrôleur **HP Smart Array P410i** a signalé qu’une récupération du groupe de disques était nécessaire. Le disque situé dans
la baie 1 devait faire l’objet d’une reconstruction automatique. Nous avons choisi l’option de récupération et avons vérifié l’état
du stockage avant l’installation.

### 4.2 Échec de démarrage de l’ancien système

<img width="1600" height="1204" alt="2" src="https://github.com/user-attachments/assets/616bea56-43ea-44d6-92a4-68021c42e5af" />

L’ancien système présent sur les disques ne pouvait pas démarrer, car un fichier GRUB était manquant. Cette erreur confirmait 
la nécessité de préparer correctement le volume RAID et d’effectuer une nouvelle installation.

### 4.3 Accès à l’utilitaire HP Smart Array

<img width="1600" height="1204" alt="3" src="https://github.com/user-attachments/assets/561f688a-c60c-47a5-9ebb-b6226fe8fc3f" />

Nous avons ouvert l’utilitaire **Option ROM Configuration for Arrays** du contrôleur P410i. L’ancien volume logique pouvait être 
consulté ou supprimé avant la création d’un nouveau volume.

### 4.4 Création du volume RAID 5

<img width="1600" height="1204" alt="4" src="https://github.com/user-attachments/assets/102832e2-85ea-48e8-ae57-bbbe6c8e2b3d" />

Trois disques SAS de **146,8 Go** ont été sélectionnés pour former un volume **RAID 5**. Ce niveau de RAID répartit les données 
et la parité entre les disques et permet au serveur de continuer à fonctionner lors de la panne d’un seul disque.

### 4.5 Validation du volume logique

<img width="1600" height="1204" alt="5" src="https://github.com/user-attachments/assets/c9ea4054-08b5-4b31-a48a-52c7d6f106f5" />

L’utilitaire affiche un volume logique RAID 5 de **273,4 Go** avec l’état **OK**. Le stockage était donc prêt à recevoir Windows Server 2022.

Checklist RAID :

- [x] Trois disques détectés
- [x] Volume RAID 5 créé
- [x] Capacité logique de 273,4 Go
- [x] État du volume : OK

## 5. Démarrage PXE

### 5.1 Choix de l’installateur

<img width="1600" height="1204" alt="6" src="https://github.com/user-attachments/assets/ad835cd2-85de-48fb-806c-7293358b14c0" />

Après le démarrage réseau, le menu de déploiement a proposé plusieurs systèmes. Nous avons sélectionné **Windows Server 2022 Setup**.
La photo montre également l’adresse IP obtenue par le serveur : `10.7.237.3`.

### 5.2 Authentification au service de déploiement

<img width="1600" height="1204" alt="12" src="https://github.com/user-attachments/assets/ffc458f6-a844-499d-afde-3f46d33eb39f" />

Le service **Windows Deployment Services (WDS)** a demandé les identifiants autorisés du laboratoire. Après l’authentification, 
les images d’installation disponibles ont été affichées.

> Ne jamais publier un mot de passe réel dans le dépôt GitHub. Les mots de passe doivent rester masqués dans les captures d’écran.

## 6. Installation de Windows Server 2022 Datacenter

### 6.1 Choix de la langue

<img width="1600" height="1204" alt="8" src="https://github.com/user-attachments/assets/cdb6c31f-c85e-4028-9281-3a596a462202" />

Nous avons sélectionné la langue et la disposition du clavier correspondant aux paramètres du laboratoire, par exemple **Français (Canada)** ou **Anglais (Canada)**.

### 6.2 Choix de l’édition

<img width="1600" height="1204" alt="7" src="https://github.com/user-attachments/assets/df095dfc-4787-436d-9164-12c58bbfbff8" />

Dans la liste des systèmes proposés, nous avons choisi **Windows Server 2022 Datacenter avec Desktop Experience** afin d’obtenir l’interface 
graphique. Il faut vérifier le choix avant de cliquer sur **Next**, car la capture affiche plusieurs éditions, dont Standard et Datacenter.

### 6.3 Choix du disque d’installation

<img width="1600" height="1204" alt="9" src="https://github.com/user-attachments/assets/c636a6c7-e8b5-40f6-9c4a-7c3c4b14976a" />

L’installateur a détecté le volume logique créé sur le contrôleur RAID. Pour une installation propre, les anciennes partitions peuvent 
être supprimées si elles ne contiennent aucune donnée à conserver. Nous avons ensuite sélectionné l’espace principal comme destination de Windows Server.

### 6.4 Copie et installation des fichiers

<img width="1600" height="1204" alt="10" src="https://github.com/user-attachments/assets/e731c0df-bb76-4f25-bff1-507ae5310744" />

L’installateur a copié les fichiers, installé les fonctions et les pilotes, puis redémarré le serveur plusieurs fois. Cette étape 
peut prendre environ 10 à 20 minutes selon la vitesse du matériel et du réseau.

## 7. Première connexion et vérifications finales

Après l’installation, nous avons défini un mot de passe complexe pour le compte local `Administrator`. Le mot de passe ne doit jamais 
être écrit dans ce rapport ou affiché dans une capture publique.

<img width="5120" height="3840" alt="13" src="https://github.com/user-attachments/assets/b03ccf1d-2450-4ba2-9eda-7a2392e8160b" />

Le bureau de **Windows Server 2022 Datacenter Evaluation** est affiché. Cette image confirme que l’installation a réussi et que le serveur démarre correctement sur le nouveau système.

Vérifications à effectuer après l’installation :

- [x] Windows Server 2022 Datacenter démarre
- [x] Interface graphique accessible
- [ ] Carte Ethernet reconnue dans le Gestionnaire de périphériques
- [ ] Adresse IP obtenue avec `ipconfig`
- [ ] Passerelle joignable avec `ping`
- [ ] Accès à Internet vérifié, si autorisé dans le laboratoire
- [ ] Bureau à distance activé et testé
- [ ] Aucune erreur critique dans le Gestionnaire de serveur
- [ ] État du RAID toujours normal après redémarrage

## 8. Accès à distance

Pour permettre l’administration à distance :

1. ouvrir **Server Manager**;
2. sélectionner **Local Server**;
3. activer **Remote Desktop**;
4. autoriser la règle correspondante dans le pare-feu;
5. relever l’adresse IP avec `ipconfig`;
6. tester la connexion depuis un autre poste avec `mstsc`.

L’accès à distance ne doit être activé que sur un réseau autorisé et protégé.

## Décision finale

### INSTALLER / ACCEPTER ✅ si :

- [x] Windows Server 2022 Datacenter fonctionne
- [ ] Ethernet fonctionne correctement
- [ ] Aucun message d’erreur matériel ou RAID n’apparaît
- [ ] Le serveur demeure stable après plusieurs redémarrages

### REFUSER ❌ si :

- l’installation ne se termine pas;
- une erreur de mémoire RAM apparaît;
- le volume RAID demeure dégradé;
- un disque n’est pas détecté;
- le serveur est instable;
- les ventilateurs restent continuellement à plein régime;
- la carte réseau n’est pas reconnue.

## Conclusion

Nous avons inspecté le serveur HP ProLiant DL360 G6, corrigé la configuration du stockage, créé un volume RAID 5 et démarré l’installation 
par PXE. Windows Server 2022 Datacenter a ensuite été installé avec succès. La photo finale confirme le fonctionnement du système d’exploitation.

La décision définitive d’utiliser ce serveur dans un mini centre de données dépend toutefois des derniers tests du réseau Ethernet, 
de l’accès à distance, de l’état du RAID et de la stabilité générale du matériel.

## Résumé ultra rapide

**INSPECTION → RAID 5 → PXE → WINDOWS SERVER 2022 DATACENTER → TEST RÉSEAU → ACCÈS À DISTANCE**

