cd ~
# Si vous n'avez pas la vm dans votre home exec commande suivant pour la rapatrier
ionice -c3 cp /var/lib/storage/masters/vm0-debian-stable-amd64-base.qed  vm.qed
# Copie du fichier de demarage de vm
cp /var/lib/stroage/masters/scripts/qed-ovs-startup.sh .
# Vous devez maintenant modifier ce fichier et ecrire la couleur du port
#c'est la derniere ligne apres ifname=
vim qed-ovs-startup.sh
# creation du port, Attention a remplacer red2 par la couleur et le num du port souhaité
# Verififer qu'il n'est pas utilisé
sudo ip tuntap add mode tap dev red2 group kvm
# Up du port
sudo ip link set dev red2 up
# Ajout du port sur le switch ovs-cooper avec le tag du vlan
sudo ovs-vsctl add-port ovs-cooper red2 tag=213
# Verif
sudo ovs-vsctl show
#Lancement de la vm avec 512m de ram sur le port red2
./qed-ovs-startup.sh vm.qed 512 2