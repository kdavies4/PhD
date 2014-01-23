#!/bin/bash
# Create SVG versions of the PDF images in this folder.
#
# Created by Kevin Davies, 10/19/2012

for fname in *.pdf
do
    inkscape -l "${fname%.pdf}.svg" "$fname"
done
