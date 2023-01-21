#!/bin/bash
long=`cat $1 | wc -l`
i=3
sort -k8 -t";" $1 > aux1.txt
while [ $i -le $long ]
do
titol=`cat aux1.txt | cut -d";" -f3 | head -$i | tail -1`
any=`cat aux1.txt | cut -d";" -f1 | head -$i | tail -1`
longitud=`cat aux1.txt | cut -d";" -f2 | head -$i | tail -1`
popularitat=`cat aux1.txt | cut -d";" -f8 | head -$i | tail -1`
premis=`cat aux1.txt | cut -d";" -f9 | head -$i | tail -1`
tema=`cat aux1.txt | cut -d";" -f4 | head -$i | tail -1`
director=`cat aux1.txt | cut -d";" -f7 | head -$i | tail -1`
actor=`cat aux1.txt | cut -d";" -f5 | head -$i | tail -1`
actriu=`cat aux1.txt | cut -d";" -f6 | head -$i | tail -1`

echo "---------------------------------------"
echo " Titol: $titol"
echo " Any: $any	Popularitat: $popularitat	Premis: $premis	Tema: $tema"
echo " Director: $director"
echo " Actor: $actor"
echo " Actriu: $actriu"
let i=i+1
done
rm aux1.txt
