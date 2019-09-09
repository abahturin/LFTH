#!/bin/bash
# kasutaja lisamise skript
#echo "sellel skriptil on $# parameetrid"

if [ $# -ne 1 ]; then
echo "Skript kaevitatud valesti! Tuleb kaevitada nii: $0 kasutajanimi"
else 

#muutuja kasutajanime salvestamiseks
kasutajanimi=$1

#kasutaja lisamise k2sk
useradd $kasutajanimi -m -s /bin/bash

fi
