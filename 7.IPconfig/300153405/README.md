1. Vérification du nom de la machine virtuelle et de la configuration réseau

Avant de modifier la configuration réseau, j'ai vérifié le nom de la machine virtuelle ainsi que la configuration réseau actuelle à l'aide des commandes suivantes :

hostname

Get-NetIPConfiguration

Get-NetAdapter

La commande hostname permet de confirmer le nom de la machine virtuelle. Les commandes Get-NetIPConfiguration et Get-NetAdapter permettent de consulter la configuration réseau existante et d'identifier l'interface Ethernet qui sera utilisée pour la configuration de l'adresse IP statique.

Capture d'écran : Vérification du nom de la machine et de la configuration réseau

<img width="2040" height="1536" alt="WhatsApp Image 2026-08-07 at 9 21 26 PM" src="https://github.com/user-attachments/assets/860b9880-aca8-487a-aa35-9df02edbdd0c" />

2. Configuration de l'adresse IP statique

Cette image montre la configuration de l'adresse IPv4 statique de la machine virtuelle à l'aide de PowerShell.

L'interface réseau Ethernet a été identifiée avec Get-NetAdapter, puis configurée avec les paramètres suivants :

Adresse IP : 10.7.237.207
Préfixe réseau : 23
Passerelle par défaut : 10.7.237.1

Cette étape permet de donner une adresse IP fixe à la machine virtuelle.

Capture d'écran : Configuration de l'adresse IP statique

<img width="1724" height="994" alt="Capture d’écran 2026-08-06 202347" src="https://github.com/user-attachments/assets/3c280f43-0a51-4dcc-b4c5-655964aa6f3f" />


3. Vérification de la configuration IP

Cette image montre le résultat de la commande New-NetIPAddress confirmant que l'adresse IP a été créée avec succès.

Les informations affichées permettent de vérifier :

l'adresse IPv4 ;
le préfixe réseau ;
l'interface Ethernet ;
la configuration persistante.

Cette étape confirme que la configuration réseau est correctement appliquée.

Capture d'écran : Vérification de l'adresse IP

<img width="1719" height="994" alt="Capture d’écran 2026-08-06 202600" src="https://github.com/user-attachments/assets/38ee1fdd-33ac-4630-8d66-7e03b6b48c8a" />

4. Configuration DNS et tests de connectivité

Cette image montre la configuration du serveur DNS avec la commande :

Set-DnsClientServerAddress

Les vérifications suivantes ont ensuite été effectuées :

ipconfig
ping 10.7.237.1
ping 8.8.8.8

Les réponses obtenues démontrent que la machine virtuelle communique correctement avec la passerelle et avec Internet.

Capture d'écran : Configuration DNS et tests réseau

<img width="1705" height="997" alt="Capture d’écran 2026-08-06 202614" src="https://github.com/user-attachments/assets/daabf0c9-0375-4ccd-ab46-a47f507ada3e" />

5. Activation du Bureau à distance (RDP)

Cette image montre l'activation du Bureau à distance.

Les commandes suivantes ont été exécutées :

activation de Remote Desktop ;
ouverture des règles du pare-feu Windows ;
vérification du port 3389.

Le résultat indique que le service RDP est bien à l'écoute (Listening).

Capture d'écran : Activation du Bureau à distance

<img width="1714" height="988" alt="Capture d’écran 2026-08-06 202630" src="https://github.com/user-attachments/assets/1709d534-733d-4925-8e2c-53bcfa8eaf6c" />

6. Vérification de la session utilisateur

Cette image montre les dernières vérifications du laboratoire.

Les commandes exécutées sont :

Get-LocalUser
query user

Les résultats confirment que :

le compte Administrator est actif ;
une session utilisateur est ouverte sur la machine virtuelle.

Cette étape valide le bon fonctionnement de l'accès à distance.

Capture d'écran : Vérification de la session utilisateur

<img width="1699" height="983" alt="Capture d’écran 2026-08-06 202643" src="https://github.com/user-attachments/assets/4784b3b9-2a9c-4362-aefc-4f0a3c321197" />

Conclusion

Au cours de ce laboratoire, j'ai configuré avec succès les paramètres réseau de ma machine virtuelle Windows Server 2022. J'ai vérifié 
la configuration existante, configuré une adresse IP statique, défini la passerelle par défaut et le serveur DNS, puis validé 
la connectivité réseau à l'aide des commandes ipconfig et ping. J'ai également activé le Bureau à distance (RDP) et confirmé 
son bon fonctionnement en vérifiant le port d'écoute ainsi que la session utilisateur active. Ce laboratoire m'a permis de mieux 
comprendre la configuration réseau sous Windows Server et de préparer la machine virtuelle pour les prochains travaux portant 
sur les services réseau et l'administration à distance.
