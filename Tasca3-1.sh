#!/bin/bash
i=3
len=`cat $1 | wc -l`
anycorrecte=`shuf -i $i-$len -n 1`
rand1=`shuf -i $i-$len -n 1`
rand2=`shuf -i $i-$len -n 1`


anyC=`cat $1 | cut -d";" -f1 | head -$anycorrecte | tail -1 > listaux`
randany1=`cat $1 | cut -d";" -f1 | head -$rand1 | tail -1 >> listaux`
randany1=`cat $1 | cut -d";" -f1 | head -$rand2 | tail -1 >> listaux`

any=`cat $1 | cut -d";" -f1 | head -$anycorrecte | tail -1`
titol=`cat $1 | cut -d";" -f3 | head -$anycorrecte | tail -1`
longitud=`cat $1 | cut -d";" -f2 | head -$anycorrecte | tail -1`
popularitat=`cat $1 | cut -d";" -f8 | head -$anycorrecte | tail -1`
premis=`cat $1 | cut -d";" -f9 | head -$anycorrecte | tail -1`
tema=`cat $1 | cut -d";" -f4 | head -$anycorrecte | tail -1`
director=`cat $1 | cut -d";" -f7 | head -$anycorrecte | tail -1`
actor=`cat $1 | cut -d";" -f5 | head -$anycorrecte | tail -1`
actriu=`cat $1 | cut -d";" -f6 | head -$anycorrecte | tail -1`

echo "---------------------------------------"
echo "		3.1 - De quin any es?	      "
echo "---------------------------------------"
echo " Titol: $titol"
echo " Longitud: $longitud	Popularitat: $popularitat	Premis: $premis	Tema: $tema"
echo " Director: $director"
echo " Actor: $actor"
echo " Actriu: $actriu"
echo "----------------------------------------------------------------"

shuf listaux --output listaux
eval $(awk '{print "opcio"NR"="$1}' listaux)
echo "Anys possibles:"
echo "----------------"
echo "$opcio1 $opcio2 $opcio3"

read answ

if [ "$answ" -eq "$any" ]
then
echo "Correcte!"
else
echo "Incorrecte. La resposta era $any"
fi
