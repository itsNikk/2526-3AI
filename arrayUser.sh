#!/bin/bash

# user tramite read inserisce N valori in un array
# -a = array
declare -a a

read -p "Dammi tutti i valori (sep da sapazio) " -a a

echo ${a[@]}
echo ${a[0]}

