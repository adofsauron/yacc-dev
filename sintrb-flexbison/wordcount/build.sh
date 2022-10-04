#!/bin/bash

flex wc.l
gcc -o wc.exe *.c

type test.txt | wc.exe


