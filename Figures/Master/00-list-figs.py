#!/usr/bin/env python
"""Search a directory and make a list of the unique image files by
their base fname (excluding their file extensions).

Also make a list of the base fnames that are not included within the
text of files in a given directory.  Finally, list any of the .pdf
files that are not explicitly referenced with their file extension in
the text of those files.
"""
__author__ = "Kevin L. Davies"
__version__ = "2010/10/12"
__email__ = "kld@alumni.carnegiemellon.edu"

import os

# Local functions
def case_insensitive_cmp(a, b):
	return cmp(a.upper(), b.upper())
def write_list(strList, fname, mode):
	a = open(fname, mode)
	for item in strList:
		a.write(item + '\n')
	a.close()

# Settings
fig_dir = '../' # Directory that contains the figures (relative to the directory where this file resides)
tex_dir = os.getenv('HOME') + '/Documents/LaTeX/Dissertation/Chapters' # Directory that contains the TEX files to search (relative to the user directory)
exts = ['.png', '.eps', '.jpg', '.pdf'] # List of extensions to include in the figure list (case sensitive)
output_fname = '00-list-figs.txt' # Name of the file where the results should be saved (The file will be overwritten.)

# Create a list of the figures.
dirList = os.listdir(fig_dir)
base_list = []
PDF_list = []
for fname in dirList:
	for ext in exts:
		if fname.endswith(ext):
			base_list.append(fname[0:-len(ext)])
			break
	if fname.endswith('pdf'):
		PDF_list.append(fname[0:fname.rfind('.')])
base_list = list(set(base_list)) # Reduce the list to its unique entries.
base_list.sort(case_insensitive_cmp) # Sort the list in place.
PDF_list.sort(case_insensitive_cmp) # Sort the list in place.
write_list(['List of all figures:'], output_fname, 'w')
write_list(base_list, output_fname, 'a')

# Determine if and how the TEX files reference each figure.
tex_list = os.listdir(tex_dir)
missing_PDF_exts = []
for fname in tex_list:
	if fname.endswith('.tex'):
		a = open(tex_dir + '/' + fname, 'r')
		text = a.read()
		for base_name in base_list[:]:
			if text.find(base_name) != -1:
				base_list.remove(base_name)
		for PDF_name in PDF_list[:]:
			if text.find(PDF_name + '}') != -1:
				missing_PDF_exts.append(PDF_name + ' (in ' + fname + ')')
		a.close()
write_list(['\nList of missing figures:'], output_fname, 'a')
write_list(base_list, output_fname, 'a')
write_list(['\nList of PDF figures that have been referenced without their extension\n(These figures may not be printed in vector graphics.):'], output_fname, 'a')
write_list(missing_PDF_exts, output_fname, 'a')
