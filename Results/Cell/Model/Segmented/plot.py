#!/usr/bin/python
"""Plot polarization curves from the FCSys model and HNEI.
"""
__author__ = "Kevin L. Davies"
__version__ = "2013/12/13"
__email__ = "kld@alumni.carnegiemellon.edu"

import matplotlib.pyplot as plt
import sys

from glob import glob
from itertools import cycle
from modelicares import save, label_quantity, label_number, figure
from modelicares.base import plot
from fcres import SimRes, annotate_conditions, multiplot

# Specify the baseline conditions.
conditions = dict(T = (60, 'degC'),
                  p = (48.3, 'kPag'),
                  n_O2 = (21, '%'),
                  anInletRH = (80, '%'),
                  caInletRH = (50, '%'),
                  anStoich = (1.5, '1'),
                  caStoich = (2.0, '1'))

# Settings
colors = ['b', 'g', 'r', 'c', 'm', 'y', 'k']
dashes = [(None, None), (3, 3), (1, 1), (3, 2, 1, 2)]

# Load and the results.
sims = map(SimRes, glob('*/*.mat'))
equiv_label = '2.4|%s' % label_quantity(3.2, 'A/cm2', '%.1f')
labels = ['Stoichiometric (1.5|2.0 stoich)', 
          'Fixed flow rate (%s)' % equiv_label]
stoich = sims[0]
fixed = sims[1]

# Establish some units.
V = stoich.to_unit('V')
A = stoich.to_unit('A')
cm2 = stoich.to_unit('cm2')
Apercm2 = stoich.to_unit('A/cm2')
kPag = stoich.to_unit('kPag')
kPa = stoich.to_unit('kPa')
degC = stoich.to_unit('degC')
W = stoich.to_unit('W')

# Plot
multiplot(sims, 
          title='Cell Polarization @ Stoichiometric and Fixed Flow Rate\n'
                + annotate_conditions(conditions, flow=False),
          xname='J', ynames1=['w'], label='Polarization',
          legends1=[''], suffixes=labels,
          use_paren=False, leg1_kwargs=dict(loc='upper right'))
plt.xlim(xmax=2.2)
plt.ylim(0.2, 1.2)
save()
plt.close()

# Plot
n_y = stoich.get_IV('cell.n_y')
figure('PolarizationStoich')
plt.title('Segment Current Densities @ Stoichiometric Flow\n'
          + annotate_conditions(conditions))
w = stoich.get_values('w', f=V)
plt.plot(w, stoich.get_values('J', f=Apercm2), 'k', label='Net', lw=2)
c = cycle(colors)
d = cycle(dashes)
area = stoich.get_IV('cell.anFP.subregions[1, 1, 1].A[1]', f=cm2)
for i in range(n_y):
    J = stoich.get_values("cell.anFP.xPositive[%i, 1].graphite.'e-'.Ndot" 
                          % (i+1), f=A)/area
    plt.plot(w, J, label='Segment ' + str(i+1), 
             color=c.next(), dashes=d.next())
plt.legend()
plt.xlabel(label_number('Potential', 'V'))
plt.ylabel(label_number('Current density', 'A/cm2'))
plt.xlim(min(w), 1.2)
plt.ylim(ymax=2.6)
save()
plt.close()

# Plot
n_y = fixed.get_IV('cell.n_y')
figure('PolarizationFixed')
plt.title('Segment Current Densities @ Fixed Flow\n'
          + annotate_conditions(conditions))
w = fixed.get_values('w', f=V)
plt.plot(w, fixed.get_values('J', f=Apercm2), 'k', label='Net', lw=2)
c = cycle(colors)
d = cycle(dashes)
area = fixed.get_IV('cell.anFP.subregions[1, 1, 1].A[1]', f=cm2)
for i in range(n_y):
    J = fixed.get_values("cell.anFP.xPositive[%i, 1].graphite.'e-'.Ndot" 
                         % (i+1), f=A)/area
    plt.plot(w, J, label='Segment ' + str(i+1), 
             color=c.next(), dashes=d.next())
plt.legend()
plt.xlabel(label_number('Potential', 'V'))
plt.ylabel(label_number('Current density', 'A/cm2'))
plt.xlim(min(w), 1.2)
plt.ylim(ymax=2.3)
save()
plt.close()

# Plot
sim = fixed
n_y = sim.get_IV('cell.n_y')
figure('O2ChannelPressure')
plt.title("Pressure of $O_2$ down the Cathode Channel\nBaseline Conditions")
J = sim.get_values('J', f=Apercm2)
plt.plot(J, sim.get_values("cell.caFP.yNegative[1, 1].gas.O2.p", f=kPag), label="Inlet")
for i in range(int(n_y)-1):
    plt.plot(J, sim.get_values("cell.caFP.subregions[1, %i, 1].gas.O2.p"  % (i+1), f=kPag), label="Segment %i" % (i+1))
    plt.plot(J, sim.get_values("cell.caFP.subregions[1, %i, 1].yPositive.gas.O2.p"  % (i+1), f=kPag), label="Interface %i" % (i+1))
    plt.plot(J, sim.get_values("cell.caFP.subregions[1, %i, 1].gas.O2.p" % n_y, f=kPag), label="Segment %i" % n_y)
plt.plot(J, sim.get_values("cell.caFP.yPositive[1, 1].gas.O2.p", f=kPag), label="Outlet")
plt.xlabel(label_number("Current density", "A/cm2"))
plt.ylabel(label_number("Pressure", "kPa"))
Jmax = max(sim.get_values('J', f=Apercm2))
plt.xlim(xmax=Jmax)
plt.legend(loc='upper left', ncol=2)
save()
plt.close()

# Setup for plots below
sim = stoich
n_y = sim.get_IV('cell.n_y')
J = sim.get_values('J', f=Apercm2)
Jmax = max(sim.get_values('J', f=Apercm2))

# Plot
plot([sim.get_values("cell.caCL.subregions[1, %i, 1].graphite.'C+'.T" % (i+1), f=degC)
      for i in range(n_y)], J)
plt.title("Temperature in Segments of the Cathode Catalyst Layer\nBaseline Conditions")
plt.xlabel(label_number("Current density", "A/cm2"))
plt.ylabel(label_number("Temperature", "degC"))
plt.xlim(xmax=Jmax)
#plt.ylim(ymin=60)
plt.legend(["Segment %i" % (i+1) for i in range(n_y)], loc='upper left')
plt.savefig('CaCLTemperature.pdf')
plt.close()

# Plot
plot([sim.get_values("cell.caCL.subregions[1, %i, 1].gas.O2.p" % (i+1), f=kPa)
      for i in range(n_y)], J)
plt.title("$O_2$ Pressure in Segments of the Cathode Catalyst Layer\nBaseline Conditions")
plt.xlabel(label_number("Current density", "A/cm2"))
plt.ylabel(label_number("Pressure", "kPa"))
plt.xlim(xmax=Jmax)
plt.legend(["Segment %i" % (i+1) for i in range(n_y)], loc='upper right')
plt.savefig('CaCLO2Pressure.pdf')
plt.close()

# Plot
negV = lambda x: -V(x)
plot([sim.get_values("cell.caCL.subregions[1, %i, 1].graphite.'e-Transfer'.Deltag" % (i+1), f=negV)
      for i in range(n_y)], J)
plt.title("Cathode Overpotential in the Cell Segments\nBaseline Conditions")
plt.xlabel(label_number("Current density", "A/cm2"))
plt.ylabel(label_number("Activation overpotential", "V"))
plt.xlim(xmax=Jmax)
plt.legend(["Segment %i" % (i+1) for i in range(n_y)], loc='lower right')
plt.savefig('CaOverpotential.pdf')
plt.close()

# Plot
negW = lambda x: -W(x)
plot([sim.get_values("cell.caCL.subregions[1, %i, 1].graphite.'e-Transfer'.inert.Qdot" % (i+1), f=negW)
      for i in range(n_y)], J)
plt.title("Rate of Heat Generation Due to the ORR in the Cell Segments\nBaseline Conditions")
plt.xlabel(label_number("Current density", "A/cm2"))
plt.ylabel(label_number("Rate of heat generation", "W"))
plt.xlim(xmax=Jmax)
plt.legend(["Segment %i" % (i+1) for i in range(n_y)], loc='upper left')
plt.savefig('CaHeatGen.pdf')
plt.close()

