#!/bin/bash

clear
echo "=== Sistema Ship Open ==="
# ALT-6: copy CTRL-U: paste CTRL-K: taglia
#read -p "Dimmi il tuo nome: " nome
#read -p "anno di nascita?: "  adn
#read -p "esperienza? (1-10): " exp

annoCorrente=2157

read -p "INS nome adn exp: " nome adn exp
#echo "$nome, $adn, $exp"

# -gt = greater then etc...
# if() {}
#if ! { [ $exp -ge 1 ] && [ $exp -le 10 ]; }; then
# || = OR , && = AND
if [ $exp -lt 1 ] || [ $exp -gt 10 ]; then
    echo "Errore anni di exp."
    exit 1
fi

if [ $adn -gt $annoCorrente ]; then
    echo "$adn > $annoCorrente"
    exit 1
fi

# siamo nel 2157
ads=$(( $annoCorrente-18-$adn ))
# Calcoliamo gli anni di servizio...
#ads*exp/10
indiceCom=$(( ($ads * $exp) / 10 ))

echo "Nome: $nome"
echo "Anno di nascita: $adn"
echo "Anno di servzio: $ads"
echo "Indice COmm: $indiceCom"

