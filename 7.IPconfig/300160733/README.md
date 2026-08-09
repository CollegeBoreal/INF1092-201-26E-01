Nom : Yanis Belhadi 300160733
Réseau Hyper-V et accès RDP :
1. Vérification du nom de la machine virtuelle et de la configuration réseau

Avant de modifier la configuration réseau, j’ai vérifié le nom de la machine virtuelle ainsi que la configuration IP actuelle ,La commande hostname permet de vérifier le nom de la machine virtuelle.
La commande ipconfig /all permet d’afficher les informations réseau comme l’adresse IPv4, le masque de sous-réseau, la passerelle par défaut et les serveurs DNS.

<img width="2048" height="1536" alt="image" src="https://github.com/user-attachments/assets/e67729df-b230-4e9f-b491-ec03a9d7a5bc" />

2. Vérification de l’interface réseau Ethernet :
J’ai ensuite vérifié l’interface réseau utilisée par la machine virtuelle , Le résultat montre que l’interface utilisée est Ethernet avec un adaptateur Microsoft Hyper-V Network Adapter.
L’état de l’interface est Up, ce qui confirme que la carte réseau est active. La vitesse de connexion affichée est de 1 Gbps.

<img width="2048" height="1536" alt="image" src="https://github.com/user-attachments/assets/16dbf408-9a65-4cf5-8228-eb92be373137" />

3. Tests réseau et activation du Bureau à distance (RDP) :

Après la configuration de l’adresse IP, j’ai effectué des tests de connectivité , Lors de cette première vérification, les tests réseau ont échoué. Cela indiquait que la configuration réseau devait encore être corrigée.
J’ai également activé le Bureau à distance avec les commandes PowerShell nécessaires et ouvert les règles correspondantes dans le pare-feu Windows.
Le résultat de la dernière commande indique que le port 3389 est en état Listen, ce qui confirme que le service RDP est à l’écoute.

<img width="2048" height="1536" alt="image" src="https://github.com/user-attachments/assets/8a69a9aa-3e93-4075-b6b8-419b81b226c2" />

4. Vérification du compte et de la session utilisateur :

Après l’activation du Bureau à distance, j’ai vérifié les utilisateurs locaux ainsi que la session active , La commande Get-LocalUser montre que le compte Administrator est activé.
La commande quser confirme également qu’une session Administrator est ouverte et active sur la machine virtuelle.
Cette vérification permet de confirmer que la machine est prête pour l’utilisation du Bureau à distance.

<img width="2048" height="1536" alt="image" src="https://github.com/user-attachments/assets/c10ff26d-e4a7-4889-b64e-b80d595b657b" />

5. Configuration du serveur DNS :

J’ai configuré le serveur DNS de l’interface Ethernet ,pour vérifier la configuration.
Le résultat confirme les paramètres suivants :
Adresse IPv4 : 10.7.237.231
Masque de sous-réseau : 255.255.254.0
Passerelle par défaut : 10.7.237.1
Serveur DNS : 10.7.237.3
DHCP : désactivé
Cette étape confirme que l’adresse IP statique et le serveur DNS sont correctement configurés.

<img width="2048" height="1536" alt="image" src="https://github.com/user-attachments/assets/d1a09322-e336-4674-912f-2a13c2db03f6" />

6. Vérification finale de la connectivité réseau :

Pour terminer, j’ai vérifié la communication avec la passerelle par défaut.
Un premier test vers l’adresse 10.7.0.237 n’a reçu aucune réponse , J’ai ensuite testé la bonne passerelle ,Le résultat montre :
4 paquets envoyés
4 paquets reçus
0 % de perte
Cela confirme que la machine virtuelle communique correctement avec la passerelle 10.7.237.1

<img width="1536" height="2048" alt="image" src="https://github.com/user-attachments/assets/aac60db0-7950-4f0d-a8fe-907837e1ab6c" />

Conclusion :

Au cours de ce laboratoire, j’ai vérifié la configuration réseau de ma machine virtuelle Windows Server, identifié l’interface Ethernet et configuré une adresse IP statique. J’ai également configuré la passerelle par défaut et le serveur DNS. Après les corrections nécessaires, la communication avec la passerelle 10.7.237.1 fonctionne correctement. J’ai aussi activé le Bureau à distance (RDP), vérifié le port 3389 et confirmé que le compte Administrator possède une session active. Ces étapes permettent de préparer la machine virtuelle pour l’administration à distance.
