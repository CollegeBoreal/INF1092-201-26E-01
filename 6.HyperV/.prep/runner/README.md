Pour ton cas (corriger les VM étudiantes INF1092), je placerais un self-hosted GitHub Actions Runner directement sur ta VM Linux vm30098957.

Comme tu as maintenant :

✅ SSH sans mot de passe vers l'hôte Hyper‑V
✅ Accès PowerShell via SSH
✅ Connectivité réseau vers les VM étudiantes

le runner pourra exécuter les vérifications automatiquement.

1. Créer le runner

Dans GitHub :

Repository
 → Settings
 → Actions
 → Runners
 → New self-hosted runner


Choisis :

Linux
x64


GitHub va générer quelque chose comme :

```bash
mkdir actions-runner && cd actions-runner

curl -o actions-runner-linux-x64.tar.gz -L \
https://github.com/actions/runner/releases/download/vX.X.X/actions-runner-linux-x64-X.X.X.tar.gz

tar xzf actions-runner-linux-x64.tar.gz

./config.sh \
  --url https://github.com/Boreal-INF1092/INF1092-201-26E-01 \
  --token XXXXX

./run.sh
```

2. Installer comme service

Sur vm30098957 :

```bash
sudo ./svc.sh install
sudo ./svc.sh start
```

Vérifier :

```bash
sudo ./svc.sh status
``

3. Installer les outils requis

Comme tu corriges du Windows :

```bash
sudo apt update

sudo apt install -y \
  openssh-client \
  jq \
  git
```

PowerShell :

```bash
sudo snap install powershell --classic
```


Optionnel :

```bash
sudo apt install -y freerdp2-x11
```

mais tu n'en auras probablement plus besoin.

4. Ajouter la clé SSH

Sur le runner :

```bash
mkdir -p ~/.ssh

cp ~/.ssh/b300098957@ramena ~/.ssh/id_rsa

chmod 600 ~/.ssh/id_rsa
```

Test :

```bash
ssh Administrator@10.7.237.7 hostname
```

Ne doit pas demander de mot de passe.

5. Workflow INF1092

Exemple :

```yaml
name: Grade VM

on:
  workflow_dispatch:

jobs:
  grade:
    runs-on: self-hosted

    steps:
      - uses: actions/checkout@v4

      - name: Get VM IP
        run: |
          ssh Administrator@10.7.237.7 \
          'powershell -Command "(Get-VMNetworkAdapter -VMName ''VM300124366'').IPAddresses | Select-Object -First 1"'

      - name: Verify user
        run: |
          ssh Administrator@10.7.237.7 \
          'powershell -Command "
          Invoke-Command -VMName VM300124366 -ScriptBlock {
            Get-LocalUser pxe
          }"'
```

6. Encore mieux : PowerShell Direct

Comme le runner parle à l'hôte Hyper‑V :

```powershell
Invoke-Command -VMName VM300124366 -ScriptBlock {
    hostname
    Get-LocalUser
    Get-NetIPAddress
}
```

Avantages :

pas besoin de connaître l'IP
pas besoin de WinRM
pas besoin de SSH dans les VM étudiantes
fonctionne même si l'étudiant a cassé son réseau

Pour INF1092, c'est probablement l'approche la plus robuste : GitHub Runner Linux → SSH vers Hyper‑V → PowerShell Direct dans les VM. 🚀
