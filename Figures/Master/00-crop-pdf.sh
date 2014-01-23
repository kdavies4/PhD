#!/bin/bash
# Trim the blank space around the edges of all the PDF images in the
# directory above this one.

for f in ../*.pdf
do
echo Processing $f...
pdfcrop $f $f
done
