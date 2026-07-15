# Projet d adressage IP dans ma machine Virtuel 
Dans Ce projet j explique  comment je fais pour pouvoir attribuer une adresse ip a ma machine virtuel pour permettre la connection a distance en utilisant le service RDP 
\
# Étape 1 – Vérification de la configuration réseau actuelle

Avant de modifier les paramètres réseau de la machine virtuelle, j'ai ouvert Windows PowerShell en mode administrateur et exécuté les commandes hostname puis Get-NetIPConfiguration. La première commande permet de vérifier le nom de l'ordinateur, tandis que la seconde affiche la configuration réseau actuelle.
Les informations obtenues montrent que la machine possède une adresse IPv4 attribuée automatiquement (10.7.236.146), une passerelle par défaut (10.7.237.1) ainsi que plusieurs serveurs DNS.


![Image](images/WhatsApp%20Image%202026-07-15%20at%2011.29.46%20(1).jpeg)

# Étape 2 – Configuration d'une adresse IP statique 

Après avoir vérifié la configuration actuelle, j'ai ouvert les propriétés de la carte réseau Ethernet, puis les paramètres du protocole IPv4. J'ai sélectionné l'option « Utiliser l'adresse IP suivante » afin de remplacer l'adresse obtenue automatiquement par une adresse IP fixe.

![Image](images/WhatsApp%20Image%202026-07-15%20at%2012.09.02%20(1).jpeg)

![Image](images/WhatsApp%20Image%202026-07-15%20at%2012.09.02%20(2).jpeg)

J'ai ensuite saisi les paramètres réseau demandés :

# Adresse IP : 10.7.237.222 (Address personnel)
# Masque de sous-réseau : 255.255.255.0
# Passerelle par défaut : 10.7.237.1
# Serveur DNS préféré : 10.7.237.3 

# Image 1 – Tentative de connexion RDP

La première image montre le logiciel Remote Desktop Connection (mstsc) qui tente de se connecter à l'adresse IP 10.7.237.222.


![Image](images/WhatsApp%20Image%202026-07-15%20at%2013.45.22%20(4).jpeg)

L'état "Securing remote connection..." signifie que le client a réussi à joindre le serveur.
Windows est en train d'établir une connexion sécurisée avant de demander les identifiants ou d'ouvrir la session.

# Image 2 – Vérification du service RDP

![Image](images/WhatsApp%20Image%202026-07-15%20at%2013.45.22%20(1).jpeg)

Dans PowerShell, la commande utilisée est :

Get-NetTCPConnection -LocalPort 3389

Le port 3389 est en état Listen.
Le service Remote Desktop écoute bien les connexions entrantes.
Le serveur est donc prêt à accepter des connexions RDP.





