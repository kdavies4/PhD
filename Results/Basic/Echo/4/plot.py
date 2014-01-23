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
sim.plot(title="""Gas Velocity in Two Subregions with an Initial Pressure Difference
Using Central Difference""",
         label='Velocity',
         ynames1=['subregion1.gas.H2.phi[1]',
                  'subregion2.gas.H2.phi_boundaries[1, 1]',
                  'subregion2.gas.H2.phi[1]'],
         legends1=[#'Outside walls',
                  'Subregion 1', 'Common boundary', 'Subregion 2'],
         leg1_kwargs=dict(loc='upper right'), xunit='ms')
save()
plt.close()

# Plot
sim.plot(title="""Gas Temperature in Two Subregions
Using Central Difference""",
         label='Temperature',
         ynames1=['subregion1.gas.H2.T',
                  'subregion2.gas.H2.boundaries[1, 1].T',
                  'subregion2.gas.H2.T'],
         legends1=['Subregion 1', 'Common boundary', 'Subregion 2'],
         leg1_kwargs=dict(loc='upper right'), xunit='ms')
save()
plt.close()

# Plot
sim.plot(title="""Pressure Dynamics of Gas in Two Subregions
Using Central Difference""",
         label='Pressure',
         ynames1=['subregion1.gas.H2.boundaries[1, 1].p',
                  'subregion1.gas.H2.p',
                  'subregion2.gas.H2.boundaries[1, 1].p',
                  'subregion2.gas.H2.p',
                  'subregion2.gas.H2.boundaries[1, 2].p'],
         legends1=['Outer boundary 1', 'Subregion 1', 'Common boundary', 
                   'Subregion 2', 'Outer boundary 2'],
         ylabel1="Pressure", leg1_kwargs=dict(loc='upper right'),
         yunit1='Pag', xunit='ms')
save()
plt.close()

# Plot
sim.plot(title="""Gas Concentration in Two Subregions
Using Central Difference""",
         label='Concentration',
         ynames1=['subregion1.gas.H2.rho',
                  'subregion2.gas.H2.rho_boundaries[1, 1]',
                  'subregion2.gas.H2.rho'],
         legends1=['Subregion 1', 'Common boundary', 'Subregion 2'],
         ylabel1="Concentration", leg1_kwargs=dict(loc='upper right'),
         yunit1='C/cc', xunit='ms')
save()
plt.close()

# End customize----------------------------------------------------------------
