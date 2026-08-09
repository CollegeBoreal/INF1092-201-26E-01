Nom : Yanis Belhadi 300160733 

Laboratoire PowerShell : Gestion des utilisateurs (INF1092)

 1. Création des utilisateurs et du groupe INF1092 :

J’ai commencé par créer un mot de passe sécurisé , J’ai ensuite créé les utilisateurs etudiant01 et etudiant02 , ’ai ensuite créé le groupe INF1092 ,
La commande Get-LocalGroup confirme que le groupe INF1092 a été créé avec succès.

<img width="1812" height="985" alt="image" src="https://github.com/user-attachments/assets/66aeb2d5-9c6e-4f1a-a8c1-bec1ab7a7e10" />

2. Ajout des utilisateurs au groupe INF1092 :

J’ai ajouté les deux utilisateurs dans le groupe INF1092 , Le résultat montre que etudiant01 et etudiant02 sont bien membres du groupe INF1092.

<img width="1810" height="992" alt="image" src="https://github.com/user-attachments/assets/dc9c7d3a-76c5-42bd-8c04-9035409e5c0f" />

3. Création du dossier et vérification des permissions :

J’ai créé le dossier C:\Laboratoire , J’ai ensuite vérifié les permissions actuelles du dossier ,J’ai ensuite préparé une nouvelle règle pour donner au groupe INF1092 un accès complet au dossier.

<img width="1802" height="1015" alt="image" src="https://github.com/user-attachments/assets/109468e6-cf04-40c9-8b3b-fbe9ac646984" />

4. Attribution du contrôle complet au groupe INF1092 :

J’ai appliqué une nouvelle règle de permission au groupe INF1092 sur le dossier C:\Laboratoire.Le résultat montre que le groupe INF1092 possède maintenant la permission FullControl.
Cela signifie que les membres du groupe ont un accès complet au dossier et à son contenu.

<img width="1832" height="1027" alt="image" src="https://github.com/user-attachments/assets/6b01cb30-35b6-4d33-a534-db6f61621e99" />

5. Désactivation, réactivation et suppression du compte etudiant02 :

J’ai commencé par désactiver le compte etudiant02 , J’ai vérifié son état , Le résultat affiche False, ce qui confirme que le compte est désactivé.
J’ai ensuite réactivé le compte , Une nouvelle vérification affiche True, ce qui confirme que le compte est de nouveau actif.
Pour terminer, j’ai retiré l’utilisateur du groupe INF1092 puis supprimé son compte , Cette étape permet de supprimer les ressources qui ne sont plus nécessaires.

<img width="1797" height="995" alt="image" src="https://github.com/user-attachments/assets/28560119-7793-470c-bd29-7017b29108d7" />


Questions d'analyse :

1. Quelle est la différence entre un utilisateur et un groupe ?

Un utilisateur représente un compte individuel. Un groupe permet de rassembler plusieurs utilisateurs pour gérer plus facilement leurs permissions.

2. Pourquoi utilise-t-on les groupes pour attribuer des permissions ?

Les groupes permettent d'attribuer les mêmes permissions à plusieurs utilisateurs en même temps.

3. Que signifie le principe du moindre privilège ?

Cela signifie qu'un utilisateur doit avoir seulement les permissions nécessaires pour effectuer son travail.

4. Quelle commande PowerShell permet d'afficher les utilisateurs locaux ?

   Get-LocalUser

5. Quelle commande permet d'afficher les membres d'un groupe ?

   Get-LocalGroupMember -Group "INF1092"


   Conclusion :

Ce laboratoire m’a permis d’apprendre à gérer les utilisateurs et les groupes locaux avec PowerShell.

J’ai créé deux comptes utilisateurs et un groupe INF1092, puis ajouté les utilisateurs dans ce groupe. J’ai également créé le dossier C:\Laboratoire et attribué au groupe les permissions de contrôle complet.

Enfin, j’ai appris à désactiver, réactiver et supprimer un compte utilisateur. Ce laboratoire m’a permis de mieux comprendre la gestion des comptes, des groupes et des permissions sous Windows Server avec PowerShell.
   
