# HyperV
# Rapport de laboratoire – Création d’une machine virtuelle Windows Server 2022 avec Hyper-V

## Introduction

L’objectif de ce laboratoire était de créer et de configurer une machine virtuelle Windows Server 2022 à l’aide d’Hyper-V et de PowerShell. La machine virtuelle devait respecter plusieurs exigences, notamment utiliser une génération 1, disposer de 4 Go de mémoire RAM fixe, de deux processeurs virtuels, d’un disque dur virtuel de 60 Go et être connectée au commutateur réseau **External**.

## Création et configuration de la machine virtuelle

La première étape du laboratoire consistait à télécharger le fichier ISO de Windows Server 2022 à partir du portail Azure Education. Après le téléchargement, le fichier ISO a été enregistré dans le dossier `D:\ISO\300157606\` afin de pouvoir être utilisé lors de l’installation du système d’exploitation.

La machine virtuelle a ensuite été créée à l’aide de PowerShell avec la commande `New-VM`. Elle a été nommée **VM300157606** et configurée avec une génération 1, 4 Go de mémoire vive et un disque dur virtuel de 60 Go. Elle a également été connectée au commutateur réseau **External**.

Après sa création, plusieurs paramètres de la machine virtuelle ont été ajustés. Le nombre de processeurs virtuels a été configuré à deux et la mémoire dynamique a été désactivée afin de conserver une mémoire fixe de 4 Go. Le fichier ISO de Windows Server 2022 a ensuite été monté dans le lecteur DVD virtuel pour permettre le démarrage de l’installation.

## Installation de Windows Server 2022

Une fois la configuration terminée, la machine virtuelle a été démarrée afin de lancer l’installation de Windows Server 2022. L’installation s’est déroulée correctement et, à la fin du processus, le système d’exploitation s’est ouvert normalement. Le lancement automatique de **Server Manager** a également permis de confirmer que l’installation de Windows Server 2022 avait été effectuée avec succès.

## Vérification de la configuration

Afin de vérifier que la machine virtuelle respectait toutes les exigences du laboratoire, plusieurs commandes PowerShell ont été utilisées, notamment `Get-VM`, `Get-VMMemory`, `Get-VMProcessor`, `Get-VMHardDiskDrive` et `Get-VMNetworkAdapter`.

Les résultats obtenus ont confirmé que la machine virtuelle était fonctionnelle et qu’elle respectait les paramètres demandés. Elle utilisait une génération 1, disposait de 4 Go de mémoire fixe, de deux processeurs virtuels et d’un disque dur virtuel de 60 Go. La connexion au commutateur réseau **External** a également été vérifiée avec succès.

## Conclusion

En conclusion, ce laboratoire m’a permis de mieux comprendre le fonctionnement d’Hyper-V ainsi que le processus de création et de configuration d’une machine virtuelle à l’aide de PowerShell. J’ai appris à créer une machine virtuelle, à modifier ses différents paramètres, à installer Windows Server 2022 à partir d’un fichier ISO et à vérifier sa configuration à l’aide de plusieurs commandes PowerShell.

Les captures d’écran présentées à la fin du rapport montrent les principales étapes réalisées ainsi que les résultats des différentes vérifications effectuées.
<img width="2000" height="1126" alt="WhatsApp Image 2026-08-04 at 13 13 47" src="https://github.com/user-attachments/assets/33249436-7a1a-4410-b84d-f8e965261495" />
<img width="2000" height="1126" alt="WhatsApp Image 2026-08-04 at 13 13 47 (1)" src="https://github.com/user-attachments/assets/b18c1fa5-e407-4203-bc88-bcd47fbad2ad" />
<img width="2000" height="1126" alt="WhatsApp Image 2026-08-04 at 13 13 47 (2)" src="https://github.com/user-attachments/assets/f00166de-48d6-412f-ae55-435d6b794313" />
<img width="2000" height="1126" alt="WhatsApp Image 2026-08-04 at 13 13 47 (3)" src="https://github.com/user-attachments/assets/da815c47-af1e-44e6-b3bf-767c37b4f20d" />
<img width="2000" height="1126" alt="WhatsApp Image 2026-08-04 at 13 13 48" src="https://github.com/user-attachments/assets/a62052fe-6383-4230-ad42-1ea0186e83da" />
<img width="2000" height="1126" alt="WhatsApp Image 2026-08-04 at 13 13 48 (1)" src="https://github.com/user-attachments/assets/8186a0d5-0c51-4551-a435-c210ce75c53b" />
<img width="2000" height="1126" alt="WhatsApp Image 2026-08-04 at 13 13 48 (2)" src="https://github.com/user-attachments/assets/9343d41d-0895-4202-9449-daffa7bc12da" />
<img width="2000" height="1126" alt="WhatsApp Image 2026-08-04 at 13 13 48 (3)" src="https://github.com/user-attachments/assets/0c3a1970-8ac5-4aee-8da0-761f933e1a7d" />
<img width="2000" height="1126" alt="WhatsApp Image 2026-08-04 at 13 13 48 (4)" src="https://github.com/user-attachments/assets/9cd60ec2-6035-4b85-95d3-7078b0ad38ea" />
<img width="2000" height="1126" alt="WhatsApp Image 2026-08-04 at 13 13 48 (5)" src="https://github.com/user-attachments/assets/fe1003ad-9525-4d9d-9f84-cae5ea61ef3b" />
<img width="2000" height="1126" alt="WhatsApp Image 2026-08-04 at 13 13 48 (6)" src="https://github.com/user-attachments/assets/a1ed5acd-7ea2-4151-ba1b-c373fc6cc89c" />
<img width="2000" height="1126" alt="WhatsApp Image 2026-08-04 at 13 13 48 (6) - Copie" src="https://github.com/user-attachments/assets/dba0581c-54d2-432d-9d7f-ad13ca89e89a" />
<img width="2000" height="1126" alt="WhatsApp Image 2026-08-04 at 13 13 48 (6) - Copie - Copie" src="https://github.com/user-attachments/assets/d2583a96-0868-4084-b392-cdddb78de718" />
