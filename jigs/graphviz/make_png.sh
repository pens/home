#!/usr/bin/env bash
#
# Given a graphviz file, uses `dot` to make a PNG image.

dot -Tpng -Gdpi=300 $1 > ${1%.gv}.png
