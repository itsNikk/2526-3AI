#!/bin/bash

#array = strutture dati
# in java: omogenei, statici
clear
arr=(1 2 3 4 5 6)
# DEVO usare le graffe
echo ${arr[@]} #Tutti gli elementi
echo "Length: ${#arr[@]}"
echo ${arr[0]}
echo ${arr[-1]}

# For.. each
for n in ${arr[@]}
do
    echo -n "$n "
done
#IFS= Internal File Separator
echo 
for index in $(seq 0 $(( ${#arr[@]} - 1)) ); do
    echo ${arr[index]}
done




#SLICING - ${variabile:start:howMany}
echo Slice1: ${arr[@]:1:4}
echo Slice2: ${arr[@]:1:19}

s="stringa"
echo $s
echo ${s:0:1}
#echo ${s[0]}
echo ${s:2:4}





