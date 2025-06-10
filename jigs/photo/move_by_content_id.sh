#!/usr/bin/env bash

declare -A id_map

while IFS= read -r id; do
    [[ -z "$id" ]] && continue
    id_map["$id"]=1
done < "$1"

find "$2" -type f -name "*.mov" | while IFS= read -r file; do
    id=$(exiftool -ContentIdentifier -t -S -q $file 2>/dev/null)
    if [[ -v id && -v id_map["$id"] ]]; then
        echo "$file"
    fi
done

