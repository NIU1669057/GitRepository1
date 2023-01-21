#!/bin/bash
i=1
awk '$3 ~ /'$2'/' FS=";" $1 | sort -k3 -t";" > aux2.txt
lin=`cat aux2.txt | wc -l`
if [ $lin -eq 0 ]
then

echo "No s'ha trobat la pel.licula"

else
while [ $i -le $lin ]
do
titol=`cat aux2.txt | cut -d";" -f3 | head -$i | tail -1`
any=`cat aux2.txt | cut -d";" -f1 | head -$i | tail -1`
longitud=`cat aux2.txt | cut -d";" -f2 | head -$i | tail -1`
popularitat=`cat aux2.txt | cut -d";" -f8 | head -$i | tail -1`
premis=`cat aux2.txt | cut -d";" -f9 | head -$i | tail -1`
tema=`cat aux2.txt | cut -d";" -f4 | head -$i | tail -1`
director=`cat aux2.txt | cut -d";" -f7 | head -$i | tail -1`
actor=`cat aux2.txt | cut -d";" -f5 | head -$i | tail -1`
actriu=`cat aux2.txt | cut -d";" -f6 | head -$i | tail -1`

echo "---------------------------------------"
echo " Titol: $titol"
echo " Any: $any	Popularitat: $popularitat	Premis: $premis	Tema: $tema"
echo " Director: $director"
echo " Actor: $actor"
echo " Actriu: $actriu"
let i=i+1
done
fi
rm aux2.txt
