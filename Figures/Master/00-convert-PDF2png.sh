#!/bin/bash
# Convert all of the PDFs in the directory above this one to PNGs.
# from "convert pdf to png with imagemagick", March 11, 2008
# http://robfelty.com/2008/03/11/convert-pdf-to-png-with-imagemagick

cd ../
for file in *.pdf; do \
echo $file;\
#convert -density 600x600 -resize 800x560 -quality 90 $file `echo $file|cut -f1 -d'.'`.png;\
convert -density 400x400 +antialias -quality 90 $file `echo $file|cut -f1 -d'.'`.png;\

#convert X.pdf -colorspace RGB -resample 72×72 -units PixelsPerInch -quality 90 -resize 500×500 -size 500×500 R.png

done
# And now the code explained:
#  -density 600×600 says treat the pdf as 600×600 dpi resolution
#  -quality 90 says use the highest compression level for png (9) and no filtering (0)
#  -resize 800×560 gives the dimensions in pixels of the resulting png file

