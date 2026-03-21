#!/bin/bash
# ================================================================
#  SOLUZIONI — STAZIONE MEDICA PROMETHEUS-9
#  Solo per uso docente
# ================================================================

CSV="stazione_medica_A.csv"

echo "=== A1 — Pazienti in QUARANTENA ==="
# Output atteso: 17
grep -c "QUARANTENA" $CSV

echo ""
echo "=== A2 — Pazienti con gravità ALPHA ==="
# Output atteso: 28 righe
grep "ALPHA" $CSV

echo ""
echo "=== A3 — Righe con parassita endocellulare attivo ==="
# Output atteso: 8 righe con numero di riga
grep -n "parassita endocellulare attivo" $CSV

echo ""
echo "=== A4 — Totale pazienti nel database ==="
# Output atteso: 90
tail -n +2 $CSV | wc -l

echo ""
echo "=== A5 — ID pazienti NB ==="
# Output atteso: 18 ID
grep "^NB" $CSV | cut -d',' -f1

echo ""
echo "=== A6 — Pazienti ALPHA in ISOLAMENTO ==="
# Output atteso: 2 righe
grep "ISOLAMENTO" $CSV | grep "ALPHA"

echo ""
echo "=== A7 — Diagnosi distinte ==="
# Output atteso: 18
cut -d',' -f8 $CSV | tail -n +2 | sort | uniq | wc -l

echo ""
echo "=== A8 — Nomi scientifici con emissione di tossine dermiche ==="
# Output atteso: 3 righe
grep "tossine dermiche" $CSV | cut -d',' -f3

echo ""
echo "=== B1 — Pazienti ALPHA in LABORATORIO ==="
# Output atteso: 3 righe
grep "ALPHA" $CSV | grep "LABORATORIO"

echo ""
echo "=== B2 — Nomi scientifici unici in ordine alfabetico ==="
# Output atteso: 15 nomi
cut -d',' -f3 $CSV | tail -n +2 | sort | uniq

echo ""
echo "=== B3 — Pazienti per anno (ordine cronologico) ==="
# Output atteso: 16 righe con conteggio
cut -d',' -f5 $CSV | tail -n +2 | sort | uniq -c | sort -k2

echo ""
echo "=== B4 — Nomi scientifici unici in CRIOGENIA ==="
grep "CRIOGENIA" $CSV | cut -d',' -f3 | sort | uniq

echo ""
echo "=== B5 — Reparto con più pazienti ALPHA ==="
# Output atteso: QUARANTENA in testa con 11
grep "ALPHA" $CSV | cut -d',' -f4 | cut -d'-' -f1 | sort | uniq -c | sort -rn

echo ""
echo "=== B6 — Nomi scientifici che terminano in 'is' ==="
# Output atteso: 4 nomi
cut -d',' -f3 $CSV | grep "is$" | sort | uniq

echo ""
echo "=== B7 — Pazienti ALPHA senza diagnosi 'portatore asintomatico' ==="
# Output atteso: 24
grep "ALPHA" $CSV | grep -v "portatore asintomatico" | wc -l

echo ""
echo "=== B8 — Distribuzione gravità nell'anno con più ammissioni (2194) ==="
# Output atteso: 5 ALPHA, 3 GAMMA, 2 DELTA, 2 BETA
grep ",2194," $CSV | cut -d',' -f6 | sort | uniq -c | sort -rn


echo ""
echo "=== C1 — Struttura di archiviazione ==="
mkdir report_prometheus
mkdir report_prometheus/critici
mkdir report_prometheus/stabili
mkdir report_prometheus/archiviati
ls report_prometheus/

echo ""
echo "=== C2 — Conteggio ID con X o Z ==="
# Output atteso nel file: 41
grep -c "^[XZ]" $CSV > report_prometheus/conteggio_xz.txt
cat report_prometheus/conteggio_xz.txt

echo ""
echo "=== C3 — Archiviazione database ==="
cp $CSV report_prometheus/backup_20260311.csv
ls report_prometheus/

echo ""
echo "=== C4 — Report picchi di ammissione ==="
# Output atteso nel file:
#      12 2194
#       8 2188
#       7 2195
# 5
cut -d',' -f5 $CSV | tail -n +2 | sort | uniq -c | sort -rn | head -3 > report_prometheus/picchi.txt
grep ",2194," $CSV | grep -c "ALPHA" >> report_prometheus/picchi.txt
cat report_prometheus/picchi.txt
