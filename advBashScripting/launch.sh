#!/bin/bash

read -p "Name: " name

./greet.sh "$name"

value=$(./compute.sh 3 + 5)
