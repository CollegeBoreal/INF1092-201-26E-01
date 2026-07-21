# Installation d'un disque NVMe 1TB

## Étape 1 : Préparation

* Vérifier que Windows Server 2022 Datacenter est installé.
* Éteindre le serveur.
* Installer l'adaptateur PCIe dans le serveur.

## Étape 2 : Installation du disque

* Installer le disque NVMe 1 To sur l'adaptateur PCIe.
* Démarrer le serveur.
* Vérifier que le disque est détecté.

## Étape 3 : Formatage

* Ouvrir **Gestion des disques**.
* Initialiser le disque (GPT).
* Créer un nouveau volume.
* Formater le disque en **NTFS**.
* Vérifier qu'environ **1 To** est disponible.

## Étape 4 : Accès à distance

* Activer le Bureau à distance (RDP).
* Tester la connexion depuis un autre ordinateur.

## Vérification

Windows Server 2022 fonctionne.
Le disque NVMe est détecté.
Le disque est formaté.
Le réseau Ethernet fonctionne.
L'accès RDP fonctionne.

## Conclusion

L'installation du disque NVMe s'est déroulée avec succès. Le disque est reconnu par Windows Server 2022, il est formaté et prêt à être utilisé.

## Images

Ajouter les photos du laboratoire dans le dossier **images** puis les insérer ici :

```markdown
![Serveur](images/photo1.jpg)

![Installation du NVMe](images/photo2.jpg)

![Gestion des disques](images/photo3.jpg)

![RDP](images/photo4.jpg)
```



<img width="503" height="383" alt="Capture d’écran 2026-07-21 130025" src="https://github.com/user-attachments/assets/d47e3fe7-4f1d-4850-bf75-24b846edd25b" />
<img width="500" height="380" alt="Capture d’écran 2" src="https://github.com/user-attachments/assets/bee4391b-0dd5-46b6-aac8-941a856798d1" />
<img width="499" height="376" alt="Capture d’écran 3" src="https://github.com/user-attachments/assets/5e234a10-013b-499d-abfc-4761d000f2d2" />
<img width="502" height="374" alt="Capture d’écran 4" src="https://github.com/user-attachments/assets/7cfd79fd-f1f9-4d93-9d6e-f95eb3201a8e" />
<img width="503" height="371" alt="Capture d’écran 5" src="https://github.com/user-attachments/assets/78701488-bc75-47f3-a812-57bfdccbf762" />
<img width="488" height="320" alt="Capture d’écran 6" src="https://github.com/user-attachments/assets/3112c21f-493a-4c86-b7b6-fa907452dda0" />
<img width="502" height="374" alt="Capture d’écran 7" src="https://github.com/user-attachments/assets/c116b497-cae5-462a-ab5a-8881a2cd9412" />
<img width="497" height="356" alt="Capture d’écran 8" src="https://github.com/user-attachments/assets/cabd5b3c-e24b-48c6-a166-d88565a683b7" />


