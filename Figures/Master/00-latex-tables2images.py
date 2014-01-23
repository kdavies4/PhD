#!/usr/bin/env python
# Pull individual LaTeX environments from a file, attach a preamble, and compile
# the results into PDF and PNG files.
#
# Requires the following open source/free software:
# 1. pdflatex and pdfcrop utility (all preferably from TeXlive 2010)
# 2. ImageMagick 7 suite
#
# Created by Kevin Davies, 4/1/11
# Posted to http://ubuntuforums.org/showthread.php?t=1708128

import os, shutil, re, glob


## Settings
preamble = 'tables-preamble.tex' # Name of file containing the preamble (just short of \begin{document})
src_fname = '../../tables.tex' # Path and filename of the source
dest = '../Extractions' # Destination directory
env_names = ['table'] # Names of LaTeX environments to look for (The starred versions will be searched as well.)
out_prefix = "table" # Prefix for the compiled files.


## Procedure

# Read the source file.
src = open(os.path.join(src_fname), 'r')
src_tex = src.read()
src.close()

# Copy the source to destination directory (for reference).
if not os.path.exists(dest):
    os.mkdir(dest)
shutil.copy(src_fname, os.path.join(dest, os.path.basename(src_fname)))

# Find occurances of the environments.
occurances = []
for env_name in env_names:
    occurances.extend([m.start() for m in re.finditer('begin{' + env_name + '}', src_tex)])
    occurances.extend([m.start() for m in re.finditer('begin{' + env_name + '\*}', src_tex)])
occurances.sort()

# Compile the environments.
for i in xrange(len(occurances)):
    base = out_prefix + str(i+1) # Base filename of the working files
    shutil.copy(preamble, base + '.tex') # Copy the preamble file.

    # Add the environment to the working file.
    work = open(base + '.tex', 'a')
    work.write('\n\\begin{document}' + '\n\n')
    if i < len(occurances) - 1:
        work.write(src_tex[occurances[i]-1:occurances[i+1]-2] + '\n')
    else:
        work.write(src_tex[occurances[i]-1::] + '\n')
    work.write('\end{document}' + '\n')
    work.close()

    # Run LaTeX on the file and process the images.
    #os.system('latex ' + str(fnum) + '.tex') # Create DVI
    #os.system('dvipng -D 600 ' + str(fnum) + '.dvi') # Create PNG.
    #os.system('dvipdf ' + str(fnum) + '.dvi') # Create PDF.
    os.system('pdflatex ' + base + '.tex') # Create PDF.
    os.system('pdfcrop ' + base + '.pdf ' + base + '.pdf') # Crop white space around the text.
    os.system('convert -units pixelsperinch -density 400 ' + base + '.pdf ' + base + '.png') # Convert to PNG.

    # Move the files and clean up.
    os.rename(base + '.pdf', os.path.join(dest, base + '.pdf'))
    os.rename(base + '.png', os.path.join(dest, base + '.png'))
    for fname in glob.glob(base + '.*') :
        os.remove(fname)
    print "Created " + base + ".pdf and " + base + ".png"
