#!/bin/bash

# Pulizia history
history -c

# Creazione cartelle principali
mkdir ~/Desktop/lab-fs
cd ~/Desktop/lab-fs

# Creazione altre cartelle e sottocartelle
mkdir src
mkdir src/modules
mkdir logs
mkdir logs/errors
mkdir data
mkdir data/samples
mkdir notes

# Creazione file
touch README.txt
touch src/app.sh
touch src/modules/net.sh
touch src/modules/fs.sh
touch logs/app.log
touch logs/errors/error.log
touch data/samples/sample1.txt
touch data/samples/sample2.txt
touch notes/todo.txt

history > ~/Desktop/nomeCognome-CommandGolf-History.txt
