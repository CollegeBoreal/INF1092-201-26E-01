# Projet d adressage IP dans ma machine Virtuel 
Dans Ce projet j explique  comment je fais pour pouvoir attribuer une adresse ip a ma machine virtuel pour permettre la connection a distance en utilisant le service RDP 
\
# Étape 1 – Vérification de la configuration réseau actuelle

Avant de modifier les paramètres réseau de la machine virtuelle, j'ai ouvert Windows PowerShell en mode administrateur et exécuté les commandes hostname puis Get-NetIPConfiguration. La première commande permet de vérifier le nom de l'ordinateur, tandis que la seconde affiche la configuration réseau actuelle.
Les informations obtenues montrent que la machine possède une adresse IPv4 attribuée automatiquement (10.7.236.146), une passerelle par défaut (10.7.237.1) ainsi que plusieurs serveurs DNS.

# Étape 2 – Configuration d'une adresse IP statique 

Après avoir vérifié la configuration actuelle, j'ai ouvert les propriétés de la carte réseau Ethernet, puis les paramètres du protocole IPv4. J'ai sélectionné l'option « Utiliser l'adresse IP suivante » afin de remplacer l'adresse obtenue automatiquement par une adresse IP fixe.

J'ai ensuite saisi les paramètres réseau demandés :

# Adresse IP : 10.7.237.222 (Address personnel)
# Masque de sous-réseau : 255.255.255.0
# Passerelle par défaut : 10.7.237.1
# Serveur DNS préféré : 10.7.237.3 





