#!/usr/bin/python
"""Plot the results of simulations.
"""
__author__ = "Kevin Davies"
__version__ = "2013-7-2"

import os
import matplotlib.pyplot as plt
import modelicares.base as base

from fcres import SimRes, save, figure

# Settings
# Begin customize--------------------------------------------------------------

# Formats in which to save the figures (e.g., ['pdf', 'eps', 'svg', 'png'])
# If the figures shouldn't be saved, specify an empty list.
formats = ['pdf', 'png']

# Plot 1
sim = SimRes(os.path.join('1', 'dsres.mat'))
ynames = ["subregion1.graphite.'C+'.T"]
for i in range(1, 6):
    ynames += ["subregions[%i].graphite.'C+'.boundaries[1, 1].T" % i,
               "subregions[%i].graphite.'C+'.T" % i]
ynames += ["subregion2.graphite.'C+'.boundaries[1, 1].T",
          "subregion2.graphite.'C+'.T"]
legends = []
for i in range(1, 7):
    legends += ["Subregion %i" % i, "Interface %i" % i]
legends += ["Subregion 8"]
sim.plot(title="Temperature of the Solid\n",
         label='TemperatureSolid',
         ynames1=ynames, legends1=legends, leg1_kwargs=dict(ncol=2),
         ylabel1='Temperature')
save()
plt.close()

# Plot
ynames = ["subregion1.gas.N2.T"]
for i in range(1, 6):
    ynames += ["subregions[%i].gas.N2.boundaries[1, 1].T" % i,
               "subregions[%i].gas.N2.T" % i]
ynames += ["subregion2.gas.N2.boundaries[1, 1].T", "subregion2.gas.N2.T"]
sim.plot(title="Temperature of the Gas\n",
         label='TemperatureGas',
         ynames1=ynames, legends1=legends, leg1_kwargs=dict(ncol=2),
         ylabel1='Temperature')
save()
plt.close()

# Plot
ynames = ["subregion1.gas.N2.p"]
for i in range(1, 6):
    ynames += ["subregions[%i].gas.N2.boundaries[1, 1].p" % i,
               "subregions[%i].gas.N2.p" % i]
ynames += ["subregion2.gas.N2.boundaries[1, 1].p", "subregion2.gas.N2.p"]
sim.plot(title="Pressure of the Gas\n",
         label='Pressure', ylabel1="Pressure",
         ynames1=ynames, yunit1='kPag',
         legends1=legends,
         leg1_kwargs=dict(ncol=2, loc='lower right'))
save()
plt.close()

# Plot
ynames = ["subregion1.gas.N2.rho"]
for i in range(1, 6):
    ynames += ["subregions[%i].gas.N2.rho_boundaries[1, 1]" % i,
               "subregions[%i].gas.N2.rho" % i]
ynames += ["subregion2.gas.N2.rho_boundaries[1, 1]", "subregion2.gas.N2.rho"]
sim.plot(title="Concentration of the Gas\n",
         label='Concentration', ylabel1="Concentration",
         ynames1=ynames, yunit1='C/cc',
         legends1=legends,
         leg1_kwargs=dict(ncol=2, loc='lower right'))
save()
plt.close()

# Plot
ynames = ["subregion1.gas.N2.phi[1]"]
for i in range(1, 6):
    ynames += ["subregions[%i].gas.N2.phi_boundaries[1, 1]" % i,
               "subregions[%i].gas.N2.phi[1]" % i]
ynames += ["subregion2.gas.N2.phi_boundaries[1, 1]", "subregion2.gas.N2.phi[1]"]
sim.plot(title="Gas Velocity Induced by Thermal Conduction\n",
         label='Velocity',
         ynames1=ynames, yunit1='um/s',
         legends1=legends,
         leg1_kwargs=dict(ncol=2, loc='lower right'))
save()
plt.close()

# End customize----------------------------------------------------------------
