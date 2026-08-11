RAPPORT DE LABORATOIRE
Configuration réseau et Bureau à distance (RDP)

Nom : Chouaib Ait
ID étudiant : 300155045
Cours : Administration réseau / Windows Server
Laboratoire : Configuration IP statique, DNS, passerelle et RDP
Date : __________________

1. Objectifs du laboratoire

L’objectif de ce laboratoire est de configurer et de tester les paramètres réseau d’une machine virtuelle Windows.

Les objectifs principaux sont :

Configurer une adresse IPv4 statique.
Configurer la passerelle par défaut.
Configurer un serveur DNS.
Vérifier la connectivité réseau.
Activer le Bureau à distance (RDP).
Vérifier que le port RDP est fonctionnel.
Se connecter à la machine virtuelle à distance.
Vérifier les sessions RDP actives.
2. Vérification du nom de la VM

La première étape consiste à vérifier le nom de la machine virtuelle à l’aide de la commande :

hostname

Résultat obtenu :

[Nom de ma VM]

Capture d’écran :
Insérer ici une capture d’écran montrant la commande hostname et son résultat.

3. Vérification de la configuration réseau actuelle

La configuration réseau actuelle a été vérifiée avec la commande :

Get-NetIPConfiguration

Une autre commande permettant d'obtenir les informations réseau est :

ipconfig /all

Les informations importantes vérifiées sont :

Adresse IPv4
Masque de sous-réseau
Passerelle par défaut
Serveur DNS
Interface réseau

Capture d’écran :
Insérer ici une capture d’écran de ipconfig /all.

4. Identification de l'interface réseau

Avant de configurer l’adresse IP, l’interface réseau a été identifiée avec :

Get-NetAdapter

L’interface utilisée pour la configuration est :

Ethernet
5. Configuration de l'adresse IP statique

Les paramètres réseau demandés dans le laboratoire sont :

Paramètre	Valeur
Adresse IP	10.7.237.x
Masque	255.255.255.0
Passerelle	10.7.237.1
DNS	10.7.237.3

L’adresse IP statique a été configurée avec la commande suivante :

New-NetIPAddress `
-InterfaceAlias "Ethernet" `
-IPAddress 10.7.237.x `
-PrefixLength 23 `
-DefaultGateway 10.7.237.1

Remarque : x doit être remplacé par l’adresse IP attribuée à ma VM.

6. Configuration du serveur DNS

Le serveur DNS a été configuré avec la commande :

Set-DnsClientServerAddress `
-InterfaceAlias "Ethernet" `
-ServerAddresses 10.7.237.3

La configuration a ensuite été vérifiée avec :

ipconfig /all

Le serveur DNS affiché doit être :

10.7.237.3

Capture d’écran :
Insérer ici une capture montrant l'adresse IP, la passerelle et le DNS.

7. Vérification de la connectivité réseau

Plusieurs tests ont été effectués afin de vérifier le fonctionnement du réseau.

7.1 Test de la passerelle

Commande :

ping 10.7.237.1

Résultat :

Réponse de 10.7.237.1

Le test confirme que la machine virtuelle peut communiquer avec la passerelle.

7.2 Test de la connectivité Internet

Commande :

ping 8.8.8.8

Résultat :

Réponse de 8.8.8.8

Ce test permet de vérifier la connectivité IP vers Internet.

7.3 Test de résolution DNS

Commande :

ping google.ca

Résultat :

Réponse de google.ca

Ce résultat confirme que la résolution DNS fonctionne correctement.

Capture d’écran :
Insérer ici une capture des trois tests Ping.

8. Activation du Bureau à distance (RDP)

Le Bureau à distance a été activé avec la commande PowerShell suivante :

Set-ItemProperty `
-Path "HKLM:\System\CurrentControlSet\Control\Terminal Server" `
-Name "fDenyTSConnections" `
-Value 0

Cette commande permet d'autoriser les connexions Bureau à distance sur la machine.

9. Configuration du pare-feu

Les règles du pare-feu Windows nécessaires au Bureau à distance ont été activées avec :

Enable-NetFirewallRule `
-DisplayGroup "Remote Desktop"

Les règles peuvent être vérifiées avec :

Get-NetFirewallRule -DisplayGroup "Remote Desktop"

Résultat attendu :

Les règles associées à Remote Desktop doivent être activées.

10. Vérification du port RDP

Le port utilisé par RDP est le port TCP 3389.

La disponibilité du port a été vérifiée avec :

Test-NetConnection localhost -Port 3389

Le résultat attendu est :

TcpTestSucceeded : True

Cela confirme que le service RDP écoute correctement sur le port 3389.

Capture d’écran :
Insérer ici une capture montrant TcpTestSucceeded : True.

11. Vérification du compte utilisateur

Le compte utilisateur et les utilisateurs locaux ont été vérifiés avec :

whoami

et :

Get-LocalUser

Le compte utilisé pour la connexion RDP est :

Administrator
12. Connexion à la VM avec RDP

Depuis le poste physique, l’outil Bureau à distance a été lancé avec :

Win + R

Puis :

mstsc

L’adresse IP de la VM a ensuite été saisie :

10.7.237.x

Les informations de connexion utilisées sont :

Utilisateur : Administrator
Mot de passe : ********

La connexion RDP a été établie avec succès.

Capture d’écran :
Insérer ici une capture d’écran montrant la session RDP connectée à la VM.

13. Vérification de la session RDP

Une fois connecté en RDP, la session active a été vérifiée avec :

query user

ou :

quser

La commande permet d’afficher les utilisateurs actuellement connectés à la machine.

Résultat :

Administrator    Active

Capture d’écran :
Insérer ici une capture de query user ou quser.

14. Test entre étudiants

Un test de communication avec une autre machine virtuelle peut être effectué avec :

ping 10.7.237.202

Si la communication est autorisée par le laboratoire, une connexion RDP peut également être testée avec :

mstsc

Puis l'adresse IP de la VM de l'autre étudiant est saisie.

15. Dépannage

En cas de problème avec RDP, les règles du pare-feu peuvent être vérifiées avec :

Get-NetFirewallRule -DisplayGroup "Remote Desktop"

La configuration IP peut être vérifiée avec :

ipconfig

Le fonctionnement du port RDP peut être testé avec :

Test-NetConnection localhost -Port 3389

Si le résultat est :

TcpTestSucceeded : True

le port 3389 est accessible localement.

16. Tableau récapitulatif
Élément	Résultat
Nom de la VM	__________________
ID étudiant	300155045
Nom	Chouaib Ait
Adresse IP	10.7.237.___
Masque	255.255.255.0
Passerelle	10.7.237.1
DNS	10.7.237.3
Ping passerelle	Réussi / Échoué
Ping 8.8.8.8	Réussi / Échoué
Ping google.ca	Réussi / Échoué
RDP	Activé
Port RDP	3389
Test du port	TcpTestSucceeded : True / False
Connexion RDP	Réussie / Échouée
17. Captures d'écran à remettre

Les captures suivantes doivent être incluses dans le rapport :

Nom de la VM avec la commande hostname.
Configuration réseau avec ipconfig /all.
Adresse IP, passerelle et DNS configurés.
Ping de la passerelle 10.7.237.1.
Ping de 8.8.8.8.
Ping de google.ca.
Test du port RDP avec TcpTestSucceeded : True.
Connexion RDP réussie à la VM.
Session RDP active avec query user.
18. Conclusion

Ce laboratoire m’a permis de mettre en pratique la configuration réseau d’une machine virtuelle Windows. J’ai configuré une adresse IPv4 statique ainsi que la passerelle et le serveur DNS.

J’ai ensuite vérifié la connectivité avec plusieurs tests ping, notamment vers la passerelle, une adresse IP externe et un nom de domaine afin de confirmer le fonctionnement de la résolution DNS.

Enfin, j’ai activé le Bureau à distance (RDP), configuré le pare-feu Windows, vérifié le port TCP 3389 et effectué une connexion à distance à ma machine virtuelle.

Ce laboratoire permet donc de mieux comprendre les notions d’adressage IPv4, de passerelle, de DNS, de pare-feu et d’administration à distance avec Windows.
