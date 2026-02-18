#!/bin/bash

clear

# ALT+6=COPY CTRL+U=paste
# name="nikk"
#echo -n "nome:"
read -p "Nome:" name


# STRONG QUOTING
echo "Ciao $name"
# WEAK QUOTING
echo 'Ciao $name'
echo 'Ciao' $name

a=$1
b=$2
ris=$(($a+$b))

echo "$a + $b = $ris"


read -p "premio invio per uscire!"
