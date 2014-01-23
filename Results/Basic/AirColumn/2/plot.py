#!/usr/bin/python
"""Plot the results of simulations.
"""
__author__ = "Kevin Davies"
__version__ = "2013-7-2"

import matplotlib.pyplot as plt
import matplotlib as mpl

from matplotlib import rcParams
from fcres import SimRes, save

# Settings
# Begin customize--------------------------------------------------------------

# Formats in which to save the figures (e.g., ['pdf', 'eps', 'svg', 'png'])
# If the figures shouldn't be saved, specify an empty list.
formats = ['pdf', 'png']

# Plot 1
sim = SimRes('dsres.mat')
sim.plot(title="Pressure Distribution in a Column of $N_2$ Gas\n",
         label='Pressure',
         ynames1=['subregion2.gas.N2.p',
                  'subregions[3].gas.N2.p',
                  'subregions[2].gas.N2.p',
                  'subregions[1].gas.N2.p',
                  'subregion1.gas.N2.p'],
         legends1=['Subregion 5', 
                   'Subregion 4',
                   'Subregion 3', 
                   'Subregion 2',
                   'Subregion 1'],
         leg1_kwargs=dict(loc='upper right'),
         ylabel1='Pressure', yunit1='kPag')
plt.ylim(-1.4, -0.4)
save()
plt.close()

# Plot
right = rcParams['figure.subplot.right']
rcParams['figure.subplot.right'] = 0.7
sim.plot(title="Pressure Distribution in a Column of $N_2$ Gas\n",
         label='Pressure-all',
         ynames1=['subregion2.gas.N2.boundaries[1, 2].p',
                  'subregion2.gas.N2.p',
                  'subregions[3].gas.N2.boundaries[1, 2].p',
                  'subregions[3].gas.N2.p',
                  'subregions[2].gas.N2.boundaries[1, 2].p',
                  'subregions[2].gas.N2.p',
                  'subregions[1].gas.N2.boundaries[1, 2].p',
                  'subregions[1].gas.N2.p',
                  'subregion1.gas.N2.boundaries[1, 2].p',
                  'subregion1.gas.N2.p',
                  'subregion1.gas.N2.boundaries[1, 1].p'],
         legends1=['Upper boundary', 'Region 5', 'Interface 4', 'Subregion 4',
                   'Interface 3', 'Subregion 3', 'Interface 2', 'Subregion 2',
                   'Interface 1', 'Subregion 1', 'Lower boundary'],
         leg1_kwargs=dict(loc='right'),
         ylabel1='Pressure', yunit1='kPag')
plt.ylim(-1.4, -0.4)
plt.legend(loc=(1.03, 0.2))
save()
plt.close()

# Plot
sim.plot(title="Temperature Distribution in a Column of $N_2$ Gas\n",
         label='Temperature',
         ynames1=['subregion2.gas.N2.T',
                  'subregions[3].gas.N2.boundaries[1, 2].T',
                  'subregions[3].gas.N2.T',
                  'subregions[2].gas.N2.boundaries[1, 2].T',
                  'subregions[2].gas.N2.T',
                  'subregions[1].gas.N2.boundaries[1, 2].T',
                  'subregions[1].gas.N2.T',
                  'subregion1.gas.N2.boundaries[1, 2].T',
                  'subregion1.gas.N2.T'],
         legends1=['Subregion 5', 'Interface 4', 'Subregion 4',
                   'Interface 3', 'Subregion 3', 'Interface 2', 'Subregion 2',
                   'Interface 1', 'Subregion 1'],
         leg1_kwargs=dict(loc='right'))
plt.legend(loc=(1.03, 0.2))
save()
plt.close()

# Plot
sim.plot(title="Vertical Component of Velocity in a Column of $N_2$ Gas\n",
         label='Velocity',
         ynames1=['subregion2.gas.N2.phi_boundaries[1, 2]',
                  'subregion2.gas.N2.phi[1]',
                  'subregions[3].gas.N2.phi_boundaries[1, 2]',
                  'subregions[3].gas.N2.phi[1]',
                  'subregions[2].gas.N2.phi_boundaries[1, 2]',
                  'subregions[2].gas.N2.phi[1]',
                  'subregions[1].gas.N2.phi_boundaries[1, 2]',
                  'subregions[1].gas.N2.phi[1]',
                  'subregion1.gas.N2.phi_boundaries[1, 2]',
                  'subregion1.gas.N2.phi[1]',
                  'subregion1.gas.N2.phi_boundaries[1, 1]'], ylabel1='Velocity',
         legends1=['Upper boundary', 'Subregion 5', 'Interface 4', 'Subregion 4',
                   'Interface 3', 'Subregion 3', 'Interface 2', 'Subregion 2',
                   'Interface 1', 'Subregion 1', 'Lower boundary'],
         leg1_kwargs=dict(loc='right'))
plt.legend(loc=(1.03, 0.2))
save()
plt.close()
rcParams['figure.subplot.right'] = right

# Plot
sim.plot(title="Thermal Time Constants in a Column of $N_2$ Gas\n",
         label='TimeConstants',
         ynames1=['subregion2.gas.N2.tau_QT[1]',
                  'subregions[3].gas.N2.tau_QT[1]',
                  'subregions[2].gas.N2.tau_QT[1]',
                  'subregions[1].gas.N2.tau_QT[1]',
                  'subregion1.gas.N2.tau_QT[1]'], yunit1='day',
         ylabel1='Time constant',
         legends1=['Subregion 5', 'Subregion 4', 
                   'Subregion 3', 'Subregion 2', 'Subregion 1'], 
         leg1_kwargs=dict(loc='right'))
save()
plt.close()

# Plot
sim.plot(title="Pressure Difference in a Column of $N_2$ Gas\n",
         label='PressureDifference', ylabel1='Pressure difference',
         ynames1=['Deltap', r'Deltap_ex'],
         legends1=['Model', r'Expected ($m\;\!\rho\;\!a_y\;\!L_y$)'],
         yunit1='kPa')
save()
plt.close()

# End customize----------------------------------------------------------------

