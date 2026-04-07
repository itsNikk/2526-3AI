#!/bin/bash
if [ -z "$1" ]; then
  echo "Errore: nome missione mancante."
  exit 1
fi
missione=$1

read -n 1 -t 10 -p "Voto missione $missione (1-5): " voto
echo
if [ $? -ne 0 ]; then
  echo "Timeout — nessun voto registrato."
  echo "$missione: nessun voto" >> missioni_voti.log
  exit 0
fi

case "$voto" in
  1|2) giudizio="Missione critica" ;;
  3)   giudizio="Missione nella norma" ;;
  4|5) giudizio="Missione eccellente" ;;
  *)   echo "Errore: voto non valido."; exit 1 ;;
esac

echo "$giudizio"
echo "$missione: $voto stelle" >> missioni_voti.log
