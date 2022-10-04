#!/bin/bash

bash ./clean.sh

echo flex wc.l
flex wc.l

echo gcc -o wc *.c
gcc -o wc *.c

cat ./test.txt | ./wc


