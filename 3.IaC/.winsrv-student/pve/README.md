
```sh
qm create 9001 --name win2022-template --memory 4096 --cores 1 --net0 virtio,bridge=vmbr0

qm set 9001 --scsihw virtio-scsi-pci
qm set 9001 --scsi0 local-lvm:40

qm set 9001 --ide2 local:iso/Windows.iso,media=cdrom
qm set 9001 --ide0 local:iso/virtio-win.iso,media=cdrom

qm set 9001 --boot order=ide2

# FIX G6/G7 / CPU
qm set 9001 --cpu qemu64
qm set 9001 --machine pc
qm set 9001 --bios seabios
qm set 9001 --kvm 0

qm start 9001
```
