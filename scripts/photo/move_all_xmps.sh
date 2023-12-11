#!/usr/bin/bash
# Quick helper script to remove all XMP files from photo catalog but maintain the original relative
# structure (e.g. /catalog/2023/12/x.xmp -> /xmp/catalog/2023/12/x.xmp).

files=$(find "$1" -iname "*.xmp")
while read file
do
    out="$2/${file#/}"
    path=$(dirname $out)
    mkdir -p "$path"
    mv -nv "$file" "$out"
done <<< $files
