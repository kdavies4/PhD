#!/bin/bash
# Crop the PDF images in this folder.
#
# Created by Kevin Davies, 6/3/2012

for fname in *.pdf
do
    pdfcrop --margins "10 10 10 10" "$fname" "$fname"
done
