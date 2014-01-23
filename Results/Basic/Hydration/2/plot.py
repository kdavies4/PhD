#!/usr/bin/python
"""Plot the results of simulations.
"""
__author__ = "Kevin Davies"
__version__ = "2013-7-2"

import os
import matplotlib.pyplot as plt

from fcres import SimRes, saveall

# Settings
# Begin customize--------------------------------------------------------------

# Formats in which to save the figures (e.g., ['pdf', 'eps', 'svg', 'png'])
# If the figures shouldn't be saved, specify an empty list.
formats = ['pdf', 'png']

# Plot
sim = SimRes('dsres.mat')
sim.plot(title="Hydration vs. Humidity\n",
         label='Level',
         xname="RH", xunit='%',
         ynames1=["lambda", "lambda_Springer"],
         legends1=["FCSys (via chemical equilibrium)",
                   "Springer et al. (explicit function)"],
         ylabel1='Ratio of $H_2O$ to $SO3^-$ end groups')

# End customize----------------------------------------------------------------

# Save the plots.
saveall(formats)
#plt.show()
