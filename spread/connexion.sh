#!/bin/bash

PASS="-stri-" 


# si ça marche envoi du fichier
sshpass -p -etu- ssh etu@$1
scp /chemin1/ "etu@"$1:/chemin2

#connexion en root
su -
echo $PASS

#déplace le fichier
mv 

#exécute le fichier
./french&