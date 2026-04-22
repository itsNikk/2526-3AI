#!/bin/bash

a=$1
op=$2
b=$3

if [ $op == "+" ]; then
    echo $((a+b))
fi


