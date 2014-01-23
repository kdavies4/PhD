#!/bin/bash
#
# Use the diction tool on all of the tex files.

for f in *.tex; do
    echo Checking $f ...
    diction -s $f > ${f%.tex}.dic
done
