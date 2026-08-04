Rapport de laboratoire : Sauvegarde et restauration d'une Machine Virtuelle Hyper-V

effectuer une exportation complète (sauvegarde) d'une VM active, puis de procéder à sa restauration (importation) sous forme de copie indépendante avec la génération d'un nouvel identifiant unique (GUID).

Étape 1 : Extinction propre de la machine virtuelle
Afin d'éviter tout risque de corruption de données ou de fichiers verrouillés durant l'exportation, la machine virtuelle VM300159203 a été arrêtée au préalable.
<img width="733" height="653" alt="a" src="https://github.com/user-attachments/assets/f37a4930-5cd8-47a4-a6bc-cf33692c713f" />

Étape 2 : Préparation du répertoire de sauvegarde
Création d'un dossier dédié aux sauvegardes sur le lecteur secondaire E:\.
<img width="740" height="652" alt="Screenshot 2026-07-28 160902" src="https://github.com/user-attachments/assets/7594daad-4130-4bfe-9555-2e00392cc50d" />

Étape 3 : Exportation (Sauvegarde) de la VM
Exportation de la machine virtuelle VM300159203 vers le dossier de sauvegarde.
<img width="740" height="652" alt="Screenshot 2026-07-28 160902" src="https://github.com/user-attachments/assets/c246fdba-f1ad-4660-83b8-ea9940adbde2" />

Étape 4 : Inspection des fichiers de configuration
Vérification du nom du fichier de configuration .vmcx généré lors de l'exportation.
<img width="623" height="202" alt="Screenshot 2026-07-28 160943" src="https://github.com/user-attachments/assets/e2b4df2d-e0b1-463f-953d-ad077ea8b8a2" />

Étape 5 : Préparation de l'emplacement de restauration
Création d'un dossier de destination spécifique pour héberger les fichiers de la VM restaurée afin d'éviter tout conflit d'emplacement avec la VM d'origine.


Étape 6 : Restauration (Importation) de la VM
Importation de la machine virtuelle en générant un nouvel ID unique (-GenerateNewId) et en redirigeant la configuration et les disques virtuels vers le dossier E:\RestoredVM.
<img width="608" height="569" alt="Screenshot 2026-07-28 163733" src="https://github.com/user-attachments/assets/7c96d890-5f57-4b6b-ab64-742a12b59481" />

Validation et résultat final
La commande d'inspection finale confirme la présence de deux machines virtuelles distinctes, toutes deux en cours d'exécution (Running), prouvant la réussite de l'opération de sauvegarde et de restauration.

<img width="603" height="582" alt="Screenshot 2026-07-28 164319" src="https://github.com/user-attachments/assets/ba149980-fa21-4e9b-8494-93a30f15e350" />
La machine virtuelle restaurée sur le disque secondaire (E:\RestoredVM) a été renommée sous l'identifiant VM300159203-RESTORE afin de la distinguer clairement de la machine d'origine.

Gestion des états des machines virtuelles : La VM d'origine (VM300159203) située sur la partition principale (C:\) a été arrêtée proprement (Off). La machine restaurée (VM300159203-RESTORE) a été maintenue en état de fonctionnement (Running)

<img width="1024" height="633" alt="image" src="https://github.com/user-attachments/assets/4788d408-7971-4cf8-9fdc-56de49fc184a" />







