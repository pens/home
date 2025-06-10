#!/usr/bin/env bash

# --ext mov: ignore .mov files
# t: tab-delimited
# S: print tag name, not description, and no extra spaces
# q: suppress info messages
exiftool -ContentIdentifier --ext mov -t -S -q "$1" 2>/dev/null | sort | uniq
