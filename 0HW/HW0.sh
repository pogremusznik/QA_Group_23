#!/bin/bash
mkdir H1
cd H1
mkdir hom_1 hom_2 hom_3
cd hom_1
touch 1.txt 2.txt 3.txt 4.json 5.json
mkdir {00..2}
ls -la
cd ..
mv ./hom_1/{1.txt,5.json} ./hom_2
