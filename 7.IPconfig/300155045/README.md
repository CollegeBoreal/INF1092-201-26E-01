Nom : Chouaib Ait
ID étudiant : 300155045
Cours : Administration réseau / Windows Server
Laboratoire : Configuration IP statique, DNS, passerelle et RDP

Ce travail pratique (lab) consiste à configurer et vérifier le réseau, la connectivité internet, ainsi que les accès à distance (RDP) et la gestion des utilisateurs sur une machine virtuelle Windows Server.

1. Configuration IP et diagnostic réseau de base

Vérification des paramètres réseau (ipconfig) : adresse IPv4 (10.7.237.208), masque de sous-réseau (255.255.254.0) et passerelle par défaut (10.7.237.1).

Configuration du serveur DNS via PowerShell (Set-DnsClientServerAddress vers 10.7.237.3).

Test de connectivité locale par ICMP (ping 10.7.237.1) avec 0% de perte de paquets.

2. Validation de la connectivité Internet et résolution DNS

Validation de la connexion externe directe via l'adresse IP (ping 8.8.8.8).

Test de la résolution de nom de domaine DNS (ping google.ca), qui confirme que la résolution d'adresse IPv4 (142.250.139.94) et le routage externe fonctionnent correctement.

3. Configuration du Bureau à distance (RDP)

Activation du protocole de bureau à distance via le registre (set-itemproperty -path "hklm:\system\currentcontrolset\control\terminal server" -name "fdenytsconnection" -value 0).

Vérification de l'écoute du port RDP (test-netconnection localhost -port 3389), confirmant que le service de connexion à distance est actif (TcpTestSucceeded : True).

4. Audit et gestion du système et des utilisateurs

Identification du compte utilisateur actif (whoami), affichant la session sous VM300153416\Administrator.

Liste des comptes locaux du système (get-localuser) pour passer en revue l'état des utilisateurs (Administrator actif, Guest/DefaultAccount désactivés).

Affichage des sessions utilisateur actives (quser), confirmant la connexion locale en cours sur la console.
<img width="2040" height="1536" alt="WhatsApp Image 2026-08-06 at 15 56 18 (1)" src="https://github.com/user-attachments/assets/6b6cacb6-db21-477a-a643-81ac32ce8221" />
<img width="2040" height="1536" alt="WhatsApp Image 2026-08-06 at 15 56 18 (2)" src="https://github.com/user-attachments/assets/79b1221f-c4dd-45bf-bc9e-dba34ec12eee" />
<img width="2040" height="1536" alt="WhatsApp Image 2026-08-06 at 15 56 18 (3)" src="https://github.com/user-attachments/assets/db556d78-3186-4be3-8bd9-125a4f92d85f" />
<img width="2040" height="1536" alt="WhatsApp Image 2026-08-06 at 15 56 18 (5)" src="https://github.com/user-attachments/assets/23f388f6-69a5-415f-a0ac-4c455e6e3a13" />
<img width="2040" height="1536" alt="WhatsApp Image 2026-08-06 at 15 56 18" src="https://github.com/user-attachments/assets/a6a71f0f-c22e-48a6-9d6f-40584751dbb8" />
