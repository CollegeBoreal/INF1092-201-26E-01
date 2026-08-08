# 💾 Laboratoire 5 — Installation d'un disque NVMe

**Nom :** [Nom et prénom]  
**Numéro d'étudiant :** [Numéro d'étudiant]  
**Cours :** INF1092  
**Laboratoire :** 5 — Installation d'un disque NVMe  
**Système :** Windows Server 2022 Datacenter  

---

## 📌 Introduction

Dans le cadre du laboratoire 5 , l'objectif était d'ajouter de l'espace de stockage à un serveur fonctionnant sous **Windows Server 2022 Datacenter** en installant un disque **NVMe de 1 To**.

Le laboratoire consistait à effectuer l'installation physique du disque à l'aide d'un adaptateur PCIe/NVMe, à vérifier sa détection par Windows Server, à préparer le nouveau volume et finalement à configurer le réseau et l'accès à distance au serveur.

---

## 🔌 1. Identification du port PCIe

La première étape consistait à ouvrir le serveur et à identifier le **port PCIe** disponible sur la carte mère.

Ce port sera utilisé pour connecter l'adaptateur PCIe contenant le disque NVMe au serveur.

![Identification du port PCIe]
<img width="2040" height="1536" alt="1" src="https://github.com/user-attachments/assets/b252af4e-66a6-4806-987e-b2dfe2f3ee7d" />


---

## 💾 2. Préparation du disque NVMe

Nous avons ensuite préparé le **disque NVMe de 1 To** et son adaptateur PCIe.

Le disque NVMe est fixé sur l'adaptateur afin de pouvoir être connecté au port PCIe du serveur.

![Disque NVMe ].
<img width="1536" height="2040" alt="2" src="https://github.com/user-attachments/assets/ddc3f1fb-68e6-4c7b-9135-2721887fe2e3" />


---

## 🔧 3. Installation du NVMe dans le serveur

Une fois le disque NVMe correctement fixé sur son adaptateur, l'ensemble a été installé dans le **port PCIe identifié précédemment**.

Nous avons vérifié que l'adaptateur était correctement inséré et fixé afin d'assurer une bonne connexion avec la carte mère.

![Installation du NVMe dans le serveur]
<img width="1536" height="2040" alt="3" src="https://github.com/user-attachments/assets/0445f4dd-a789-4da2-af70-51c159819643" />


---

## 🖥️ 4. Démarrage du serveur

Après l'installation physique du disque NVMe, nous avons démarré le serveur.

Le démarrage de **Windows Server 2022 Datacenter** s'est effectué correctement et nous avons pu accéder au **Server Manager**.

Cette vérification nous a permis de confirmer que l'ajout du nouveau matériel n'empêchait pas le fonctionnement normal du serveur.

![Démarrage de Windows Server]
<img width="2040" height="1536" alt="4" src="https://github.com/user-attachments/assets/aa509956-8980-455b-ae24-b6294f07805a" />


---

## 🔍 5. Vérification de la détection du NVMe

Une fois le serveur démarré, nous avons utilisé **PowerShell** pour vérifier la présence du nouveau disque.

La commande `Get-Disk` nous a permis d'afficher les disques reconnus par Windows Server.

Le nouveau disque apparaissait avec une capacité d'environ **953,87 Go**, ce qui correspond au disque NVMe de **1 To** installé.

Le disque NVMe était donc correctement détecté par le système.

![Détection du disque NVMe]
<img width="2040" height="1536" alt="5" src="https://github.com/user-attachments/assets/29f31f1c-6e06-42ee-b686-06355d639175" />


---

## ⚙️ 6. Préparation du disque

Nous avons ensuite commencé la préparation du nouveau disque afin de pouvoir l'utiliser comme espace de stockage.

Lors d'une première tentative de nettoyage, PowerShell a indiqué que le disque **n'était pas encore initialisé**.

Cette erreur nous a permis de constater que le disque devait d'abord être initialisé avant de poursuivre la création du volume.

![Préparation du disque]
<img width="2040" height="1536" alt="6" src="https://github.com/user-attachments/assets/48be1d99-d781-4274-889b-30289ed97914" />


---

## 📁 7. Initialisation, partitionnement et formatage

Le disque NVMe a ensuite été initialisé en utilisant une table de partition **GPT**.

Nous avons ensuite créé une nouvelle partition utilisant l'espace disponible et effectué son formatage en **NTFS** avec le nom **DATA**.

Le laboratoire prévoyait initialement l'utilisation de la lettre **D:**. Cependant, lors de la création de la partition, nous avons constaté que cette lettre était déjà utilisée sur le serveur.

Nous avons donc corrigé le problème en attribuant la lettre **E:** au nouveau volume.

À la fin de cette opération, le volume **DATA (E:)** était fonctionnel avec environ **953,85 Go** d'espace disponible.

![Initialisation et création du volume DATA]
<img width="5120" height="3840" alt="7" src="https://github.com/user-attachments/assets/7fc18be3-9fe2-4def-a981-518f1b958be2" />


---

## 🌐 8. Configuration de l'adresse IP statique

Après avoir terminé la configuration du stockage, nous avons configuré les paramètres réseau du serveur.

L'adresse IP statique attribuée à notre serveur pour le laboratoire était :

- **Adresse IPv4 :** `10.7.237.7`
- **Masque de sous-réseau :** `255.255.254.0`
- **Préfixe :** `/23`
- **Passerelle par défaut :** `10.7.237.1`
- **Interface réseau :** `Ethernet`

Nous avons ensuite vérifié que les paramètres avaient correctement été appliqués à l'interface réseau.

![Configuration de l'adresse IP]
<img width="2040" height="1536" alt="8" src="https://github.com/user-attachments/assets/1fdada3e-78a0-49f1-b8cd-114906c2c495" />


---

## 🌍 9. Configuration du DNS

Nous avons ensuite configuré le **serveur DNS** associé à notre interface réseau.

L'adresse du serveur DNS utilisée dans le laboratoire était :

**DNS : `10.7.237.3`**

Cette configuration permet au serveur d'utiliser le service DNS prévu pour le réseau du laboratoire.

---

## 🖥️ 10. Activation du Bureau à distance (RDP)

Nous avons également activé le **Bureau à distance (RDP)** sur Windows Server.

L'objectif était de pouvoir administrer et utiliser le serveur à distance sans devoir rester physiquement devant la machine.

Les paramètres nécessaires ainsi que les règles du pare-feu Windows ont été activés afin d'autoriser les connexions RDP.

![Configuration du DNS et RDP ]
<img width="2040" height="1536" alt="9" src="https://github.com/user-attachments/assets/a4e5f946-4424-48a3-a4c0-165f331a22d6" />

---

## 🧪 11. Vérifications finales

Pour terminer le laboratoire, nous avons effectué plusieurs vérifications afin de confirmer que le serveur fonctionnait correctement après toutes les modifications.

Nous avons notamment vérifié :

- le nom du serveur ;
- l'adresse IPv4 ;
- le masque de sous-réseau ;
- la passerelle par défaut ;
- la configuration réseau ;
- le DNS ;
- la connectivité réseau.

Un test de connectivité a également été effectué vers l'adresse **8.8.8.8**.

Le résultat obtenu était :

- **4 paquets envoyés**
- **4 paquets reçus**
- **0 paquet perdu**
- **0 % de perte**

Le test confirme donc que la connectivité réseau du serveur fonctionnait correctement.

![Vérifications finales et test réseau]
<img width="2040" height="1536" alt="9" src="https://github.com/user-attachments/assets/3a7100ad-aa45-42e0-b9e9-9bebf392c64a" />


---

## ✅ Résultat final

À la fin du laboratoire :

- ✅ Le disque **NVMe de 1 To** est installé.
- ✅ Le disque est reconnu par **Windows Server 2022 Datacenter**.
- ✅ Le disque est initialisé en **GPT**.
- ✅ Le volume **DATA** est formaté en **NTFS**.
- ✅ Le volume utilise la lettre **E:**.
- ✅ L'adresse IP statique est configurée.
- ✅ Le serveur DNS est configuré.
- ✅ Le **RDP** est activé.
- ✅ La connectivité réseau fonctionne.

---

## 📝 Conclusion

Ce laboratoire nous a permis de réaliser les différentes étapes nécessaires pour **ajouter un disque NVMe de 1 To à un serveur Windows Server 2022 Datacenter**.

Nous avons commencé par identifier le port PCIe disponible et préparer le disque NVMe avec son adaptateur. Nous avons ensuite installé physiquement le matériel dans le serveur et vérifié que Windows Server démarrait correctement.

Après le démarrage, nous avons confirmé la détection du nouveau disque, puis nous l'avons initialisé en **GPT**, partitionné et formaté en **NTFS**.

Nous avons rencontré un problème lors de l'attribution de la lettre **D:**, car celle-ci était déjà utilisée. Nous avons résolu ce problème en utilisant la lettre **E:** pour le volume **DATA**.

Enfin, nous avons configuré l'adresse IP statique et le DNS, activé le **Bureau à distance (RDP)** et effectué plusieurs vérifications pour confirmer le bon fonctionnement du réseau.

À la fin du laboratoire, le **disque NVMe était installé et fonctionnel**, et le serveur était **correctement configuré et accessible sur le réseau**.
