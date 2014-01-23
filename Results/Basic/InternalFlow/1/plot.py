#!/usr/bin/python
"""Plot the results of simulations.
"""
__author__ = "Kevin Davies"
__version__ = "2013-7-2"

import matplotlib.pyplot as plt

from fcres import SimRes, save

# Settings
# Begin customize--------------------------------------------------------------

# Formats in which to save the figures (e.g., ['pdf', 'eps', 'svg', 'png'])
# If the figures shouldn't be saved, specify an empty list.
formats = ['pdf', 'png']

# Plot 1
sim = SimRes('dsres.mat')
sim.plot(title="""Velocity\n""",
         label='Velocity',
         ynames1=['subregion.liquid.H2O.phi_boundaries[1, 1]'],
         legends1=None, yunit1='m/s',
         ylabel1='Velocity')
plt.ylim([1.1, 1.9])
save()
plt.close()

# Plot
sim.plot(title="""Dimensionless Flow Rate""",
         label='FlowRate',
         ynames1=['Re'], legends1=None,
         ylabel1='Reynolds Number')
save()
plt.close()

# Plot
sim.plot(title="""Thermodynamic Pressure Difference Due to Internal Flow
with Time-Varying Flow Rate""",
         label='Pressure',
         ynames1=['Deltap', 'Deltap_Poiseuille'], 
         legends1=['Model (with inertance)', 
                   "Poiseuille's law (without inertance)"],
         ylabel1='Pressure difference', yunit1='kPa')
plt.ylim(ymax=-28)
save()
plt.close()

# Plot
sim.plot(title="""Temperature Due to Internal Flow
with Time-Varying Flow Rate""",
         label='Temperature', 
         ylabel1='Temperature', legends1=None,
         ynames1=['subregion.liquid.H2O.T'], yunit1='mK')
save()
plt.close()

# End customize----------------------------------------------------------------

# Save the plots.
#saveall(formats)
#plt.show()
