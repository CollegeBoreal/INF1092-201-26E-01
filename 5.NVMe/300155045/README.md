ID : 300155045
Nom : Chouaib Ait 
Cours : INF1092-201-E26-01

## Installation d'un Disque NVMe et Configuration Réseau sur Serveur

### Installation du Disque NVMe

- Serveur HP DL360 G6 fonctionnel sous Windows Server 2022 Datacenter (étape effectuée dans le laboratoire précédent)
- Adaptateur PCIe/NVMe installé et reconnu par le serveur
- Disque NVMe 1TB inséré dans l'adaptateur PCIe
- Vérification de la détection du disque dans le Gestionnaire de disques (Disk Management)

### Formatage du Disque NVMe

- Mise en ligne du disque (précédemment hors ligne / non initialisé)
- Initialisation avec la table de partition GPT
- Création d'un nouveau volume simple avec le système de fichiers NTFS
- Attribution de la lettre de lecteur (ex : E:)
- Utilisation de l'espace maximal disponible (1TB)
- Nom du volume : DATA

### Configuration de l'Accès à Distance (RDP)

- Activation du Bureau à distance (Remote Desktop) dans les propriétés système
- Autorisation des connexions RDP dans le pare-feu Windows
- Test de connexion RDP depuis un poste client vers l'adresse IP du serveur

### Validation

- Commande `ipconfig` exécutée pour confirmer la configuration IP du serveur
- Connexion RDP réussie confirmant l'accessibilité à distance
- Disque NVMe visible et accessible sous la lettre E: avec 1TB d'espace disponible

## Décision finale

**INSTALLER ✅** si :
- Windows Server 2022 fonctionne
- Ethernet fonctionne
- Disque NVMe installé et formaté correctement

**REFUSER ❌** si :
- Installation non faite
- Erreur RAM
- Serveur instable

## Résumé ultra rapide

1. Serveur assemblé + Windows Server 2022 ✅
2. Installation adaptateur PCIe/NVMe + disque NVMe 1TB ✅
3. Formatage GPT → NTFS → volume DATA (1TB) ✅
4. Activation RDP + test d'accès à distance ✅
5. Vérification finale via `ipconfig` ✅
<img width="4080" height="3072" alt="PXL_20260616_202345917 MP" src="https://github.com/user-attachments/assets/4f683275-261c-4ffa-9431-355aea9749a7" />
  <img width="4080" height="3072" alt="PXL_20260616_182913128" src="https://github.com/user-attachments/assets/16c73f64-9df7-402b-978f-81c278deec07" />
  <img width="4080" height="3072" alt="PXL_20260616_193051883" src="https://github.com/user-attachments/assets/171eb6aa-88f3-4f51-a798-888803135673" />
  <img width="4080" height="3072" alt="PXL_20260616_201154982 MP" src="https://github.com/user-attachments/assets/862c84f8-0c39-4575-8537-8fbbb0f9cbe3" />
  <img width="4080" height="3072" alt="PXL_20260616_185140683" src="https://github.com/user-attachments/assets/4244bb22-36cc-41f2-97f9-0349f5498eac" />
  <img width="4080" height="3072" alt="PXL_20260616_200613951 MP" src="https://github.com/user-attachments/assets/992ecfb9-cc7a-4fb4-bf72-257bb440b8bb" />
  <img width="4080" height="3072" alt="PXL_20260616_200613951 MP" src="https://github.com/user-attachments/assets/5680e6c7-8551-4f55-a750-0bafebb3f2ae" />


