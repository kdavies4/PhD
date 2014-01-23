#!/usr/bin/python
"""Plot the results of simulations.
"""
__author__ = "Kevin Davies"
__version__ = "2013-7-2"

import os
import matplotlib.pyplot as plt

from fcres import SimRes, save

# Settings
# Begin customize--------------------------------------------------------------

# Formats in which to save the figures (e.g., ['pdf', 'eps', 'svg', 'png'])
# If the figures shouldn't be saved, specify an empty list.
formats = ['pdf', 'png']

# Plot
sim = SimRes(os.path.join('1', 'dsres.mat'))
ynames = ["subregion1.graphite.'C+'.T"]
for i in range(1, 7):
    ynames += ["subregions[%i].graphite.'C+'.boundaries[1, 1].T" % i,
               "subregions[%i].graphite.'C+'.T" % i]
ynames += ["subregion2.graphite.'C+'.boundaries[1, 1].T",
          "subregion2.graphite.'C+'.T"]
legends = []
for i in range(1, 8):
    legends += ["Subregion %i" % i, "Interface %i" % i]
legends += ["Subregion 8"]
sim.plot(title="One-Dimensional Thermal Conduction through Graphite\n",
         label='Temperature',
         ynames1=ynames, legends1=legends, leg1_kwargs=dict(ncol=2),
         ylabel1='Temperature')
save()
plt.close()

# End customize----------------------------------------------------------------
