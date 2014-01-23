#!/usr/bin/env python
# Highlight the bibliography keys that have been used in the document.
#
# This reads all *.bbl files in the specified directory (first argument,
# defaults to the directory where this file is located) and marks a *.bib file
# with the entries that are used.
#
# Kevin Davies, 4/12/2013

import re
import glob
import sys
import os

## Settings
# String to add to the entries that have been used
mark = '\n  __markedentry = {[kld:5]},'

# Bibliography file
bibfile = os.path.expanduser('~/Documents/References/primary.bib')

# Directory specification
if (len(sys.argv) > 1):
    directory = sys.argv[1]
else:
    directory = ''


## Make a list of all of the keys that are used.
# Read the keys from the bbl files.
keys = []
for fname in glob.glob(os.path.join(directory, '*.bbl')):
    print("Processing %s ... " % fname)
    src = open(fname, 'r')
    for line in src:
        keyloc = line.find(r'\bibitem{')
        if keyloc <> -1:
            keys.append(line[keyloc+9:line[keyloc:].find(r'}')])
    src.close()

# Reduce the list to a unique set.
keys = set(keys)


## Mark the keys in the bib file.
# Read the file.
src = open(bibfile, 'r')
text = src.read()
src.close()

# Mark the entries.
for key in keys:
    text = re.sub(r'(@.+?\{%s, *)'%key, r'\1' + mark, text)

# Remove any double marks.
text = text.replace(mark*2, mark)

# Re-write the file.
src = open(bibfile, 'w')
src.write(text)
src.close()
