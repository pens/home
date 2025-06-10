#!/usr/bin/env sh

exiftool --ext xmp -EXIF:XPKeywords= -IPTC:Keywords= -XMP:LastKeywordXMP= -XMP:Categories= -XMP:Subject= -XMP:TagsList= -XMP:HierarchicalSubject= -XMP:CatalogSets= -QuickTime:Category= -progress -r "$1"
