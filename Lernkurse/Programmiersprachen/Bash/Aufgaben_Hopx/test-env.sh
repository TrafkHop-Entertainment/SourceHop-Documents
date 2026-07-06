#!/bin/bash


Exists="$HOME/.bashrc"
Argument="$1"
declare -i Current=0

if [[ -f "$Exists" ]]; then
    echo "Pfad existiert!: {$Exists}!!!"
else
    echo "Nix da!"
fi


case "$Argument" in
    up)
    Current=$((Current + 5));echo "$Current";;
    down)
    Current=$((Current - 5));echo "$Current";;
    status)
    echo "$Current";;
    *)
    echo "error"; exit 1;;
esac
