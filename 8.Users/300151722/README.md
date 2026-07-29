# Rapport d'atelier - Gestion des utilisateurs et des groupes

**ID :** 300151722  
**Nom :** Islam Oustani  
**Projet :** Gestion des utilisateurs, des groupes et des permissions  
**Cours :** INF1092-201-E26-01  

## Situation

Lors de cet atelier, j’ai utilisé PowerShell sur Windows Server 2022 Datacenter afin de créer et gérer des utilisateurs locaux.

J’ai également créé un groupe local, ajouté un utilisateur dans ce groupe, attribué des permissions sur un dossier, désactivé et réactivé un compte, puis supprimé les ressources créées.

Les captures d’écran suivantes montrent les principales étapes réalisées pendant ce laboratoire.

# Partie 1 : Création des utilisateurs

## Explication

Dans cette partie, j’ai créé deux utilisateurs locaux nommés **etudiant01** et **etudiant02** avec PowerShell.

J’ai ensuite utilisé la commande `Get-LocalUser` pour vérifier que les deux comptes ont été créés correctement. La colonne **Enabled** affiche `True`, ce qui confirme que les deux comptes sont actifs.

## Réponse à la question

**Question : Le compte etudiant01 apparaît-il dans la liste ?**

Oui, le compte **etudiant01** apparaît dans la liste des utilisateurs locaux. Le compte **etudiant02** apparaît également dans la liste.

---

# Partie 2 : Création du groupe INF1092

## Explication

Dans cette partie, j’ai créé un groupe local nommé **INF1092** avec PowerShell.

J’ai ensuite utilisé la commande `Get-LocalGroup` pour vérifier que le groupe a été créé correctement. Le groupe **INF1092** apparaît dans la liste avec la description **Groupe des étudiants INF1092**.

## Photo des Parties 1 et 2

<img width="937" height="1027" alt="1et2" src="https://github.com/user-attachments/assets/f3e4832f-a8ce-4d74-863f-59057501d2e2" />

## Réponse à la question

**Question : Le groupe INF1092 a-t-il été créé avec succès ?**

Oui, le groupe **INF1092** a été créé avec succès. Il apparaît dans la liste des groupes locaux.


# Partie 3 : Ajouter un utilisateur au groupe INF1092

## Explication

Dans cette partie, j’ai ajouté l’utilisateur **etudiant01** au groupe local **INF1092** avec PowerShell.

J’ai ensuite affiché les membres du groupe afin de vérifier que l’utilisateur a été ajouté correctement. Le résultat montre que **etudiant01** est un utilisateur local et qu’il appartient maintenant au groupe **INF1092**.

## Photo du résultat

<img width="853" height="174" alt="3" src="https://github.com/user-attachments/assets/17b88051-8f0a-4de9-9082-9a0104ff320b" />


## Réponse à la question

**Question : Quels membres appartiennent au groupe INF1092 ?**

Le groupe **INF1092** contient le membre local **etudiant01**.

# Partie 4 : Gestion des permissions du dossier

## Explication

Dans cette partie, j’ai créé un dossier nommé **Laboratoire** dans le disque `C:`.

J’ai ensuite utilisé `Get-Acl` pour afficher les permissions déjà présentes sur le dossier.

Après cela, j’ai ajouté une règle de sécurité pour donner au groupe **INF1092** le contrôle total sur le dossier `C:\Laboratoire`, ainsi que sur les fichiers et les sous-dossiers qu’il contient.

La vérification finale confirme que le groupe **INF1092** possède la permission **FullControl**, avec le type d’accès **Allow**.

## Photos du résultat

<img width="916" height="1037" alt="4 0" src="https://github.com/user-attachments/assets/8c0cc085-b6bd-4c70-adcc-715fe4d638f2" />


<img width="621" height="1017" alt="4 1" src="https://github.com/user-attachments/assets/760845c4-3a23-4696-9b56-b466eb2b664f" />


## Réponse à la question

**Question : Quel niveau d’accès possède maintenant le groupe INF1092 ?**

Le groupe **INF1092** possède maintenant le niveau d’accès **FullControl** sur le dossier `C:\Laboratoire`.

Cela signifie que les membres du groupe peuvent lire, créer, modifier et supprimer les fichiers et les sous-dossiers.

# Partie 5 : Désactiver et réactiver un compte

## Explication

Dans cette partie, j’ai désactivé le compte local **etudiant02** avec PowerShell.

J’ai ensuite utilisé la commande `Get-LocalUser` pour vérifier son état. La colonne **Enabled** affichait `False`, ce qui confirme que le compte était désactivé.

Après cela, j’ai réactivé le compte **etudiant02**. Une nouvelle vérification a montré que la colonne **Enabled** affichait `True`, ce qui confirme que le compte est de nouveau actif.

## Photo du résultat

Oui, le compte **etudiant02** a été désactivé puis réactivé avec succès. La valeur **Enabled** est passée de `False` à `True`.

## Réponse à la question

**Question : Le compte etudiant02 a-t-il été désactivé puis réactivé avec succès ?**

Oui, le compte **etudiant02** a été désactivé puis réactivé avec succès. La valeur **Enabled** est passée de `False` à `True`.

# Partie 6 : Suppression des ressources créées

## Explication

Dans cette partie, j’ai vérifié que l’utilisateur **etudiant01** appartenait encore au groupe **INF1092**.

J’ai ensuite retiré l’utilisateur **etudiant01** du groupe avec la commande `Remove-LocalGroupMember`.

Après cela, j’ai supprimé le compte local **etudiant01** avec la commande `Remove-LocalUser`.

Pour terminer, j’ai affiché de nouveau les membres du groupe et la liste des utilisateurs locaux. Le résultat final montre que **etudiant01** ne fait plus partie du groupe **INF1092** et que son compte a été supprimé du serveur.

## Photo du résultat

<img width="917" height="652" alt="6" src="https://github.com/user-attachments/assets/74b35270-4376-42ea-8625-b76f119d46e9" />


## Résultat

L’utilisateur **etudiant01** a été retiré du groupe **INF1092**, puis son compte local a été supprimé avec succès.


# Questions d’analyse

## 1. Quelle est la différence entre un utilisateur et un groupe ?

Un **utilisateur** est un compte individuel qui permet à une personne de se connecter au système et d’utiliser les ressources disponibles.

Un **groupe** contient plusieurs utilisateurs. Il permet de gérer plus facilement les permissions de plusieurs comptes en même temps.

---

## 2. Pourquoi utilise-t-on les groupes pour attribuer des permissions ?

On utilise les groupes pour simplifier la gestion des permissions.

Au lieu d’attribuer les mêmes droits à chaque utilisateur séparément, on attribue les permissions au groupe. Ensuite, tous les utilisateurs ajoutés à ce groupe reçoivent les mêmes droits.

---

## 3. Que signifie le principe du moindre privilège ?

Le principe du moindre privilège consiste à donner à un utilisateur uniquement les permissions nécessaires pour effectuer son travail.

Cela permet de réduire les risques d’erreurs, d’accès non autorisés et de problèmes de sécurité.

---

## 4. Quelle commande PowerShell permet d’afficher les utilisateurs locaux ?

```powershell
Get-LocalUser

La vérification finale confirme que le compte **etudiant01** n’apparaît plus dans la liste des utilisateurs locaux.
