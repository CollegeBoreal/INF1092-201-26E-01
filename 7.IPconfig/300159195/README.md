## ISLEM TOUADJNI

Configuration IP statique et validation de la connectivité réseau
## . Vérification de la configuration réseau et des tests de connectivité

Cette image présente la vérification complète de la configuration réseau de la machine virtuelle Windows Server.
Les éléments suivants sont affichés :
Le nom de l’hôte de la machine virtuelle
L’adresse IPv4 statique 10.7.237.220
Le masque de sous-réseau 255.255.254.0
La passerelle par défaut 10.7.237.1
Le serveur DNS 10.7.237.3
La désactivation du DHCP
La commande suivante a été utilisée pour afficher la configuration complète :
ipconfig /all
Deux tests de connectivité ont ensuite été effectués :
ping 10.7.237.1
Cette commande confirme que la machine virtuelle communique correctement avec la passerelle du réseau.
ping google.ca
Cette commande confirme que la résolution DNS fonctionne et que la machine virtuelle peut accéder au réseau externe.
Les résultats montrent que les paquets ont été reçus sans perte, ce qui valide la configuration IP, la passerelle et le DNS

<img width="942" height="2040" alt="WhatsApp Image 2026-07-16 at 3 08 45 PM" src="https://github.com/user-attachments/assets/6dea4a71-efa0-41e5-bc8c-076a5c10b017" />

## . Vérification finale du réseau et du service RDP

Cette image regroupe les résultats finaux de la configuration réseau et du Bureau à distance.
La configuration affichée confirme les paramètres suivants :
Adresse IPv4 : 10.7.237.220
Masque : 255.255.254.0
Passerelle : 10.7.237.1
DNS : 10.7.237.3
DHCP : désactivé
Les tests suivants ont été exécutés avec succès :
ping 10.7.237.1
Le résultat montre quatre réponses reçues et aucune perte de paquet.
ping google.ca
Le nom de domaine a été résolu correctement en adresse IP et les réponses ont été reçues sans perte.
Enfin, le port du Bureau à distance a été vérifié avec la commande :
Test-NetConnection localhost -Port 3389
Le résultat attendu apparaît :
TcpTestSucceeded : True
Cela confirme que le service RDP est actif et que la machine virtuelle peut accepter une connexion Bureau à distance sur le port 3389.

<img width="942" height="2040" alt="image" src="https://github.com/user-attachments/assets/9e93666b-1cba-428f-a841-ba9ed2e500e1" />


## Conclusion

La configuration réseau de la machine virtuelle a été réalisée avec succès.
Les validations suivantes ont été confirmées :
Adresse IP statique correctement configurée
Passerelle accessible
Serveur DNS fonctionnel
Accès réseau externe disponible
Service RDP actif sur le port 3389
La machine virtuelle est donc prête à être administrée à distance.
