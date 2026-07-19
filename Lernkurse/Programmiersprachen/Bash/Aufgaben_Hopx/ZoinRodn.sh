#!/bin/bash

Zuafoiszoi="$(($RANDOM % 10))"

echo $'Zoinrodn fo 0 bis 9!\n'

while true; do
read -p "Rod a Zoi: " Grodn

if (("$Grodn" == "$Zuafoiszoi")); then
break
else
echo $'X'
fi
done

echo "Richtig geraten"
