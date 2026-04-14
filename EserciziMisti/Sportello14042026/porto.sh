#!/bin/bash

clear

nomeNave=$1
max=$2

# rm = remove (dei file) con opzioni cartelle
rm -rf test
mkdir test

if [ -z $nomeNave ]; then
	echo " nome nave vuoto"
else
	read -p "Container a bordo? " nCont
	read -p "Dove andiamo?: " citta
	
	if ! [ $nCont -eq $nCont ] 2>/dev/null || [ $nCont -lt 0 ]; then
		echo "$nCont non è un numero valido"
		exit 1
	fi	
	echo "Nave $nomeNave | $nCont Container | destinazione: $citta"
	echo "Nave $nomeNave | $nCont Container | destinazione: $citta" >> test/arrivi.lo

	read -p "INSERISCI valori container" -a containers

	sum=0
	for elem in ${containers[@]}; do
		sum=$(($sum+$elem))
	done

	echo $sum

fi






#Lev2


#read -p "Inserisci ncontainer e citta" nCont citta
