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

# Plot 1
sim = SimRes('dsres.mat')
ax1, ax2 = sim.plot(title="Dynamic Hydration of Ionomer\n",
                    label='Level', ynames1=["subregion.ionomer.H2O.lambda"],
                    legends1=None, 
                    ylabel1='Ratio of $H_2O$ to $SO3^-$ end groups')

# Plot
ax1, ax2 = sim.plot(title="Rate of Absorption of Water into Ionomer\n",
                    label='Rate', ynames1=["subregion.ionomer.H2O.chemical[1].Ndot"],
                    legends1=None, 
                    ylabel1='Rate of absorption')

# End customize----------------------------------------------------------------

# Save the plots.
saveall(formats)
#plt.show()
