#!/bin/bash

SelfPath="$(realpath "$0")"
SelfDirectory="$(dirname "$(realpath "$0")")"


echo "ORDNER = {$SelfDirectory}, PFAD= {$SelfPath}"

Breite="$1"
Hoehe="$2"

Pixel="$((Breite * Hoehe))"
echo "$Pixel"
