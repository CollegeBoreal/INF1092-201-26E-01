## TOUADJNI ISLEM

# Gestion des utilisateurs, des groupes et des permissions avec PowerShell

## Introduction

Dans ce laboratoire, j’ai utilisé PowerShell dans une machine virtuelle Windows Server afin de gérer des utilisateurs locaux, des groupes et les permissions d’un dossier.

Le travail réalisé comprend la création de deux comptes utilisateurs, la création d’un groupe local, l’ajout des utilisateurs dans ce groupe, la gestion des permissions sur un dossier, la désactivation et la réactivation d’un compte, puis la suppression des ressources créées.

Toutes les opérations ont été effectuées avec les privilèges d’administrateur.



## 1. Création des utilisateurs et du groupe local

Cette première partie présente la création des comptes locaux etudiant01 et etudiant02.

Les résultats affichés confirment que les deux utilisateurs ont été créés correctement et que leurs comptes sont activés.

Un groupe local nommé INF1092 a ensuite été créé afin de regrouper les utilisateurs du laboratoire.

Après la création du groupe, les utilisateurs etudiant01 et etudiant02 ont été ajoutés au groupe INF1092.

La vérification finale confirme que les deux comptes existent, qu’ils sont activés et qu’ils appartiennent au groupe INF1092

<img width="1600" height="1064" alt="WhatsApp Image 2026-07-21 at 2 49 11 PM" src="https://github.com/user-attachments/assets/db7825be-6f82-4e2c-92b0-0a9bf01bf178" />

## 2. Gestion des permissions, des comptes et suppression des ressources

Cette deuxième partie présente la création du dossier C:\Laboratoire et la gestion de ses permissions.

Le dossier a été créé avec succès, puis son existence a été vérifiée.

Le groupe INF1092 a reçu la permission FullControl sur ce dossier. Cette permission permet aux membres du groupe de consulter, créer, modifier et supprimer les fichiers et les sous-dossiers.

La vérification confirme que l’accès est autorisé et que la permission a été appliquée directement au groupe INF1092.

Le compte etudiant02 a ensuite été désactivé temporairement. La valeur False confirme que le compte était désactivé.

Le même compte a ensuite été réactivé. La valeur True confirme qu’il était de nouveau actif et utilisable.

Enfin, les utilisateurs ont été retirés du groupe, puis les deux comptes, le groupe INF1092 et le dossier C:\Laboratoire ont été supprimés.

La vérification finale affiche False pour le dossier, ce qui confirme que toutes les ressources créées ont été supprimées correctement

<img width="1600" height="1066" alt="WhatsApp Image 2026-07-21 at 3 16 16 PM" src="https://github.com/user-attachments/assets/e0160fb3-dee5-4716-820d-a83a58f70620" />

## Conclusion

Ce laboratoire m’a permis de comprendre comment gérer les utilisateurs, les groupes et les permissions dans Windows Server avec PowerShell.

J’ai créé deux comptes utilisateurs, créé un groupe, ajouté les comptes au groupe et attribué des permissions sur un dossier.

J’ai également appris à désactiver et à réactiver un compte utilisateur.

Enfin, j’ai supprimé toutes les ressources créées et vérifié que le nettoyage avait été réalisé avec succès

