#!/usr/bin/python
"""Plot the CPU times of the simulations in this folder
"""
__author__ = "Kevin Davies"
__version__ = "2013-7-1"

import os
import matplotlib.pyplot as plt

from glob import glob
from modelicares import SimRes, multiload, multiplot, save

# Begin customize--------------------------------------------------------------

# Formats in which to save the figures
formats = ['pdf', 'png']

# Include the base filename in the image filenames
incl_base = False

# Plot
fnames = glob('*.mat')
sims = multiload(fnames)[0]
multiplot(sims, title="Simulation Time vs. Real Time\n", label='CPUtimes',
          use_paren=False, ylabel1='Real time / s',
          ynames1=['CPUtime'], legends1=['']*len(sims),
          xlabel='Simulation time')
save(formats)
