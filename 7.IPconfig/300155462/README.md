# Rapport – Configuration de la VM Windows Server et problème RDP

**Nom :** mamssi zakaria
**ID étudiant :**300155462

## Objectif

L’objectif du laboratoire était de configurer une machine virtuelle Windows Server avec une adresse IP statique, d’activer le Bureau à distance (RDP) et de vérifier la communication réseau.

## Configuration

La VM a été configurée avec les paramètres suivants :

* **Adresse IP :** 10.7.237.210
* **Masque :** 255.255.254.0 (/23)
* **Passerelle :** 10.7.237.1
* **DNS :** 10.7.237.3

Les commandes PowerShell nécessaires ont été utilisées pour configurer le réseau et activer le Bureau à distance.

## Vérifications

La configuration de la VM a été vérifiée avec `hostname`, `ipconfig`, `Get-NetIPConfiguration` et `Get-NetAdapter`.

Le fonctionnement du RDP a également été testé avec :

`Test-NetConnection localhost -Port 3389`

Le résultat **TcpTestSucceeded : True** indique que le service RDP fonctionne correctement sur la VM.

## Problème rencontré

La connexion entre le serveur Hyper-V et la VM ne fonctionne pas. Un test effectué depuis le serveur avec l’adresse `10.7.237.210` retourne **TcpTestSucceeded : False** et **DestinationHostUnreachable**.

Les tests ping entre le serveur et la VM échouent également.

La VM est pourtant en fonctionnement, connectée au commutateur virtuel External et possède une configuration réseau qui semble correcte.

## Conclusion

La configuration de Windows Server et du service RDP semble correcte. Le problème semble plutôt lié à la communication réseau entre le serveur Hyper-V et la machine virtuelle, notamment au niveau du commutateur virtuel ou du réseau du laboratoire.

Avant de modifier l’adresse IP, il serait préférable de vérifier la configuration du commutateur virtuel et de s’assurer que l’adresse `10.7.237.210` n'est pas déjà utilisée.
