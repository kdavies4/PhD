#!/bin/bash
# Trim the blank space around the edges of all the raster images in the
# directory above this one.
# Then add a white border.
# This requires that ImageMagick (http://www.imagemagick.org) is installed.
# This replaces the orginal images!
# It's best not to use this procedure on vector graphics images because
# ImageMagick will render them.


# PNG images
mogrify -fuzz 2% -trim ../*.png
mogrify -bordercolor '#FFFFFF' -border '10x10' ../*.png

# JPG images
mogrify -fuzz 2% -trim ../*.jpg
mogrify -bordercolor '#FFFFFF' -border '10x10' ../*.jpg
