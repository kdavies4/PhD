#!/usr/bin/python
"""Plot the results of simulations.
"""
__author__ = "Kevin Davies"
__version__ = "2013-7-2"

import matplotlib.pyplot as plt

from matplotlib import rcParams
from fcres import SimRes, save

# Settings
# Begin customize--------------------------------------------------------------

# Formats in which to save the figures (e.g., ['pdf', 'eps', 'svg', 'png'])
# If the figures shouldn't be saved, specify an empty list.
formats = ['pdf', 'png']

# Plot 1
sim = SimRes('dsres.mat')
right = rcParams['figure.subplot.right']
rcParams['figure.subplot.right'] = 0.7
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
                   'Interface 1', 'Subregion 1'], xunit='yr',
         leg1_kwargs=dict(loc='right'))
plt.legend(loc=(1.03, 0.2))
plt.xlim(0, 3)
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
                   'Subregion 3', 'Subregion 2', 'Subregion 1'], xunit='yr',
         leg1_kwargs=dict(loc='right'))
plt.xlim(0, 3)
plt.ylim(18.78, 18.875)
save()
plt.close()


# End customize----------------------------------------------------------------

