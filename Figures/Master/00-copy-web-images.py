#!/usr/bin/env python
"""Copy images from the web and create citations.
(You have to be on the internet to do this.)
Replaces the existing images and citations in the destination directory!
"""
__author__ = "Kevin L. Davies"
__version__ = "2010/10/23"
__email__ = "kld@alumni.carnegiemellon.edu"

from utilities.get_web_image import getWebImage

# Image
picturePage = "http://fuelcellbus.georgetown.edu/gfx/gen3fcpicture1.jpg" # URL to the picture
preDesc = "Georgetown University, ``Generation III Project,'' "
postDesc = ""
filename = "../1-Ballard" # Path and base filename where the picture and citation should be saved
getWebImage(picturePage, preDesc, postDesc, filename) # Copy the image and write a citation.

# Image
picturePage = "http://mit.edu/16.unified/www/FALL/thermodynamics/notes/fig6VaporDomePV_web.jpg" # URL to the picture
preDesc = "Z. S. Spakovszky, Course notes of Thermodynamics at Massachusetts Institute of Technology, "
postDesc = ""
filename = "../3-VaporDome" # Path and base filename where the picture and citation should be saved
getWebImage(picturePage, preDesc, postDesc, filename) # Copy the image and write a citation.

# Note: the Wikipedia images can't be downloaded the same way as above--must be
# downloaded manually.
