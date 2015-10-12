#!/bin/bash

if [ "$1" != "" ]; then
	if [ "$2" != "" ]; then
	# Decouvre les hosts actif sur le reseau
	nmap -sn "$1"/"$2"
else
	# Determine les protocoles supportés
	nmap -sO $1
	# Montre les ports ouverts
	nmap --open $1
	# Determine la presence d'un firewall ou d'un packet filter
	nmap -sA $1
	# Scan de tous les ports
	nmap -p "*" $1
	# Fast Scan 
	nmap -F $1
fi
else 
	echo "Erreur : Veuillez passer l'IP a scanner en param"
fi