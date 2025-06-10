#!/usr/bin/env sh

exiftool --ext xmp -EXIF:Rating= -EXIF:RatingPercent= -XMP:Rating= -XMP:RatingPercent= -progress -r "$1"
