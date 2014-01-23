#!/usr/bin/python
"""Plot the transport rate due to advection and diffusion.
"""
__author__ = "Kevin Davies"
__version__ = "2013-2-17"

import matplotlib.pyplot as plt
from numpy import linspace, exp
from modelicares.base import figure, saveall
from utilities.slope import slope_marker

# Settings
lambda_1 = 5.0 # Bulk property in region 1
lambda_2 = 1.0 # Bulk property in region 2

# Functions
Xdotstar_adv_ideal = lambda Pe: Pe*(lambda_1 if Pe > 0 else lambda_2)/(lambda_1 - lambda_2)
Xdotstar_adv = lambda Pe: Pe*(lambda_1*exp(Pe/2.0) + lambda_2)/((exp(Pe/2.0) + 1)*(lambda_1 - lambda_2))
Xdotstar_adv_irrev = lambda Pe: Xdotstar_adv(Pe) - Xdotstar_adv_ideal(Pe)
Xdotstar_diff = lambda Pe: 1
Xdotstar = lambda Pe: Xdotstar_adv(Pe) + Xdotstar_diff(Pe)

# Plotting
Pe = linspace(-10, 10, 101) # Current (odd number of points to hit center)
figure('../3-AdvDiffFlow')
plt.plot(Pe, Xdotstar(Pe), 'b', label='Net Transport Rate', linewidth=2)
#plt.plot(Pe, Xdotstar_adv(Pe), 'g', label='Total Advection')
plt.plot(Pe, map(Xdotstar_adv_ideal, Pe), 'k--', label='Ideal Advection')
plt.plot(Pe, map(Xdotstar_adv_irrev, Pe), 'r', label='Irreversible Advection')
plt.plot(Pe, map(Xdotstar_diff, Pe), 'c', label='Diffusion')
legend = plt.legend(loc='upper left')
for t in legend.get_texts():
    t.set_va('bottom') # For some reason, the alignment is uneven otherwise.
plt.title('Transport Rate due to Advection and Diffusion\n')
plt.xlabel('Dimensionless Material Flow Rate ($Pe$)')
plt.ylabel('Dimensionless Transport Rate ($R\dot{X}/(\lambda_1 - \lambda_2)$)')
slope_marker((-8, Xdotstar_adv_ideal(-8)), (lambda_2, lambda_1 - lambda_2),
             fmt=('$\lambda_2 \!= %.0f$', ' $\lambda_1 - \lambda_2 \!= %.0f$'))
slope_marker((4, Xdotstar_adv_ideal(4)), (lambda_1, lambda_1 - lambda_2),
             fmt=('$\lambda_1 \!= %.0f$', '  $\lambda_1 - \lambda_2 \!= %.0f$'))
#plt.grid()

saveall()
plt.show()
