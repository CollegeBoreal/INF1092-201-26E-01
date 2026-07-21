Résumé de l’installation de Windows Server 2022 Datacenter
Dans ce laboratoire, nous avons procédé à l’installation de Windows Server 2022 Datacenter sur un serveur HP ProLiant G6. Le serveur avait déjà été préparé et assemblé lors du laboratoire précédent, ce qui nous a permis de passer directement à la configuration du stockage et à l’installation du système d’exploitation.

Avant l’installation de Windows Server, nous avons vérifié la configuration du contrôleur de stockage HP Smart Array P410i. Dans l’utilitaire de configuration, les disques physiques SAS ont été détectés correctement. Nous avons ensuite créé un lecteur logique en RAID 5 afin de préparer l’espace de stockage pour l’installation du système. Le lecteur logique affichait une capacité d’environ 273,4 GB.

Après la configuration du stockage, le serveur a été démarré à partir du réseau en utilisant Windows Deployment Services. Le chargement des fichiers d’installation s’est fait à partir du serveur réseau, avec le fichier boot.wim. Ensuite, l’assistant d’installation de Windows Server 2022 s’est lancé correctement.

Pendant l’installation, nous avons sélectionné le disque disponible, soit le lecteur non alloué de 273,4 GB, comme emplacement d’installation du système d’exploitation. L’installation s’est ensuite poursuivie normalement jusqu’au premier démarrage de Windows Server.

Une fois l’installation terminée, nous avons configuré le compte administrateur local en créant un mot de passe. Le serveur a ensuite affiché l’écran de connexion, puis le bureau de Windows Server 2022. Cela confirme que le système d’exploitation a bien été installé et qu’il démarre correctement.

En conclusion, l’installation de Windows Server 2022 Datacenter sur le serveur HP G6 a été réalisée avec succès. Le stockage RAID a été configuré, le disque logique a été reconnu par l’assistant d’installation, le système a démarré correctement et le serveur est maintenant prêt pour la configuration réseau et l’administration à distance..


<image src=images/1.jpg width=50% height=50% > </image>
<image src=images/2.jpg width=50% height=50% > </image>
<image src=images/3.jpg width=50% height=50% > </image>
<image src=images/4.jpg width=50% height=50% > </image>
<image src=images/5.jpg width=50% height=50% > </image>
<image src=images/6.jpg width=50% height=50% > </image>
<image src=images/7.jpg width=50% height=50% > </image>
<image src=images/8.jpg width=50% height=50% > </image>
<image src=images/9.jpg width=50% height=50% > </image>
