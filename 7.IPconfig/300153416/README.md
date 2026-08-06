
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
