#!/usr/bin/python
"""Plot the profile of a property under advection and diffusion.

See Patankar1980, p. 85, eq. 5.7.
"""
__author__ = "Kevin Davies"
__version__ = "2013-2-17"

import matplotlib.pyplot as plt
import numpy as np
from numpy import exp
from modelicares.base import figure, saveall
from matplotlib import rcParams

# Settings
margin = max(rcParams['figure.subplot.left'],
             1- rcParams['figure.subplot.right'],
             rcParams['figure.subplot.bottom'],
             1- rcParams['figure.subplot.top'])
rcParams['figure.subplot.left'] = margin
rcParams['figure.subplot.right'] = 1 - margin
rcParams['figure.subplot.bottom'] = margin
rcParams['figure.subplot.top'] = 1 - margin
size = (rcParams['figure.figsize'][0] + rcParams['figure.figsize'][1])/2
rcParams['figure.figsize'] = (size, size)

# Functions
lambdastar_Patankar = lambda Pe, xstar: (exp(Pe*xstar) - 1)/(exp(Pe) - 1)
lambdastar_model = lambda Pe, xstar: 1.0/(1 + (1.0/xstar - 1)*exp(Pe/2.0))

# Plot
xstar = 0.5*np.logspace(-3, 0, 50)
xstar = np.concatenate([xstar, np.ones(50) - xstar[::-1]])
figure('../3-AdvDiffProfile')
for Pe, ha, va, offset in zip([-20.0, -6.0, -3.0, -1.0, 1e-10, 1.0, 3.0, 6.0, 20.0],
                           ['right', 'left', 'left', 'left', 'left', 'right', 'right', 'right', 'left'],
                           ['top', 'top', 'top', 'center', 'center', 'center', 'bottom', 'bottom', 'bottom'],
                           [(-0.015, -0.01), (0.015, -0.01), (0.015, 0), (0.015, 0), (0.015, 0), (-0.015, 0), (-0.015, 0), (-0.015, 0.01), (0.015, 0.01)]):
   # Pe = 0 isn't used because it causes a singularity.
   plt.plot(xstar, lambdastar_Patankar(Pe, xstar), 'b--')
   plt.plot(xstar, lambdastar_model(Pe, xstar), 'k')
   #plt.plot(xstar, lambdastar_model(Pe, xstar), 'ro')
   plt.plot(0.5, lambdastar_model(Pe, 0.5), 'ko', mfc='none')
   lambdastar_label = (lambdastar_Patankar(Pe, 0.5) + lambdastar_model(Pe, 0.5))/2.0
   plt.text(0.5 + offset[0], lambdastar_label + offset[1],
            'Pe=%.0f'%Pe, ha=ha, va=va)
plt.axis([0, 1, 0, 1])
plt.title('Profile of a Property under Advection and Diffusion\n')
plt.xlabel('Dimensionless Position ($(x - x_1)/L$)')
plt.ylabel('Dimensionless Property ($(\lambda - \lambda_1)/(\lambda_2 - \lambda_1)$)')
plt.legend(['Patankar', 'Model'], loc='upper right')

saveall()
plt.show()
