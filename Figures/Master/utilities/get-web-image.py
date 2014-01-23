#!/usr/bin/env python
# Copy a given picture from a web page and create a citation.
# (You have to be on the internet to do this.)
#
# Python script from http://www.daniweb.com/code/snippet216796.html, accessed 23-Oct-10
# Created and tested with Python24 by vegaseat, 19-Sep-06

import urllib2
import datetime
#import webbrowser # test
#import os # test

def getWebImage(picturePage, preDesc, postDesc, filename):

    #webbrowser.open(picturePage) # test

    # Open the web page picture and read it into a variable.
    opener1 = urllib2.build_opener()
    page1 = opener1.open(picturePage)
    myPicture = page1.read()

    # Open file for binary write and save the picture.
    # picturePage[-4:] extracts the extension e.g., ".gif".
    # (Most image file extensions have three letters; otherwise modify this.)
    imageOut = open(filename + picturePage[-4:], "wb")
    imageOut.write(myPicture)
    imageOut.close()

    # Write a citation for the picture.
    now = datetime.date.today()
    texOut = open(filename + ".tex", "w")
    texOut.write(preDesc + "\url{%s}"%picturePage + postDesc + ", accessed " + now.strftime("%B\ %d, %Y") + "%")
    texOut.close()

    # Was it saved correctly?
    # Test it out...
    #webbrowser.open(filename) # test

    # or ...
    # On Windows this will display the image in the default viewer.
    #os.startfile(filename) # test

    return 1
