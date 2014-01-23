#!/usr/bin/python
"""Plot polarization curves from FCSys.
"""
__author__ = "Kevin L. Davies"
__version__ = "2013/12/13"
__email__ = "kld@alumni.carnegiemellon.edu"

import matplotlib.pyplot as plt

from matplotlib.offsetbox import AnchoredOffsetbox, TextArea, DrawingArea, VPacker
from matplotlib.sankey import Sankey
from modelicares import figure, save, label_number, label_quantity
from modelicares.base import plot
from fcres import SimRes, annotate_conditions
from matplotlib import rcParams

# Specify the baseline conditions.
conditions = dict(T = (60, 'degC'),
                  p = (48.3, 'kPag'),
                  n_O2 = (21, '%'),
                  anInletRH = (80, '%'),
                  caInletRH = (50, '%'),
                  anStoich = (1.5, '1'),
                  caStoich = (2.0, '1'))

# Load the data.
sim = SimRes('dsres.mat')

# Create some unit conversion functions.
V = sim.to_unit('V')
A = sim.to_unit('A')
Apercm2 = sim.to_unit('A/cm2')
Pa = sim.to_unit('Pa')
kPa = sim.to_unit('kPa')
kPag = sim.to_unit('kPag')
W = sim.to_unit('W')

# Plot
sim.plot(label='Polarization', xname='J', ynames1=['w'], 
         title='Cell Polarization: Baseline Conditions\n'
               + annotate_conditions(conditions),
         legends1=None)
Jmax = max(sim.get_values('J', f=Apercm2))
plt.xlim(xmax=Jmax)
plt.ylim(ymax=1.2)
save()
plt.close()

# Plot
sim.plot(label='Temperature', xname='J',
         title="Temperature throughout the Cell\nBaseline Conditions",
         ynames1=["cell.anFP.subregions[1, 1, 1].gas.H2O.T",
                  "cell.anFP.subregions[1, 1, 1].liquid.H2O.T",
                  "cell.anFP.subregions[1, 1, 1].graphite.'C+'.T",
                  "cell.anGDL.subregions[1, 1, 1].graphite.'C+'.T",
                  "cell.anCL.subregions[1, 1, 1].graphite.'C+'.T",
                  "cell.PEM.subregions[1, 1, 1].ionomer.'SO3-'.T",
                  "cell.caCL.subregions[1, 1, 1].graphite.'C+'.T",
                  "cell.caGDL.subregions[1, 1, 1].graphite.'C+'.T",
                  "cell.caFP.subregions[1, 1, 1].gas.H2O.T",
                  "cell.caFP.subregions[1, 1, 1].liquid.H2O.T",
                  "cell.caFP.subregions[1, 1, 1].graphite.'C+'.T"],
         legends1=["anFP gas", "anFP liquid", "anFP graphite", 
                   "anGDL", 
                   "anCL",
                   "PEM",
                   "caCL",
                   "caGDL",
                   "caFP gas", "caFP liquid", "caFP graphite"],
         leg1_kwargs=dict(ncol=2, loc='upper left'), yunit1='degC')
plt.xlim(xmax=Jmax)
plt.ylim(59.5, 66)
save()
plt.close()

# Plot
sim.plot(label='PressureGas', xname='J',
         title="Gas Pressure throughout the Cell\nBaseline Conditions",
         ynames1=["cell.anFP.subregions[1, 1, 1].gas.p",
                  "cell.anGDL.subregions[1, 1, 1].gas.p",
                  "cell.anCL.subregions[1, 1, 1].gas.p",
                  "cell.caCL.subregions[1, 1, 1].gas.p",
                  "cell.caGDL.subregions[1, 1, 1].gas.p",
                  "cell.caFP.subregions[1, 1, 1].gas.p"], yunit1='kPag',
         ylabel1='Pressure', 
         legends1=["anFP",
                   "anGDL",
                   "anCL",
                   "caCL",
                   "caGDL",
                   "caFP"])
plt.xlim(xmax=Jmax)
save()
plt.close()

figure('PressureGasInterface')
plt.title("Gas Pressure throughout the Cell\nBaseline Conditions")
J = sim.get_values('J', f=Apercm2)
plt.plot(J, sim.get_values("cell.anFP.subregions[1, 1, 1].gas.p", f=kPag), label="anFP")
plt.plot(J, sim.get_values("cell.anFP.xPositive[1, 1].gas.H2O.p", f=kPag) + sim.get_values("cell.anFP.xPositive[1, 1].gas.H2.p", f=kPa), label="anFP-anGDL interface")
plt.plot(J, sim.get_values("cell.anGDL.subregions[1, 1, 1].gas.p", f=kPag), label="anGDL")
plt.plot(J, sim.get_values("cell.anGDL.xPositive[1, 1].gas.H2O.p", f=kPag) + sim.get_values("cell.anGDL.xPositive[1, 1].gas.H2.p", f=kPa), label="anGDL-anCL interface")
plt.plot(J, sim.get_values("cell.anCL.subregions[1, 1, 1].gas.p", f=kPag), label="anCL")
plt.plot(J, sim.get_values("cell.caCL.subregions[1, 1, 1].gas.p", f=kPag), label="caCL")
plt.plot(J, sim.get_values("cell.caGDL.xNegative[1, 1].gas.H2O.p", f=kPag) + sim.get_values("cell.caGDL.xNegative[1, 1].gas.N2.p", f=kPa) + sim.get_values("cell.caGDL.xNegative[1, 1].gas.O2.p", f=kPa), label="caGDL-caFP interface")
plt.plot(J, sim.get_values("cell.caGDL.subregions[1, 1, 1].gas.p", f=kPag), label="caGDL")
plt.plot(J, sim.get_values("cell.caFP.xNegative[1, 1].gas.H2O.p", f=kPag) + sim.get_values("cell.caFP.xNegative[1, 1].gas.N2.p", f=kPa) + sim.get_values("cell.caFP.xNegative[1, 1].gas.O2.p", f=kPa), label="caGDL-caFP interface")
plt.plot(J, sim.get_values("cell.caFP.subregions[1, 1, 1].gas.p", f=kPag), label="caFP")
plt.xlabel(label_number("Current density", "A/cm2"))
plt.ylabel(label_number("Pressure", "kPa"))
plt.xlim(xmax=Jmax)
plt.legend(loc='upper left')
save()
plt.close()

# Plot
sim.plot(label='PressureH2', xname='J',
         title='$H_2$ Pressure from the Inlet to the HOR\nBaseline Conditions',
         ynames1=["cell.anFP.subregions[1, 1, 1].gas.H2.boundaries[2, 1].p",
                  "cell.anFP.subregions[1, 1, 1].gas.H2.p",
                  "cell.anGDL.subregions[1, 1, 1].gas.H2.boundaries[1, 1].p",
                  "cell.anGDL.subregions[1, 1, 1].gas.H2.p",
                  "cell.anCL.subregions[1, 1, 1].gas.H2.boundaries[1, 1].p",
                  "cell.anCL.subregions[1, 1, 1].gas.H2.p"],
         legends1=["Inlet", 
                   "anFP",
                   "anFP-anGDL interface",
                   "anGDL",
                   "anGDL-anCL interface",
                   "anCL/HOR"])
plt.xlim(xmax=Jmax)
plt.ylim(ymax=132)
save()
plt.close()

# Plot
sim.plot(label='PressureH2O', xname='J',
         title='$H_2O$ Gas Pressure from the ORR to the Outlet\nBaseline Conditions',
         ynames1=["cell.caFP.subregions[1, 1, 1].gas.H2O.boundaries[2, 2].p",
                  "cell.caFP.subregions[1, 1, 1].gas.H2O.p",
                  "cell.caGDL.subregions[1, 1, 1].gas.H2O.boundaries[1, 1].p",
                  "cell.caGDL.subregions[1, 1, 1].gas.H2O.p",
                  "cell.caCL.subregions[1, 1, 1].gas.H2O.boundaries[1, 1].p",
                  "cell.caCL.subregions[1, 1, 1].gas.H2O.p"][::-1],
         leg1_kwargs=dict(loc='upper left'),
         legends1=["Outlet", 
                   "caFP",
                   "caFP-caGDL interface",
                   "caGDL",
                   "caGDL-caCL interface",
                   "caCL/ORR"][::-1])
plt.xlim(xmax=Jmax)
plt.ylim(ymin=18)
save()
plt.close()

# Plot
sim.plot(label='PressureO2', xname='J',
         title='$O_2$ Pressure from the Inlet to the ORR\nBaseline Conditions',
         ynames1=["cell.caFP.subregions[1, 1, 1].gas.O2.boundaries[2, 1].p",
                  "cell.caFP.subregions[1, 1, 1].gas.O2.p",
                  "cell.caGDL.subregions[1, 1, 1].gas.O2.boundaries[1, 1].p",
                  "cell.caGDL.subregions[1, 1, 1].gas.O2.p",
                  "cell.caCL.subregions[1, 1, 1].gas.O2.boundaries[1, 1].p",
                  "cell.caCL.subregions[1, 1, 1].gas.O2.p"],  
         leg1_kwargs=dict(loc='upper left'),
         legends1=["Inlet", 
                   "caFP",
                   "caFP-caGDL interface",
                   "caGDL",
                   "caGDL-caCL interface",
                   "caCL/ORR"])
plt.xlim(xmax=Jmax)
plt.ylim(ymax=60)
save()
plt.close()

# Plot
sim.plot(label='PoreSaturation', xname='J',
         title='Liquid Pore Saturation throughout the Cell\nBaseline Conditions',
         ynames1=["cell.anFP.subregions[1, 1, 1].volume.x",
                  "cell.anGDL.subregions[1, 1, 1].volume.x",
                  "cell.anCL.subregions[1, 1, 1].volume.x",
                  "cell.caCL.subregions[1, 1, 1].volume.x",
                  "cell.caGDL.subregions[1, 1, 1].volume.x",
                  "cell.caFP.subregions[1, 1, 1].volume.x"], yunit1='%',
         leg1_kwargs=dict(ncol=2, loc='upper left'),
         legends1=["anFP",
                   "anGDL",
                   "anCL",
                   "caCL",
                   "caGDL",
                   "caFP"])
plt.xlim(xmax=Jmax)
#plt.ylim(ymax=40)
save()
plt.close()

# Plot
sim.plot(label='Humidity',  xname='J',
         title='Humidity throughout the Cell\nBaseline Conditions',
         ynames1=["cell.anFP.subregions[1, 1, 1].gas.H2O.RH",
                  "cell.anGDL.subregions[1, 1, 1].gas.H2O.RH",
                  "cell.anCL.subregions[1, 1, 1].gas.H2O.RH",
                  "cell.caCL.subregions[1, 1, 1].gas.H2O.RH",
                  "cell.caGDL.subregions[1, 1, 1].gas.H2O.RH",
                  "cell.caFP.subregions[1, 1, 1].gas.H2O.RH"],
         ylabel1="Relative humidity", yunit1="%",
         leg1_kwargs=dict(ncol=2, loc='upper left'),
         legends1=["anFP",
                   "anGDL",
                   "anCL",
                   "caCL",
                   "caGDL",
                   "caFP"])
plt.xlim(xmax=Jmax)
plt.ylim(92, 104)
save()
plt.close()

# Plot
sim.plot(label='EvaporationRate',  xname='J',
         title='Rates of Evaporation throughout the Cell\nBaseline Conditions',
         ynames1=["cell.anFP.subregions[1, 1, 1].gas.H2O.chemical[2].Ndot",
                  "cell.anGDL.subregions[1, 1, 1].gas.H2O.chemical[2].Ndot",
                  "cell.anCL.subregions[1, 1, 1].gas.H2O.chemical[2].Ndot",
                  "cell.caCL.subregions[1, 1, 1].gas.H2O.chemical[2].Ndot",
                  "cell.caGDL.subregions[1, 1, 1].gas.H2O.chemical[2].Ndot",
                  "cell.caFP.subregions[1, 1, 1].gas.H2O.chemical[2].Ndot"],
         ylabel1="Rate of evaporation", yunit1="A",
         leg1_kwargs=dict(ncol=2, loc='upper left'),
         legends1=["anFP",
                   "anGDL",
                   "anCL",
                   "caCL",
                   "caGDL",
                   "caFP"])
plt.xlim(xmax=Jmax)
#plt.ylim(ymax=30)
save()
plt.close()

# Plot
sim.plot(label='HydrationRate',  xname='J',
         title='Rates of Hydration in the Catalyst Layers\nBaseline Conditions',
         ynames1=["cell.anCL.subregions[1, 1, 1].ionomer.H2O.chemical[1].Ndot",
                  "cell.caCL.subregions[1, 1, 1].ionomer.H2O.chemical[1].Ndot"],
         ylabel1="Rate of hydration", yunit1="mA",
         leg1_kwargs=dict(loc='upper left'),
         legends1=["anCL",
                   "caCL"])
plt.xlim(xmax=Jmax)
save()
plt.close()

# Plot
figure('ChannelPressureAn')
plt.title("Gas Pressure down the Anode Channel\nBaseline Conditions")
J = sim.get_values('J', f=Apercm2)
plt.plot(J, sim.get_values("cell.anFP.yNegative[1, 1].gas.H2O.p", f=kPag) + sim.get_values("cell.anFP.yNegative[1, 1].gas.H2.p", f=kPa), label="Inlet")
plt.plot(J, sim.get_values("cell.anFP.subregions[1, 1, 1].gas.p", f=kPag), label="anFP")
plt.plot(J, sim.get_values("cell.anFP.yPositive[1, 1].gas.H2O.p", f=kPag) + sim.get_values("cell.anFP.yPositive[1, 1].gas.H2.p", f=kPa), label="Outlet")
plt.xlabel(label_number("Current density", "A/cm2"))
plt.ylabel(label_number("Pressure", "kPa"))
plt.xlim(xmax=Jmax)
plt.legend(loc='upper left')
save()
plt.close()


# Plot
figure('ChannelPressureCa')
plt.title("Gas Pressure down the Cathode Channel\nBaseline Conditions")
J = sim.get_values('J', f=Apercm2)
plt.plot(J, sim.get_values("cell.caFP.yNegative[1, 1].gas.H2O.p", f=kPag) + sim.get_values("cell.caFP.yNegative[1, 1].gas.N2.p", f=kPa) + sim.get_values("cell.caFP.yNegative[1, 1].gas.O2.p", f=kPa), label="Inlet")
plt.plot(J, sim.get_values("cell.caFP.subregions[1, 1, 1].gas.p", f=kPag), label="caFP")
plt.plot(J, sim.get_values("cell.caFP.yPositive[1, 1].gas.H2O.p", f=kPag) + sim.get_values("cell.caFP.yPositive[1, 1].gas.N2.p", f=kPa) + sim.get_values("cell.caFP.yPositive[1, 1].gas.O2.p", f=kPa), label="Outlet")
plt.xlabel(label_number("Current density", "A/cm2"))
plt.ylabel(label_number("Pressure", "kPa"))
plt.xlim(xmax=Jmax)
plt.legend(loc='upper left')
save()
plt.close()

# Plot
J = sim.get_values('J', f=Apercm2)
negkPa = lambda x: -kPa(x)
plot([sim.get_values("cell.anFP.subregions[1, 1, 1].gas.H2O.Deltap[2]", f=negkPa) 
      + sim.get_values("cell.anFP.subregions[1, 1, 1].gas.H2.Deltap[2]", f=negkPa), 
      sim.get_values("cell.caFP.subregions[1, 1, 1].gas.H2O.Deltap[2]", f=negkPa) 
      + sim.get_values("cell.caFP.subregions[1, 1, 1].gas.N2.Deltap[2]", f=negkPa) 
      + sim.get_values("cell.caFP.subregions[1, 1, 1].gas.O2.Deltap[2]", f=negkPa)], J)
plt.title("Gas Pressure Loss down the Channels\nBaseline Conditions")
plt.xlabel(label_number("Current density", "A/cm2"))
plt.ylabel(label_number("Pressure difference", "kPa"))
plt.xlim(xmax=Jmax)
plt.ylim(ymin=-0.1)
plt.legend(["Anode", "Cathode"], loc='upper left')
plt.savefig('ChannelPressureDrop')
plt.close()

# Plot
sim.plot(label='Velocity',  xname='J',
         title='Velocity of Water down the Channels\nBaseline Conditions',
         ylabel1="Velocity",
         ynames1=["cell.anFP.subregions[1, 1, 1].gas.H2O.phi[2]",
"cell.anFP.subregions[1, 1, 1].liquid.H2O.phi[2]",
"cell.caFP.subregions[1, 1, 1].gas.H2O.phi[2]",
"cell.caFP.subregions[1, 1, 1].liquid.H2O.phi[2]"],
         leg1_kwargs=dict(loc='upper left'),
         legends1=["$H_2O$ gas in anode", "$H_2O$ liquid in anode", "$H_2O$ gas in cathode", "$H_2O$ liquid in cathode"])
plt.xlim(xmax=Jmax)
plt.ylim(ymin=-10)
save()
plt.close()

# Plot
sim.plot(label='Hydration',  xname='J',
         title='Hydration in the MEA\nBaseline Conditions',
         ylabel1="Ratio of $H_2O$ molecules to $SO_3$ end-groups ($\lambda$)",
         ynames1=["cell.anCL.subregions[1, 1, 1].ionomer.H2O.lambda",
"cell.PEM.subregions[1, 1, 1].ionomer.H2O.lambda",
"cell.caCL.subregions[1, 1, 1].ionomer.H2O.lambda"],
         leg1_kwargs=dict(loc='upper left'),
         legends1=["anCL", "PEM", "caCL"])
plt.xlim(xmax=Jmax)
save()
plt.close()

# Plot
sim.plot(xname='J',
         title='Transport of $H_2O$ through the PEM\n',
         ynames1=["cell.PEM.subregions[1, 1, 1].ionomer.H2O.I[1]"],
         yunit1='mA',
         ylabel1="Current",label='H2OTransportPEM',
         legends1=None)
plt.xlim(xmax=Jmax)
plt.ylim(ymin=-5)
save()
plt.close()

# Plot
f, ((ax1, ax2, ax3), (ax4, ax5, ax6)) = plt.subplots(2, 3, sharex='col', sharey='row')
f.set_label('H2OTransport')
sim.plot(ax1=ax1, xname='J',
         title='anFP',
         ynames1=["cell.anFP.subregions[1, 1, 1].gas.H2O.I[1]",
                  "cell.anFP.subregions[1, 1, 1].liquid.H2O.I[1]"],
         yunit1='A', xlabel="",
         ylabel1="Current",
         legends1=['Gas', 'Liquid'])
sim.plot(ax1=ax2, xname='J',
         title='Transport of Water through the Cell\nanGDL',
         ynames1=["cell.anGDL.subregions[1, 1, 1].gas.H2O.I[1]",
                  "cell.anGDL.subregions[1, 1, 1].liquid.H2O.I[1]"],
         yunit1='A', xlabel="", ylabel1="",
         legends1=['Gas', 'Liquid'])
sim.plot(ax1=ax3, xname='J',
         title='anCL',
         ynames1=["cell.anCL.subregions[1, 1, 1].gas.H2O.I[1]",
                  "cell.anCL.subregions[1, 1, 1].liquid.H2O.I[1]",
                  "cell.anCL.subregions[1, 1, 1].ionomer.H2O.I[1]"],
         yunit1='A', xlabel="", ylabel1="",
         leg1_kwargs=dict(loc='right'),
         legends1=['Gas', 'Liquid', 'Absorbed'])
sim.plot(ax1=ax4, xname='J',
         title='caCL',
         ynames1=["cell.caCL.subregions[1, 1, 1].gas.H2O.I[1]",
                  "cell.caCL.subregions[1, 1, 1].liquid.H2O.I[1]",
                  "cell.caCL.subregions[1, 1, 1].ionomer.H2O.I[1]"],
         yunit1='A', 
         leg1_kwargs=dict(loc='upper left'),
         legends1=['Gas', 'Liquid', 'Absorbed'])
sim.plot(ax1=ax5, xname='J',
         title='caGDL',
         ynames1=["cell.caGDL.subregions[1, 1, 1].gas.H2O.I[1]",
                  "cell.caGDL.subregions[1, 1, 1].liquid.H2O.I[1]"],
         yunit1='A', ylabel1="",
         legends1=['Gas', 'Liquid'])
sim.plot(ax1=ax6, xname='J',
         title='caFP',
         ynames1=["cell.caFP.subregions[1, 1, 1].gas.H2O.I[1]",
                  "cell.caFP.subregions[1, 1, 1].liquid.H2O.I[1]"],
         yunit1='A', ylabel1="",
         leg1_kwargs=dict(loc='upper left'),
         legends1=['Gas', 'Liquid'])
ax4.set_xlim(xmax=2.1)
ax5.set_xlim(xmax=2.1)
ax6.set_xlim(xmax=2.1)
save()
plt.close()

# Plot
f, ((ax1, ax2, ax3), (ax4, ax5, ax6)) = plt.subplots(2, 3, sharex='col', sharey='row')
f.set_label('bad-GasTransport')
sim.plot(ax1=ax1, xname='J',
         title='anFP',
         ynames1=["cell.anFP.subregions[1, 1, 1].gas.H2.I[1]"],
         yunit1='A', xlabel="",
         leg1_kwargs=dict(loc='upper left'),
         ylabel1="Current",
         legends1=['$H_2$'])
sim.plot(ax1=ax2, xname='J',
         title='Transport of $H_2$, $N_2$, and $O_2$ through the Cell\nanGDL',
         ynames1=["cell.anGDL.subregions[1, 1, 1].gas.H2.I[1]"],
         yunit1='A', xlabel="", ylabel1="",
         leg1_kwargs=dict(loc='upper left'),
         legends1=['$H_2$'])
sim.plot(ax1=ax3, xname='J',
         title='anCL',
         ynames1=["cell.anCL.subregions[1, 1, 1].gas.H2.I[1]"],
         yunit1='A', xlabel="", ylabel1="",
         leg1_kwargs=dict(loc='upper left'),
         legends1=['$H_2$'])
sim.plot(ax1=ax4, xname='J',
         title='caCL',
         ynames1=["cell.caCL.subregions[1, 1, 1].gas.N2.I[1]",
                  "cell.caCL.subregions[1, 1, 1].gas.O2.I[1]"],
         yunit1='A', 
         legends1=['$N_2$', '$O_2$'])
sim.plot(ax1=ax5, xname='J',
         title='caGDL',
         ynames1=["cell.caGDL.subregions[1, 1, 1].gas.N2.I[1]",
                  "cell.caGDL.subregions[1, 1, 1].gas.O2.I[1]"],
         yunit1='A', ylabel1="",
         legends1=['$N_2$', '$O_2$'])
sim.plot(ax1=ax6, xname='J',
         title='caFP',
         ynames1=["cell.caFP.subregions[1, 1, 1].gas.N2.I[1]",
                  "cell.caFP.subregions[1, 1, 1].gas.O2.I[1]"],
         yunit1='A', ylabel1="",
         legends1=['$N_2$', '$O_2$'])
ax4.set_xlim(xmax=2.1)
ax5.set_xlim(xmax=2.1)
ax6.set_xlim(xmax=2.1)
save()
plt.close()

# Plot
sim.plot(label='PotentialLosses', xname='J', ylabel1="Potential difference",
         title="Potential Losses\nBaseline Conditions",
         ynames1=["Deltaw_an", "Deltaw_ca", "'Deltaw_e-'", "'Deltaw_H+'",          
                  "Deltaw_H2", "Deltaw_O2", "Deltaw_H2O"],
         legends1=["Anode overpotential",
                   "Cathode overpotential",
                   "Electronic conduction",
                   "Protonic conduction",
                   "$H_2$ transport (inlet to HOR)",
                   "$O_2$ transport (inlet to ORR)",
                   "$H_2O$ transport (ORR to outlet)"], 
         leg1_kwargs=dict(loc='upper center', ncol=2))
plt.xlim(xmax=Jmax)
plt.ylim(-0.02, 0.7)
save()
plt.close()

# Plot
J = sim.get_values('J', f=Apercm2)
plot([sim.get_values("cell.anFP.subregions[1, 1, 1].graphite.'e-'.Deltag[1]", f=V),    
      sim.get_values("cell.anGDL.subregions[1, 1, 1].graphite.'e-'.Deltag[1]", f=V),     
      sim.get_values("cell.anCL.subregions[1, 1, 1].graphite.'e-'.g", f=V) 
      - sim.get_values("cell.anCL.subregions[1, 1, 1].graphite.'e-'.g_boundaries[1, 1]", f=V) 
      + sim.get_values("cell.anCL.subregions[1, 1, 1].ionomer.'H+'.g", f=V) 
      - sim.get_values("cell.anCL.subregions[1, 1, 1].ionomer.'H+'.g_boundaries[1, 2]", f=V), 
      -sim.get_values("cell.PEM.subregions[1, 1, 1].ionomer.'H+'.Deltag[1]", f=V),
      sim.get_values("cell.caCL.subregions[1, 1, 1].ionomer.'H+'.g_boundaries[1, 1]", f=V) 
      - sim.get_values("cell.caCL.subregions[1, 1, 1].ionomer.'H+'.g", f=V) 
      + sim.get_values("cell.caCL.subregions[1, 1, 1].graphite.'e-'.g_boundaries[1, 2]", f=V) 
      - sim.get_values("cell.caCL.subregions[1, 1, 1].graphite.'e-'.g", f=V), 
      sim.get_values("cell.caGDL.subregions[1, 1, 1].graphite.'e-'.Deltag[1]", f=V),
      sim.get_values("cell.caFP.subregions[1, 1, 1].graphite.'e-'.Deltag[1]", f=V)], J)
plt.title("Ohmic Losses of the Layers\nBaseline Conditions")
plt.xlabel(label_number("Current density", "A/cm2"))
plt.ylabel(label_number("Potential difference", "V"))
plt.xlim(xmax=Jmax)
plt.ylim(ymin=-0.01)
plt.legend(["anFP", "anCL", "anGDL", "PEM", "caCL", "caGDL", "caFP"], 
           loc='upper left')
plt.savefig('ElectricalLosses.pdf')
plt.close()

# Energy Sankey
#
# Settings
get = sim.get_values_at_times
def get_values(time):
    values = []
    negV = lambda x: -V(x)
    values.append(get("w", f=negV, times=time)*get("zI", f=A, times=time))
    values.append(get("cell.caFP.xPositive[1, 1].graphite.'C+'.Qdot", f=W, times=time))
    values.append(get("cell.anFP.subregions[1, 1, 1].gas.H2O.Hprimedot[2, 1]", f=W, times=time) 
                + get("cell.anFP.subregions[1, 1, 1].gas.H2O.Hprimedot[2, 2]", f=W, times=time))
    values.append(get("cell.anFP.xNegative[1, 1].graphite.'C+'.Qdot", f=W, times=[time]))
    values.append(get("cell.caFP.subregions[1, 1, 1].gas.H2O.Hprimedot[2, 1]", f=W, times=time) 
                + get("cell.caFP.subregions[1, 1, 1].gas.H2O.Hprimedot[2, 2]", f=W, times=time))
    values.append(get("cell.caFP.subregions[1, 1, 1].gas.N2.Hprimedot[2, 1]", f=W, times=time) 
                + get("cell.caFP.subregions[1, 1, 1].gas.N2.Hprimedot[2, 2]", f=W, times=time))
    values.append(get("cell.caFP.subregions[1, 1, 1].liquid.H2O.Hprimedot[2, 1]", f=W, times=time) 
                + get("cell.caFP.subregions[1, 1, 1].liquid.H2O.Hprimedot[2, 2]", f=W, times=time))
    values.append(get("cell.anFP.subregions[1, 1, 1].liquid.H2O.Hprimedot[2, 1]", f=W, times=time) 
                + get("cell.anFP.subregions[1, 1, 1].liquid.H2O.Hprimedot[2, 2]", f=W, times=time))
    values.append(get("cell.anFP.subregions[1, 1, 1].gas.H2.Hprimedot[2, 1]", f=W, times=time) 
                + get("cell.anFP.subregions[1, 1, 1].gas.H2.Hprimedot[2, 2]", f=W, times=time))
    values.append(get("cell.caFP.subregions[1, 1, 1].gas.O2.Hprimedot[2, 1]", f=W, times=time) 
                + get("cell.caFP.subregions[1, 1, 1].gas.O2.Hprimedot[2, 2]", f=W, times=time))
    return values
labels=["", 
        "ca", 
        "$H_2O_g$ an", 
        "an", 
        "$H_2O_g$ ca", 
        "$N_2$ ca", 
        "$H_2O_l$ ca", 
        "$H_2O_l$ an", 
        "$H_2$ an", 
        "$O_2$ ca"]
colors = ['g', 'r', 'b', 'r', 'b', 'b', 'b', 'b', 'b', 'b']
orientations = [0, -1, 1, 1, -1, -1, -1, 1, 1, -1]
left = rcParams['figure.subplot.left']
right = rcParams['figure.subplot.right']
bottom = rcParams['figure.subplot.bottom']
rcParams['figure.subplot.left'] = 0.02
rcParams['figure.subplot.right'] = 0.98
rcParams['figure.subplot.bottom'] = 0.02
time = 18180
#
# Set up.
fig = figure('Energy')
ax = fig.add_subplot(1, 1, 1, xticks=[], yticks=[],
                     title="Energy Balance\nBaseline Conditions @ %g $A/cm^2$"
                     % sim.get_values_at_times('J_Apercm2', times=time))
#
# Create the Sankey diagram.
[sankey] = Sankey(ax=ax, patchlabel="PEMFC",
                  scale=0.002, trunklength=0.5, format='%.1f', unit='W', 
                  flows=get_values(time),
                  labels=labels,
                  orientations=orientations).finish()
for t, color in zip(sankey.texts, colors):
    t.set_color(color)
#
# Add the key.
texts = [('Key:', 'k'), 
         ('Thermal cond.', 'r'),
         ('Fluid', 'b'),
         ('Electrical', 'g')]
box = VPacker(children=[TextArea(t, textprops=dict(color=c)) for t, c in texts],
              align="left",
              pad=0, sep=6)
anchored_box = AnchoredOffsetbox(loc=2, child=box, pad=0.8, frameon=True,
                                 bbox_to_anchor=(0.006, 0.99),
                                 bbox_transform=ax.transAxes)
ax.add_artist(anchored_box)
#
# Annotate.
x = list(plt.xlim())
x = [x[0] - 0.2, x[1] - 0.2]
plt.xlim(x)
x = [x[0] + 0.1, x[0] + 0.5]
plt.plot(x, [0, 0], 'k:')
plt.text(sum(x)/2, 0.03, "Anode", ha="center", va="bottom")
plt.text(sum(x)/2, -0.03, "Cathode", ha="center", va="top")
#
# Finish.
save()
plt.close()

# Water Sankey
#
# Settings
get = sim.get_values_at_times
def get_values(time):
    values = []
    negV = lambda x: -V(x)
    values.append(get("cell.caCL.subregions[1, 1, 1].liquid.chemH2O[1].Ndot", f=A, times=time))
    values.append(get("cell.anFP.subregions[1, 1, 1].gas.H2O.boundaries[2, 1].Ndot", f=A, times=time) 
                + get("cell.anFP.subregions[1, 1, 1].gas.H2O.boundaries[2, 2].Ndot", f=A, times=time))
    values.append(get("cell.caFP.subregions[1, 1, 1].gas.H2O.boundaries[2, 1].Ndot", f=A, times=time) 
                + get("cell.caFP.subregions[1, 1, 1].gas.H2O.boundaries[2, 2].Ndot", f=A, times=time))
    values.append(get("cell.anFP.subregions[1, 1, 1].liquid.H2O.boundaries[2, 1].Ndot", f=A, times=time) 
                + get("cell.anFP.subregions[1, 1, 1].liquid.H2O.boundaries[2, 2].Ndot", f=A, times=time))
    values.append(get("cell.caFP.subregions[1, 1, 1].liquid.H2O.boundaries[2, 1].Ndot", f=A, times=time) 
                + get("cell.caFP.subregions[1, 1, 1].liquid.H2O.boundaries[2, 2].Ndot", f=A, times=time))
    return values
labels=["Generation", 
        "$H_2O_g$ an",
        "$H_2O_g$ ca", 
        "$H_2O_l$ an",  
        "$H_2O_l$ ca"]
orientations = [0, 1, -1, 1, -1]
time = 18180
#
# Set up.
fig = figure('Water')
ax = fig.add_subplot(1, 1, 1, xticks=[], yticks=[],
                     title="Water Balance\nBaseline Conditions @ %g $A/cm^2$"
                     % sim.get_values_at_times('J_Apercm2', times=time))
#
# Create the Sankey diagram.
Sankey(ax=ax, patchlabel="PEMFC", gap=0.2, offset=0.06,
       scale=0.005, trunklength=0.5, format='%.1f', unit='A', pathlengths=0.15,
       flows=get_values(time),
       labels=labels,
       orientations=orientations).finish()
#
# Finish.
save()
plt.close()

rcParams['figure.subplot.left'] = left
rcParams['figure.subplot.right'] = right
rcParams['figure.subplot.bottom'] = bottom

# Extract some information
f = open("info.txt", 'w')
f.write("Capillary pressure is %g %s in the anGDL.\n" % (sim.get_IV('cell.anGDL.subregions[1, 1, 1].volume.capillary.Deltap', f=kPa), 'kPa'))
f.write("Capillary pressure is %g %s in the anCL.\n" % (sim.get_IV('cell.anCL.subregions[1, 1, 1].volume.capillary.Deltap', f=kPa), 'kPa'))
f.close()
