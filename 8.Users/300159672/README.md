## 300159672 ##
## Projet Create LOCALUSER and LOCALGROUP ##
Gestion des utilisateurs et des permissions avec PowerShell

Dans ce laboratoire, j'ai utilisé PowerShell dans ma machine virtuelle "VM" pour administrer un système Windows en automatisant la gestion des utilisateurs, des groupes et des permissions. J'ai créé des comptes utilisateurs locaux (Etudiant01 et Etudiant02), mis en place un groupe de sécurité (INF1092), ajouté un utilisateur à ce groupe et configuré les autorisations d'accès sur un dossier (C:\Laboratoire) à l'aide des ACL (Access Control Lists), en donnant un contrôle total au groupe. J'ai également désactivé, réactivé et supprimé un compte utilisateur, ainsi qu'appliqué le principe du moindre privilège afin d'améliorer la sécurité du système. Ce projet m'a permis de développer des compétences pratiques en administration Windows, en gestion des droits d'accès et en automatisation des tâches administratives avec PowerShell.

Dans ce laboratoire, j'ai utilisé PowerShell pour automatiser l'administration d'un système Windows. J'ai créé des comptes utilisateurs et des groupes locaux, ainsi que des mots de passe sécurisés. Après ça, j'ai créé un groupe pour y mettre les utilisateurs que j'ai créés, et aussi mis en place les permissions (Access Control) sur un dossier partagé.

En cours de route, j'ai rencontré et corrigé plusieurs erreurs : un guillemet mal fermé en créant le groupe INF1092, un oubli du paramètre -Member lors de l'ajout au groupe, une faute de frappe dans le namespace .NET (System.Security.AccessControl) et des arguments mal séparés (espaces au lieu de virgules) en créant la règle de permissions. Ces erreurs m'ont aidé à mieux comprendre la rigueur syntaxique de PowerShell.

<img width="1512" height="982" alt="Capture d’écran 2026-08-11 à 14 22 24" src="https://github.com/user-attachments/assets/80e6e804-d5bb-4c0a-b49a-a02e388c842a" />

<img width="1512" height="982" alt="Capture d’écran 2026-08-11 à 14 36 44" src="https://github.com/user-attachments/assets/f226aa8c-04ff-4df7-a7fc-23f2977c729b" />

<img width="1512" height="982" alt="Capture d’écran 2026-08-11 à 15 00 45" src="https://github.com/user-attachments/assets/c64bad77-0ee8-4976-858f-a2ae916c71f6" />

<img width="1512" height="982" alt="Capture d’écran 2026-08-11 à 14 43 34" src="https://github.com/user-attachments/assets/60b26ee7-7560-4615-8b80-1f10452d1cd8" />


 ## Questions d'analyse ##

## 1 - Quelle est la différence entre un utilisateur et un groupe ? 
Un utilisateur est un compte permettant à une personne de se connecter à l'ordinateur. Un groupe est un ensemble d'utilisateurs qui permet de gérer leurs permissions collectivement.
## 2- Pourquoi utilise-t-on les groupes pour attribuer des permissions ?
Les groupes simplifient l'administration. Au lieu d'attribuer les permissions à chaque utilisateur individuellement, on les attribue au groupe. Tous les membres héritent automatiquement de ces permissions.
## 3- Que signifie le principe du moindre privilège ?
Le principe du moindre privilège consiste à donner à chaque utilisateur uniquement les droits nécessaires pour accomplir son travail, afin de limiter les risques de sécurité.
## 4- Quelle commande PowerShell permet d'afficher les utilisateurs locaux ? 
Get-LocalUser
## 5- Quelle commande permet d'afficher les membres d'un groupe ?
Get-LocalGroupMember -Group "INF1092"



