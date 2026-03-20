#!/bin/bash

# user tramite read inserisce N valori in un array
# -a = array
declare -a b

read -p "Dammi tutti i valori (sep da sapazio) " -a b

echo ${b[@]}
echo ${b[0]}

