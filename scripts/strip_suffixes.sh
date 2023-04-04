#!/usr/bin/env bash

set -euo pipefail

if [[ "$#" < 2 ]]; then
    echo "Need at least two arguments: new_suffix old_suffixes ..."
    exit
fi

renames=()
for suffix in ${@:2}; do
    # Pipes run in subshells, need <<< to keep variable
    readarray files <<< $(find . -name "*$suffix.*" 2>/dev/null)
    for f in ${files[@]}; do
        # Remove leading ./
        f=${f#./}
        # Find extension (remove shortest *.)
        ext=${f#*.}
        renames+=("$f ${f%$suffix.$ext}$1.$ext")
    done
done

for r in "${renames[@]}"; do
    read cur new <<< "$r"
    mv $cur $new
done
