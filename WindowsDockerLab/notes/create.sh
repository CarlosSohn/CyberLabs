vboxmanage createvm --name windows-server --ostype "Windows2012_64" --register --basefolder "/home"
vboxmanage modifyvm windows-server --ioapic on
vboxmanage modifyvm windows-server --memory 2048 --vram 128
vboxmanage modifyvm windows-server --nic1 nat
vboxmanage createhd --filename ./windows-server/winserver.vdi --size 20000 --format VDI
vboxmanage storagectl windows-server --name "SATA Controller" --add sata --controller IntelAhci
vboxmanage storageattach windows-server --storagectl "SATA Controller" --port 0 --device 0 --type hdd --medium  windows-server/winserver.vdi
vboxmanage storagectl windows-server --name "IDE Controller" --add ide --controller PIIX4
vboxmanage storageattach windows-server --storagectl "IDE Controller" --port 1 --device 0 --type dvddrive --medium WinServer2012.iso
vboxmanage modifyvm windows-server --boot1 dvd --boot2 disk --boot3 none --boot4 none
vboxmanage modifyvm windows-server --vrde on
vboxmanage modifyvm windows-server --vrdemulticon on --vrdeport 10001
