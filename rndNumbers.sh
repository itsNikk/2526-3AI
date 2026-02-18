#!/bin/bash

# [0, 32767]
rnd=$RANDOM

echo $rnd
echo $(($rnd%100))
#!!!!
#echo $((32767+32767))
