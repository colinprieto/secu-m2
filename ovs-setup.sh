# Script d'installation et config d'ovs sur la machine switch

# Installation des paquets 
apt-get install openvswitch-common openvswitch-switch
# Creation du bridge
ovs-vsctl add-br mybridge
# Ajout du port eth0 sur le bridge
ovs-vsctl add-port mybridge eth0
# Desactivation de eth0 sur la machine
ifconfig eth0 0
# Activation de dhcp sur le bridge
dhclient mybridge
# Creation de 2 ports virtuels
ip tuntap add mode tap vport1 
ip tuntap add mode tap vport2
# Activation des ports
ifconfig vport1 up
ifconfig vport2 up  
# Ajout des ports au switch
ovs-vsctl add-port mybridge vport1 -- add-port mybridge vport2
ovs-vsctl show 