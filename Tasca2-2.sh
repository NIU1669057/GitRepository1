#!/bin/bash

sort -k1 -t";" $1 > aux2.txt
len=`cat aux2.txt | wc -l`
fnd=0
let len=len-2
i=1
if [ $2 -gt $3 ]
then
echo "Interval incorrecte"
else


while [ $i -le $len ]
do
titol=`cut -d";" -f3 aux2.txt | head -$i | tail -1`
any=`cut -d";" -f1 aux2.txt | head -$i | tail -1`
longitud=`cut -d";" -f2 aux2.txt | head -$i | tail -1`
popularitat=`cut -d";" -f8 aux2.txt| head -$i | tail -1`
premis=`cut -d";" -f9 aux2.txt | head -$i | tail -1`
tema=`cut -d";" -f4 aux2.txt | head -$i | tail -1`
director=`cut -d";" -f7 aux2.txt | head -$i | tail -1`
actor=`cut -d";" -f5 aux2.txt | head -$i | tail -1`
actriu=`cut -d";" -f6 aux2.txt | head -$i | tail -1`
if [ $any -ge "$2" ] && [ $any -le $3 ]
then
let fnd=fnd+1
echo "---------------------------------------"
echo " Titol: $titol"
echo " Any: $any	Popularitat: $popularitat	Premis: $premis	Tema: $tema"
echo " Director: $director"
echo " Actor: $actor"
echo " Actriu: $actriu"
fi
let i=i+1
done
if [ $fnd -eq 0 ]
then
echo "Pel.licula no trobada"
fi
fi
