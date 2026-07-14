Rapport de configuration réseau de la machine virtuelle

Dans ce laboratoire, j’ai configuré le réseau de ma machine virtuelle Windows Server 2022 et vérifié que la connexion à distance fonctionnait correctement.

Le nom de ma machine virtuelle est WIN-U50444GJJEN. Je l’ai vérifié avec la commande hostname.

J’ai ensuite configuré l’adresse IP statique 10.7.237.218. Le masque de sous-réseau est 255.255.254.0, la passerelle par défaut est 10.7.237.1 et le serveur DNS est 10.7.237.3.

La commande ipconfig /all confirme que la machine utilise bien cette configuration et que le DHCP est désactivé.

Pour vérifier la connexion au réseau, j’ai lancé un ping vers le serveur DNS avec la commande ping 10.7.237.3. Les quatre paquets ont été reçus, avec une perte de 0 %.

J’ai aussi utilisé la commande ping google.ca. Le test a réussi sans perte de paquets. Cela confirme que la connexion Internet et la résolution DNS fonctionnent correctement.

Enfin, j’ai activé le Bureau à distance et vérifié le port RDP avec la commande Test-NetConnection localhost -Port 3389. Le résultat affiché était TcpTestSucceeded : True.

J’ai ensuite réussi à me connecter à ma machine virtuelle depuis mon MacBook avec Windows App, en utilisant l’adresse IP 10.7.237.218.

Ce laboratoire m’a permis de travailler avec une adresse IPv4 statique, un serveur DNS, une passerelle, le pare-feu Windows et la connexion RDP. Il prépare aussi la suite du cours sur DHCP, DNS et Active Directory.

Captures d’écran

Les captures suivantes sont ajoutées à la fin du rapport :

Nom de la machine virtuelle
Configuration ipconfig /all
Ping vers 10.7.237.3
Ping vers google.ca
Vérification du port RDP
Connexion RDP réussie à la machine virtuelle


<img width="886" height="846" alt="Screenshot 2026-07-09 at 1 54 11 PM" src="https://github.com/user-attachments/assets/7dbb5c38-bb77-4d8a-be2a-ec8506576302" />
<img width="958" height="895" alt="Screenshot 2026-07-09 at 2 11 25 PM" src="https://github.com/user-attachments/assets/b843f6d8-f6f4-4562-8b5d-3e172ac8a068" />
<img width="908" height="906" alt="Screenshot 2026-07-09 at 2 39 31 PM" src="https://github.com/user-attachments/assets/85b6f844-1954-45bd-8adc-bd0f4506d80f" />
<img width="908" height="906" alt="Screenshot 2026-07-09 at 2 41 13 PM" src="https://github.com/user-attachments/assets/335c2987-fa94-46b3-82da-6167a7b0b854" />
<img width="849" height="891" alt="Screenshot 2026-07-09 at 3 04 17 PM" src="https://github.com/user-attachments/assets/2dbed7df-4d74-41ad-a719-70dc35229e73" />
<img width="853" height="925" alt="Screenshot 2026-07-09 at 5 26 53 PM" src="https://github.com/user-attachments/assets/21c22b4b-52d6-420c-a0fa-9feea6cd40cd" />
<img width="853" height="925" alt="Screenshot 2026-07-09 at 5 27 19 PM" src="https://github.com/user-attachments/assets/c8a2a464-f175-48a1-9bbb-85d4b621667a" />




