Le Nom de la VM (hostname):WIN-JK687P45KEU
 <img width="1600" height="1200" alt="WhatsApp Image 2026-07-25 at 17 27 46" src="https://github.com/user-attachments/assets/7b46aaff-6bc3-4524-aeb0-717f47da764f" />
 La commande Get-NetIPConfiguration permet d'afficher la configuration réseau de l'ordinateur. Dans ce cas, elle montre que la carte réseau utilisée est Ethernet (Microsoft Hyper-V Network Adapter). L'ordinateur possède l'adresse IP 10.7.237.6, la passerelle par défaut est 10.7.237.1, et plusieurs serveurs DNS sont configurés (10.7.237.3, 10.7.237.62, 10.7.236.7 et 8.8.8.8). Ces informations confirment que la machine est correctement configurée pour communiquer avec les autres appareils du réseau et accéder aux ressources réseau ainsi qu'à Internet.
<img width="1600" height="1200" alt="WhatsApp Image 2026-07-25 at 17 27 45" src="https://github.com/user-attachments/assets/b93951ce-f598-4832-9499-69aa350ab3ce" />
Résultat de ping 10.7.237.1 Validation de la connectivité réseau locale avec le serveur DNS du laboratoire.
<img width="1600" height="1200" alt="WhatsApp Image 2026-07-25 at 17 27 44" src="https://github.com/user-attachments/assets/395e37bf-3763-4566-a47e-b60a7a880015" />
Résultat de ping google.ca Validation de la résolution de nom de domaine externe et de l'accès Internet.
<img width="1213" height="1296" alt="WhatsApp Image 2026-07-25 at 18 17 43" src="https://github.com/user-attachments/assets/fceb01f4-f25a-419a-a369-6a88a0af170b" />
 > Cette capture montre une machine virtuelle Windows Server ouverte dans **Virtual Machine Connection**. Sur le bureau de la machine virtuelle, la fenêtre **Remote Desktop Connection** est affichée. Le champ **Computer** contient l'adresse IP **10.7.237.6**, et l'utilisateur configuré est **WIN-IK687P45KEU\Administrator**. Cette étape sert à établir une connexion Bureau à distance (RDP) vers une autre machine du réseau afin d'administrer le serveur à distance. La machine virtuelle est exécutée sur un ordinateur portable HP dans une salle de classe.
<img width="1080" height="1440" alt="WhatsApp Image 2026-07-25 at 17 27 47" src="https://github.com/user-attachments/assets/95597e4e-239e-48d7-90ed-2353cfe7b742" />
Connexion RDP réussie à la VM Session Bureau à distance (mstsc) ouverte depuis le poste physique vers l'adresse 10.7.237.6 avec le compte Administrator
<img width="1448" height="1086" alt="WhatsApp Image 2026-07-25 at 17 41 18" src="https://github.com/user-attachments/assets/78b2a5ac-ec8e-4b7b-9869-7cfc5cfdb08b" />





 






 
 
 

 
