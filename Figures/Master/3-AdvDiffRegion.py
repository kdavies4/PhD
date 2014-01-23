#!/usr/bin/python
"""Plot the transport rate due to advection and diffusion.
"""
__author__ = "Kevin Davies"
__version__ = "2013-2-17"

import matplotlib.pyplot as plt
from numpy import linspace, exp
from modelicares.base import figure, saveall
from utilities.slope import slope_marker

# Function
lambdastar_mid = lambda Pe: 1.0/(1 + exp(-Pe/2.0))

# Plotting
Pe = linspace(-15, 15, 101)
figure('../3-AdvDiffRegion')
plt.plot(Pe, lambdastar_mid(Pe), label='Net Transport Rate')
plt.title('Bulk Property in a Region due to Advection and Diffusion\n$Pe_n = Pe_p = Pe$')
plt.xlabel('Dimensionless Material Flow Rate ($Pe$)')
plt.ylabel('Dimensionless Property ($(\lambda - \lambda_n)/(\lambda_p - \lambda_n)$)')
plt.grid()
plt.text(2.5, 0.5, '$1/(1 + e^{-Pe/2})$', ha='center', va='center')
saveall()
plt.show()
