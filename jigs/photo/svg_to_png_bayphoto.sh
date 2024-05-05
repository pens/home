#!/usr/bin/env bash
#
# Converts SVG images into the correct PNG for sending to BayPhoto.
set -ex

height=$(inkscape -H "$1")
width=$(inkscape -W "$1")

if [[ $(echo "$height > $width" | bc) -eq 1 ]]; then
    dim="-h"
else
    dim="-w"
fi

out=${1%.svg}.png

inkscape $dim 5400 "$1" -o $out
magick $out -verbose -background "#ffffff" -gravity center -extent 6000x6000 -alpha off $out
