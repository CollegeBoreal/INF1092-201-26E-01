 Gestion des utilisateurs et des permissions avec PowerShell

Dans ce laboratoire, j'ai utilisé PowerShell dans ma machine virtuelle (VM) pour administrer un système Windows en automatisant la gestion des utilisateurs, des groupes et des permissions. J'ai créé des comptes d'utilisateurs locaux avec des mots de passe sécurisés, mis en place un groupe local, ajouté des utilisateurs à ce groupe et configuré les autorisations d'accès à un dossier à l'aide des ACL (Access Control Lists). J'ai également appris à désactiver, réactiver et supprimer des comptes utilisateurs, tout en appliquant le principe du moindre privilège afin d'améliorer la sécurité du système. Ce projet m'a permis de développer des compétences pratiques en administration Windows, en gestion des utilisateurs, des groupes, des mots de passe, des permissions et en automatisation des tâches administratives avec PowerShell.
Cette capture d'écran montre l'exécution des commandes PowerShell permettant de créer les utilisateurs locaux etudiant01 et etudiant02 avec un mot de passe sécurisé. La commande Get-LocalUser confirme que les deux comptes ont été créés avec succès et apparaissent dans la liste des utilisateurs locaux.
<img width="1600" height="1200" alt="b82756a8-cdbf-43ce-bf0a-7d2bc243f519" src="https://github.com/user-attachments/assets/c444e141-866c-4019-90bf-a7da5a0dffd8" />
montre le résultat de la commande Get-LocalUser dans PowerShell. Elle confirme que les utilisateurs locaux etudiant01 et etudiant02 ont été créés avec succès et qu'ils apparaissent dans la liste des comptes utilisateurs du système.
<img width="1600" height="1200" alt="WhatsApp Image 2026-07-27 at 13 42 41" src="https://github.com/user-attachments/assets/1a808213-b999-40bf-a754-829dff0ba102" />
Cette capture d'écran montre l'exécution de la commande Get-LocalGroup dans PowerShell. Elle confirme que le groupe local INF1092 existe déjà et apparaît dans la liste des groupes locaux du système. Le message affiché indique également que le groupe ne peut pas être recréé puisqu'il existe déjà.
<img width="1600" height="1200" alt="WhatsApp Image 2026-07-27 at 13 42 21" src="https://github.com/user-attachments/assets/63279a7f-63ef-4647-a5ff-b7f2e5e4df2d" />
montre l'ajout des utilisateurs etudiant01 et etudiant02 au groupe local INF1092 à l'aide de la commande Add-LocalGroupMember. La commande Get-LocalGroupMember confirme que les deux utilisateurs sont maintenant membres du groupe INF1092.
<img width="1600" height="1200" alt="WhatsApp Image 2026-07-27 at 13 42 28" src="https://github.com/user-attachments/assets/b85154cd-d988-4e71-9410-e4ed0170d97f" />
Cette capture d'écran montre la configuration des permissions du dossier C:\Laboratoire à l'aide des ACL (Access Control Lists) dans PowerShell. Le groupe INF1092 s'est vu attribuer le niveau d'accès FullControl (Contrôle total), ce qui est confirmé par la commande (Get-Acl "C:\Laboratoire").Access affichant les autorisations du dossier.
<img width="1600" height="1200" alt="WhatsApp Image 2026-07-27 at 13 42 33" src="https://github.com/user-attachments/assets/b524711c-798a-4ef2-9d0d-7f830b572b48" />
ette capture d'écran montre la désactivation du compte utilisateur etudiant02 à l'aide de la commande Disable-LocalUser. La commande Get-LocalUser -Name "etudiant02" confirme que le compte est bien désactivé, comme l'indique la valeur Enabled : False.
<img width="1600" height="1200" alt="WhatsApp Image 2026-07-27 at 13 42 34" src="https://github.com/user-attachments/assets/ee8c7360-b111-4ad0-b450-8a82b1bd0d9e" />
montre la désactivation puis la réactivation du compte utilisateur etudiant02 à l'aide des commandes Disable-LocalUser et Enable-LocalUser. Les commandes Get-LocalUser -Name "etudiant02" confirment que l'état du compte passe d'abord à Enabled : False (désactivé), puis à Enabled : True (réactivé).
<img width="1600" height="1200" alt="WhatsApp Image 2026-07-27 at 13 42 40" src="https://github.com/user-attachments/assets/eaf169b3-9e9e-4af9-a36d-e9b6589011a4" />
Cette capture d'écran montre les dernières étapes du laboratoire PowerShell. Après la réactivation du compte etudiant02, la commande Remove-LocalGroupMember retire l'utilisateur du groupe INF1092, puis la commande Remove-LocalUser supprime le compte etudiant02. Cette étape permet de nettoyer les ressources créées à la fin du laboratoire.
<img width="1678" height="937" alt="140aaf4b-caf1-4718-b183-6734f644341a" src="https://github.com/user-attachments/assets/f77e3c30-9122-4f9b-9a27-69595413728f" />
Réponses aux questions d'analyse

1. Quelle est la différence entre un utilisateur et un groupe ?
Un utilisateur est un compte individuel permettant à une personne de se connecter au système. Un groupe est un ensemble d'utilisateurs utilisé pour gérer les permissions plus facilement.

2. Pourquoi utilise-t-on les groupes pour attribuer des permissions ?
Parce qu'il est plus simple de donner des permissions à un groupe qu'à chaque utilisateur individuellement.

3. Que signifie le principe du moindre privilège ?
Il consiste à donner uniquement les permissions nécessaires pour accomplir une tâche, afin de renforcer la sécurité.

4. Quelle commande PowerShell permet d'afficher les utilisateurs locaux ?

Get-LocalUser

5. Quelle commande permet d'afficher les membres d'un groupe ?

Get-LocalGroupMember -Group "INF1092"








 
