#!/bin/bash

long=`cat $1 | wc -l`
i=3
touch listaux2
while [ $i -le $long ]
do

any=`cat $1 | cut -d";" -f1 | head -$i | tail -1`
titol=`cat $1 | cut -d";" -f3 | head -$i | tail -1`
longitud=`cat $1 | cut -d";" -f2 | head -$i | tail -1`
popularitat=`cat $1 | cut -d";" -f8 | head -$i | tail -1`
premis=`cat $1 | cut -d";" -f9 | head -$i | tail -1`
tema=`cat $1 | cut -d";" -f4 | head -$i | tail -1`
director=`cat $1 | cut -d";" -f7 | head -$i | tail -1`
actor=`cat $1 | cut -d";" -f5 | head -$i | tail -1`
actriu=`cat $1 | cut -d";" -f6 | head -$i | tail -1`


if grep -Fxq "$tema" listaux2
then
let i=i+1
else
echo "$tema" >> listaux2
let i=i+1
fi
done

