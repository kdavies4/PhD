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
sim.plot(title="Pressure of Water during Evaporation\n",
                    label='Pressure',  xunit='ms',
                    ynames1=["subregion.gas.H2O.p", "p_sat"],
                    legends1=["Pressure",
                              "Saturation pressure\n(from Modelica.Media)"],
                    leg1_kwargs=dict(loc='lower right'),
                    ylabel1='Pressure')

# Plot
sim.plot(title="Temperature of Water during Evaporation\n",
                    label='Temperature',  xunit='ms', yunit1='mK',
                    ynames1=["subregion.gas.H2O.T", "subregion.liquid.H2O.T"],
                    legends1=["Gas",
                              "Liquid"], 
                    ylabel1='Temperature')

# Plot
sim.plot(title="Relative Humidity of Water during Evaporation\n",
                    label='RH', 
                    ynames1=["subregion.gas.H2O.RH"],
                    legends1=None, yunit1='%', xunit='ms',
                    ylabel1='Relative humidity')

# Plot
sim.plot(title="Rate of Evaporation of Water\n",
                    label='Rate', legends1=None, yunit1="A", xunit='ms',
                    ynames1=["subregion.gas.H2O.chemical[2].Ndot"],
                    ylabel1='Rate of evaporation')

# End customize----------------------------------------------------------------

# Save the plots.
saveall(formats)
#plt.show()
