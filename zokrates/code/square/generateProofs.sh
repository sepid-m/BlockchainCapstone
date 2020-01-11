#!/bin/bash
~/zokrates compile -i square.code
~/zokrates setup
for ((i=1;i<=9;i++))
  do
    ~/zokrates compute-witness -a $i `expr $i \* $i`
    ~/zokrates generate-proof -j proof_$i.json
  done
  ~/zokrates compute-witness -a 10 100
  ~/zokrates generate-proof -j proof_10.json