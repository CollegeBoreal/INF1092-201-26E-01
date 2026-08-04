Description du laboratoire — Configuration réseau et accès à distance 

L’objectif de ce laboratoire était de configurer le réseau d’une machine virtuelle Windows Server 2022 et de mettre en place l’accès à distance via RDP. J’ai commencé par vérifier le nom de la machine virtuelle à l’aide de la commande hostname, ce qui m’a permis de confirmer l’identification du serveur. J’ai ensuite affiché la configuration réseau actuelle avec Get-NetIPConfiguration, où l’on voit clairement l’adresse IPv4 attribuée, la passerelle par défaut et la liste des serveurs DNS.
<img width="2000" height="1126" alt="WhatsApp Image 2026-08-04 at 19 04 39" src="https://github.com/user-attachments/assets/75e272b2-61a9-47e8-9281-8b83a46720bc" />

Après cette vérification initiale, j’ai ajusté la configuration réseau. Une tentative de modification du DNS a d’abord généré une erreur de paramètre, ce qui est visible dans la capture PowerShell. J’ai ensuite validé la configuration IP et DNS en consultant ipconfig, qui affiche l’adresse IPv4 (10.7.237.x), le masque de sous réseau et la passerelle 10.7.237.1
<img width="2000" height="1126" alt="WhatsApp Image 2026-08-04 at 19 04 39 (2)" src="https://github.com/user-attachments/assets/5e77111c-93af-4740-a2a6-7fea6c77ff60" />

Une fois la configuration réseau en place, j’ai testé la connectivité. J’ai effectué des pings vers la passerelle, vers Internet et vers un nom de domaine afin de valider la communication locale, l’accès externe et la résolution DNS. [captures : tests de ping]
J’ai ensuite activé le Bureau à distance (RDP) et vérifié que le port 3389 était bien accessible. Le test Test-NetConnection localhost -Port 3389 a confirmé que le service RDP était actif et que le port répondait correctement.
<img width="2000" height="1126" alt="WhatsApp Image 2026-08-04 at 19 04 40 (1)" src="https://github.com/user-attachments/assets/e3b9aaa7-77e8-41d4-86f5-252e32b12023" />

Pour terminer, j’ai établi une connexion à distance à la machine virtuelle via Remote Desktop (mstsc). La connexion s’est effectuée avec succès, ce qui confirme que la configuration réseau, le service RDP et les règles du pare feu étaient correctement appliqués et pleinement opérationnels.


