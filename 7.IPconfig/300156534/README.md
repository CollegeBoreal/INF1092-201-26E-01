Rapport – Configuration de la VM Windows Server et problème de connexion RDP

Nom : Oualid Salhi
ID étudiant : 300156534

Objectif

Configurer une adresse IP statique sur la machine virtuelle, activer le Bureau à distance (RDP) et vérifier la connectivité réseau.

Configuration effectuée

Les paramètres suivants ont été configurés sur la VM :

Adresse IP : 10.7.237.210 

Masque de sous-réseau : 255.255.254.0 (/23) 

Passerelle : 10.7.237.1 

Serveur DNS : 10.7.237.3 

Les commandes PowerShell ont été exécutées pour configurer l'adresse IP, le DNS et activer le Bureau à distance.

Vérifications réalisées

Les vérifications suivantes ont été effectuées avec succès :

Vérification du nom de la VM (hostname) 

Vérification de la configuration réseau (Get-NetIPConfiguration et ipconfig) 

Vérification de l'interface réseau (Get-NetAdapter) 

Activation du Bureau à distance (RDP) 

Vérification du service RDP avec : 

Test-NetConnection localhost -Port 3389

Résultat obtenu :

TcpTestSucceeded : True

Ce résultat confirme que le service Remote Desktop fonctionne correctement dans la machine virtuelle.

Problème rencontré

Malgré la configuration correcte de la VM, le serveur Hyper-V ne parvient pas à communiquer avec la machine virtuelle.

Depuis le serveur, la commande :

Test-NetConnection 10.7.237.210 -Port 3389

retourne :

TcpTestSucceeded : False

DestinationHostUnreachable

De plus, les tests ping entre le serveur (10.7.237.35) et la VM (10.7.237.210) échouent.

Vérifications supplémentaires

Les éléments suivants ont également été vérifiés :

La VM est en état Running. 

Le profil réseau est Private. 

La VM est connectée au commutateur virtuel External. 

Le commutateur External existe sur Hyper-V. 

L'adresse IP, la passerelle et le DNS sont correctement configurés. 

Conclusion

La configuration de la machine virtuelle est correcte et le service RDP fonctionne localement. Cependant, le serveur Hyper-V ne peut pas joindre la VM, ce qui empêche l'ouverture d'une session Bureau à distance.

Le problème semble provenir de la communication réseau entre le serveur Hyper-V et la machine virtuelle (configuration du commutateur virtuel, du réseau Hyper-V ou du réseau du laboratoire), et non de la configuration Windows réalisée dans la VM.
<img width="1363" height="754" alt="image" src="https://github.com/user-attachments/assets/c59a0c63-c770-483a-aa10-4be65568b7b3" />
Figure 1 – Configuration de l'adresse IP statique de la machine virtuelle.
<img width="728" height="580" alt="image" src="https://github.com/user-attachments/assets/9d23dbcc-86ac-40b9-91a3-17bdba3e346c" />
Figure 2 – Vérification du service Bureau à distance avec Test-NetConnection localhost -Port 3389.
<img width="667" height="708" alt="image" src="https://github.com/user-attachments/assets/0e1a0980-d926-481c-87ea-282419ccaabb" />
Figure 4 – Vérification du commutateur virtuel Hyper‑V et de la configuration réseau.
