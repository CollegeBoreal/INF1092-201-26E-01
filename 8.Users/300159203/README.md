Rapport de Laboratoire 8 USERS

Réalisation des étapes et preuves

Partie 1 : Création des utilisateurs
Un mot de passe sécurisé a été converti en chaîne sécurisée, puis les comptes etudiant01 et etudiant02 ont été créés.
<img width="2560" height="1176" alt="1" src="https://github.com/user-attachments/assets/19ac909d-9133-433b-b659-702eed477bce" />
les comptes etudiant01 et etudiant02 apparaissent bien avec l'état True (actif) dans la liste affichée par Get-LocalUser.
Partie 2 : Création d'un groupe
Le groupe local INF1092 a été créé pour regrouper les utilisateurs du cours.
<img width="1024" height="581" alt="2" src="https://github.com/user-attachments/assets/59cbb89d-389f-40aa-866a-053234b0886d" />
le groupe INF1092 apparaît en haut de la liste retournée par la commande Get-LocalGroup.
Partie 3 : Ajout d'un utilisateur au groupe
L'utilisateur etudiant01 a été ajouté au groupe INF1092.
<img width="1347" height="828" alt="3" src="https://github.com/user-attachments/assets/9edbf820-bccd-4bca-b1af-11c169835a78" />
L'utilisateur WIN-PIIMHGD3T2L\etudiant01 est le seul membre actuellement présent dans le groupe.
Partie 4 : Gestion des permissions sur le dossier
Le dossier C:\Laboratoire a été créé, puis les permissions NTFS ont été modifiées pour accorder le contrôle total (FullControl) au groupe INF1092 avec héritage des objets et conteneurs.
<img width="2546" height="1594" alt="4" src="https://github.com/user-attachments/assets/a47c3d4f-b858-4d36-8b80-a6d5f38e7653" />
Le groupe INF1092 possède le niveau d'accès FullControl (Contrôle total) avec héritage appliqué sur les sous-dossiers et fichiers (ContainerInherit, ObjectInherit).
Partie 5 & 6 : Gestion du cycle de vie et nettoyage
Le compte etudiant02 a été désactivé puis réactivé pour test. Enfin, les ressources de test ont été nettoyées (etudiant01 retiré du groupe et etudiant02 supprimé).
<img width="2231" height="1245" alt="5" src="https://github.com/user-attachments/assets/e5066f45-7f56-4b08-b00b-92c4d52b9085" />
Quelle est la différence entre un utilisateur et un groupe ?

Un utilisateur représente une identité unique (personne ou service) avec des identifiants propres pour s'authentifier. Un groupe est une entité collective qui rassemble plusieurs utilisateurs afin de leur appliquer des règles ou des accès communs.

Pourquoi utilise-t-on les groupes pour attribuer des permissions ?

Pour simplifier l'administration et réduire les erreurs. Il est beaucoup plus rapide et efficace d'attribuer des droits à un groupe une seule fois, puis d'y ajouter ou retirer des utilisateurs, plutôt que de gérer les permissions dossier par dossier pour chaque individu.

Que signifie le principe du moindre privilège ?

C'est une règle de sécurité fondamentale qui stipule qu'un utilisateur ou un système ne doit disposer que des autorisations strictement nécessaires à l'exécution de ses tâches, et rien de plus.

Quelle commande PowerShell permet d'afficher les utilisateurs locaux ?

Get-LocalUser

Quelle commande permet d'afficher les membres d'un groupe ?

Get-LocalGroupMember -Group "NomDuGroupe"


