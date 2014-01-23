#!/usr/bin/python
"""Run the plot.py scripts in all the folders directly within this one.
"""
__author__ = "Kevin Davies"
__version__ = "2013-7-18"

import os

from glob import glob

for script in glob("*/plot.py"):
    dirname, basename = os.path.split(script)
    os.chdir(dirname)
    execfile(basename)
    os.chdir('..')