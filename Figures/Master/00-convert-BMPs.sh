#!/bin/bash
# Convert the *.bmp files in this directory to *.png and save them to the folder above the one that contains this 
# script.
# Requires that ImageMagick (http://www.imagemagick.org) is installed
# Replaces the existing images in the destination directory!
#
# Created by Kevin Davies, 23-Oct-10

for bmpFile in *.bmp; do
    pngFile=`basename $bmpFile .bmp`.png
    convert $bmpFile ../$pngFile
done


