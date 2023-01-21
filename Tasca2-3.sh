#!/bin/bash

lin=`cat $1 | wc -l`
i=3
fnd=0
while [ $i -le $lin ]
do
titol=`cat $1 | cut -d";" -f3 | head -$i | tail -1`
any=`cat $1 | cut -d";" -f1 | head -$i | tail -1`
longitud=`cat $1 | cut -d";" -f2 | head -$i | tail -1`
popularitat=`cat $1 | cut -d";" -f8 | head -$i | tail -1`
premis=`cat $1 | cut -d";" -f9 | head -$i | tail -1`
tema=`cat $1 | cut -d";" -f4 | head -$i | tail -1`
director=`cat $1 | cut -d";" -f7 | head -$i | tail -1`
actor=`cat $1 | cut -d";" -f5 | head -$i | tail -1`
actriu=`cat $1 | cut -d";" -f6 | head -$i | tail -1`

if [ "$2" == "$actor" ] || [ "$2" == "$actriu" ] || [ "$2" == "$director" ]
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
