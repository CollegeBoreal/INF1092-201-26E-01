
# ✅ ✅ Commandes correctes

## 🔴 Éteindre immédiatement

```powershell
shutdown /s /t 0
```

***

## 🔁 Redémarrer immédiatement

```powershell
shutdown /r /t 0
```

***

## 🔥 Forcer (important sur serveur avec VMs)

```powershell
shutdown /s /t 0 /f
```

👉 `/f` = force fermeture des apps (Hyper‑V inclus)

***

## 🧠 Version propre (lab / prod)

👉 Avec raison (bien vu sur serveur Windows):

```powershell
shutdown /s /t 0 /d p:1:1 /c "Maintenance Hyper-V"
```

***

# ✅ ✅ TL;DR

| Action         | Commande              |
| -------------- | --------------------- |
| Shutdown       | `shutdown /s /t 0`    |
| Restart        | `shutdown /r /t 0`    |
| Force shutdown | `shutdown /s /t 0 /f` |

***

# 💡 Pro tip (ton environnement)

👉 Avant shutdown serveur Hyper‑V:

```powershell
Stop-VM * -Force
```

👉 Puis:

```powershell
shutdown /s /t 0
```

✅ évite corruption VMs

***

Si tu veux, je peux te faire:
✅ un script propre “shutdown host Hyper‑V safely” (stop VMs → shutdown clean)
