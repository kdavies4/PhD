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
sim.plot(title="Water Saturation Pressure",
         label='SaturationPressure',
         xname="T", yunit1='atm',
         ynames1=["p_sat", "p_sat_IG", "p_sat_MSL"],
         legends1=["FCSys (from Gibbs equilibrium)",
                   "FCSys (from Gibbs equilibrium, assuming ideal gas)",
                   "Modelica.Media (correlated function)"],
         ylabel1='Saturation pressure')
plt.ylim([0,1])

# End customize----------------------------------------------------------------

# Save the plots.
saveall(formats)
#plt.show()
