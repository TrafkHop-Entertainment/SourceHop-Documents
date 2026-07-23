#!/bin/bash

Player=0
Bot=0
declare -i ExitGame=1

echo "©2026 TrafkHop Entertainment, all rights reserved."
echo ""
echo "Schere Stein Papier - Trafk Edition"

echo "Press Start to Play!"
read

while (( $ExitGame == 1)); do

read -p "Player, your Move?: " Player
Bot=$(($RANDOM % 3 + 1))

case "$Player" in
    Stein)
        if (( $Bot == 1 )); then
            echo "Stein VS Schere: Gewonnen"
	elif (( $Bot == 2 )); then
	    echo "Stein VS Stein: Unentschieden"
	else
	    echo "Stein VS Papier: Verloren"
        fi
        ;;
    Schere)
        if (( $Bot == 1 )); then
            echo "Schere VS Schere: Unentschieden"
	elif (( $Bot == 2 )); then
	    echo "Schere VS Stein: Verloren"
        else
	    echo "Schere VS Papier: Gewonnen"
	fi
        ;;
    Papier)
        if (( $Bot == 1 )); then
            echo "Papier VS Schere: Verloren"
        elif (( $Bot == 2 )); then
	    echo "Papier VS Stein: Gewonnen"
	else
	    echo "Papier VS Papier: Unentschieden"
	fi
        ;;
    *)
        ExitGame=$(( $ExitGame + 1))
        ;;
esac
done
