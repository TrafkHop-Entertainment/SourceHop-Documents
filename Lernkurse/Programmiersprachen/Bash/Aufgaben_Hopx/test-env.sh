#!/bin/bash

PFAD="$HOME/.bashrc"
echo "$PFAD"

declare -i Zahl=0

if [[ -e "$PFAD" ]]; then
echo "Ja existriert"
else
echo "Ne existiert nicht"
fi
if [[ -r "$PFAD" ]]; then
echo "ist lesbar"
else
echo "ne ist schreibgeschützt oder so"
fi

case "$1" in
    up)
        Zahl=$(( $Zahl + 5))
        echo "$Zahl"
    ;;
    down)
    Zahl=$(( $Zahl - 5))
    echo "$Zahl"
    ;;
    status)
        echo "status"
    ;;
    default)
        exit 1
    ;;
esac
