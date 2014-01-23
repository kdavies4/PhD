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
sim.plot(title="""Gas Velocity in Two Subregions with an Initial Pressure Difference\n""",
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
Using Upstream Discretization""",
         label='Temperature',
         ynames1=['subregion1.gas.H2.T',
                  'subregion2.gas.H2.boundaries[1, 1].T',
                  'subregion2.gas.H2.T'],
         legends1=['Subregion 1', 'Common boundary', 'Subregion 2'],
         leg1_kwargs=dict(loc='upper right'), xunit='ms')
save()
plt.close()

# Plot
ax1, ax2 = sim.plot(title="""Pressure Dynamics of Gas in Two Subregions
$\zeta = 0$""",
         label='Pressure',
         ynames1=['subregion1.gas.H2.p',
                  'subregion2.gas.H2.boundaries[1, 1].p',
                  'subregion2.gas.H2.p'],
         legends1=['Subregion 1', 'Common boundary', 'Subregion 2'],
         ylabel1="Pressure", leg1_kwargs=dict(loc='upper right'),
         xunit='ms', yunit1='Pag')
plt.xlim(xmax=0.1)
plt.ylim(ymax=90)
x1 = 0.017
x2 = 0.0508
ax1.plot([x1]*2, [50.5, 60], 'k')
ax1.plot([x2]*2, [50.5, 60], 'k')
ax1.annotate("",
            xy=(x1, 55), xycoords='data',
            xytext=(x2, 55), textcoords='data',
            arrowprops=dict(arrowstyle="<->", connectionstyle="arc3"))
ax1.text((x1 + x2)/2, 57,
        "%.4f ms" % (x2 - x1),
        ha='center', va='bottom')
ax1.text((x1 + x2)/2, 70,
        "2 cm/%.4f ms = %.0f m/s" % (x2 - x1, 20/(x2 - x1)),
        ha='center')
save()
plt.close()

# Plot
sim.plot(title="""Gas Concentration in Two Subregions
Using Upstream Discretization""",
         label='Concentration',
         ynames1=['subregion1.gas.H2.rho',
                  'subregion2.gas.H2.rho_boundaries[1, 1]',
                  'subregion2.gas.H2.rho'],
         legends1=['Subregion 1', 'Common boundary', 'Subregion 2'],
         ylabel1="Concentration", leg1_kwargs=dict(loc='upper right'),
         xunit='ms', yunit1='C/cc')
save()
plt.close()

# End customize----------------------------------------------------------------
