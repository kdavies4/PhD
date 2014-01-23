#!/usr/bin/python
"""Plot the results of simulations.
"""
__author__ = "Kevin Davies"
__version__ = "2013-7-2"

import os
import matplotlib.pyplot as plt

from bisect import bisect
from numpy import exp
from matplotlib import rcParams
from fcres import SimRes, saveall

# Settings
# Begin customize--------------------------------------------------------------

# Formats in which to save the figures (e.g., ['pdf', 'eps', 'svg', 'png'])
# If the figures shouldn't be saved, specify an empty list.
formats = ['pdf', 'png']

# Plot
sim = SimRes(os.path.join('1', 'dsres.mat'))
rcParams['figure.subplot.bottom'] = 0.16
ax1, ax2 = sim.plot(title="Temperature of an Electrical Resistor\n",
                    label='Temperature',
                    ynames1=["subregion.graphite.'C+'.boundaries[1, 1].T",
                             "subregion.graphite.'C+'.T", "T_ex"],
                    legends1=["Boundary", "Bulk", "Expected"],
                    leg1_kwargs=dict(loc='right'),
                    ylabel1="Temperature")
plt.xlim(0, 30)

# Expected time constant
tau = sim.get_IV("subregion.graphite.'C+'.tau_QT[1]", sim.to_unit('s'))
plt.axvline(tau/2, color='k', linestyle=':')
plt.annotate(r"$\tau_{QT}/2$", xy=(tau/2, 20), xycoords="data",
             xytext=(tau/2 - 2, 15), 
             va="top", ha="center",
             bbox=dict(boxstyle="round", fc="w"),
             arrowprops=dict(arrowstyle="->"))



# Actual time constant
T = sim["subregion.graphite.'C+'.T"]
T_target = T[0] + (1 - exp(-1))*(T[-1] - T[0])
i = bisect(T, T_target)
t = sim.get_times("subregion.graphite.'C+'.T")[i]
plt.axvline(t, color='k', linestyle=':')
plt.annotate(r"@63%", xy=(t, 20), xycoords="data",
             xytext=(t + 2, 15), 
             va="top", ha="center",
             bbox=dict(boxstyle="round", fc="w"),
             arrowprops=dict(arrowstyle="->"))


# End customize----------------------------------------------------------------

# Save the plots.
saveall(formats)
#plt.show()
