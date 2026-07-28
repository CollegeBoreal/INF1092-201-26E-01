
# Rapport de laboratoire – Création d'une machine virtuelle Windows Server 2022 avec Hyper-V

L'objectif de ce laboratoire était de créer une machine virtuelle Windows Server 2022 avec Hyper-V à l'aide d'un fichier ISO téléchargé depuis Azure Education.

Le fichier ISO a d'abord été téléchargé et enregistré dans le dossier **D:\ISO\300157606**. Ensuite, la machine virtuelle **VM300157606** a été créée avec PowerShell en utilisant une génération 1, une mémoire fixe de 4 Go, un disque dur virtuel de 60 Go et une connexion au commutateur réseau **External**.

Après la création, la configuration a été complétée en attribuant deux processeurs virtuels, en désactivant la mémoire dynamique et en montant le fichier ISO pour démarrer l'installation de Windows Server 2022.

Une fois l'installation terminée, le système s'est lancé correctement et **Server Manager** s'est ouvert automatiquement. Des commandes PowerShell, comme **Get-VM**, **Get-VMMemory**, **Get-VMProcessor**, **Get-VMHardDiskDrive** et **Get-VMNetworkAdapter**, ont permis de vérifier que la machine virtuelle respectait les exigences du laboratoire.

En conclusion, ce laboratoire m'a permis d'apprendre à créer et configurer une machine virtuelle avec Hyper-V, à installer Windows Server 2022 à partir d'un fichier ISO et à vérifier sa configuration à l'aide de PowerShell. Les captures d'écran à la fin du rapport illustrent les principales étapes ainsi que les résultats obtenus.
<img width="607" height="338" alt="image 1" src="https://github.com/user-attachments/assets/fef9fbee-9f29-4ac8-be6d-352f5216dc16" />
<img width="522" height="292" alt="image 2" src="https://github.com/user-attachments/assets/eb60a0c9-1513-4fcf-aa5b-ed97d2daa668" />
<img width="662" height="370" alt="image 3" src="https://github.com/user-attachments/assets/5077daea-46f8-4b66-81c4-f3389e707806" />
<img width="852" height="514" alt="image 4" src="https://github.com/user-attachments/assets/2626cf88-d148-40a1-b0d7-2a6bf16635df" />



