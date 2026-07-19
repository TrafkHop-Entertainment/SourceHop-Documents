#!/bin/bash
FileName="$0"
FilePath="$(realpath "$FileName")"
echo "$FileName"
echo "$FilePath"

DisplayPixels=$(($1*$2))

echo "$DisplayPixels"
