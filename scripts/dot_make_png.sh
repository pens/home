#!/usr/bin/env bash

dot -Tpng -Gdpi=300 $1 > ${1%.gv}.png
