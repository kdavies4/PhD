#!/usr/bin/python
"""Plot the CPU time of the simulations in this folder
"""
__author__ = "Kevin Davies"
__version__ = "2013-7-1"

import os
import matplotlib.pyplot as plt

from glob import glob
from modelicares import SimRes, save

# Begin customize--------------------------------------------------------------

# Formats in which to save the figures
formats = ['pdf', 'png']

# Include the base filename in the image filenames
incl_base = True

for fname in glob('*.mat'):
    try:
        label = 'CPUtime'
        if incl_base:
           label = os.path.splitext(fname)[0] + '-' + label
        sim = SimRes(fname)
        sim.plot(title="Real Time vs. Simulation Time", label=label,
                 xlabel='Simulation time',
                 ynames1=['CPUtime'], legends1=None,
                 ylabel1='Real time / s')
        save(formats)
    except:
        print("Error with %s:" % fname)
        pass
