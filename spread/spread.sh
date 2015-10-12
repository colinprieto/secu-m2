#!/bin/bash


# Boucle infinie 
while :
do
	# Ecoute du réseau (plage d'@IP pour chaque salle)
	nmap -n -sn 172.16.48/20 -oG - | awk '/Up$/{print $2}' > nmap.txt
	# -n : turns off reverse name resolution, très lent !! (à changer ?)
	# -sn : no port scan 
	# - oG - : sends "grepable" output to stdout, which gets piped to awk.
	# /Up$/ : selects only lines which end with "Up"
	# {print $2}' : print the second whitespace- separated field, wich is the IP address

	# Comparaison des fichiers nmap.txt et lIP.txt
	diff nmap.txt lIP.txt | sed -i '/^< \[/d' lIP.txt#
	grep < # @IP à suppr
	grep > # @IP à ajouter
# Si une adresse IP n'est plus présente => Suppression dans la liste des machines allumées

# Si l'adresse IP est nouvelle => Connexion SSH + déployement

# Ajoût des nouvelles @IP dans lIP
# cmde "join" ? 





done

# ouverture d'un script de connexion
# connexion ssh etu


# root