#!/usr/bin/python
"""Plot polarization curves from the FCSys model and HNEI.
"""
__author__ = "Kevin L. Davies"
__version__ = "2013/12/13"
__email__ = "kld@alumni.carnegiemellon.edu"

import matplotlib.pyplot as plt

from glob import glob
from modelicares import save, label_number, figure
from fcres import SimRes, multiplot

# Load the results.
sims = map(SimRes, glob('*/*.mat'))
sim = sims[0]

# Create some unit conversion functions.
V = sim.to_unit('V')
A = sim.to_unit('A')
Apercm2 = sim.to_unit('A/cm2')
Pa = sim.to_unit('Pa')
kPa = sim.to_unit('kPa')
kPag = sim.to_unit('kPag')
W = sim.to_unit('W')

# Plot
multiplot(sims, xname='J', ynames1=['w'], label='Polarization',
          title="Cell Potential under Sinuosoidal Load\n", incl_prefix=False,
          legends1=[''], use_paren=False, leg1_kwargs=dict(loc='upper right'))
plt.annotate
plt.gca().legend().set_visible(False)
plt.annotate("Start", xy=(0.08, 1.2), xycoords="data",
             xytext=(0.1, 1.3), 
             va="top", ha="center",
             bbox=dict(boxstyle="round", fc="w"),
             arrowprops=dict(arrowstyle="->"))
plt.ylim(0.7, 1.5)
plt.grid()
save()

# Plot
sim = sims[0]
sim.plot(label='Temperature', 
         title="Temperature throughout the Cell\nBaseline Conditions, Sinuosoidal Load",
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
         leg1_kwargs=dict(ncol=3, loc='upper center'), yunit1='degC')
plt.ylim(59.85, 60.6)
plt.xlim(xmax=9)
save()
plt.close()

# Plot
sim.plot(label='Load', 
         title="Sinuosoidal Load",
         ynames1=["J"],
         legends1=[""],
         yunit1='A/cm2')
plt.xlim(xmax=9)
save()
plt.close()

# Plot
sim.plot(label='PressureGas', 
         title="Gas Pressure throughout the Cell\nBaseline Conditions, Sinuosoidal Load",
         ynames1=["cell.anFP.subregions[1, 1, 1].gas.p",
                  "cell.anGDL.subregions[1, 1, 1].gas.p",
                  "cell.anCL.subregions[1, 1, 1].gas.p",
                  "cell.caCL.subregions[1, 1, 1].gas.p",
                  "cell.caGDL.subregions[1, 1, 1].gas.p",
                  "cell.caFP.subregions[1, 1, 1].gas.p"], yunit1='kPag',
         ylabel1='Pressure', leg1_kwargs=dict(loc='right', ncol=2),
         legends1=["anFP",
                   "anGDL",
                   "anCL",
                   "caCL",
                   "caGDL",
                   "caFP"])
plt.xlim(xmax=9)
save()
plt.close()

# Plot
sim.plot(label='PressureH2', 
         title='$H_2$ Pressure from the Inlet to the HOR\nBaseline Conditions, Sinuosoidal Load',
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
plt.xlim(xmax=9)
save()
plt.close()

# Plot
sim.plot(label='PressureO2', 
         title='$O_2$ Pressure from the Inlet to the ORR\nBaseline Conditions, Sinuosoidal Load',
         ynames1=["cell.caFP.subregions[1, 1, 1].gas.O2.boundaries[2, 1].p",
                  "cell.caFP.subregions[1, 1, 1].gas.O2.p",
                  "cell.caGDL.subregions[1, 1, 1].gas.O2.boundaries[1, 1].p",
                  "cell.caGDL.subregions[1, 1, 1].gas.O2.p",
                  "cell.caCL.subregions[1, 1, 1].gas.O2.boundaries[1, 1].p",
                  "cell.caCL.subregions[1, 1, 1].gas.O2.p"],  
         leg1_kwargs=dict(loc='lower left'),
         legends1=["Inlet", 
                   "caFP",
                   "caFP-caGDL interface",
                   "caGDL",
                   "caGDL-caCL interface",
                   "caCL/ORR"])
plt.xlim(xmax=9)
save()
plt.close()

# Plot
sim.plot(label='PressureH2O', 
         title='$H_2O$ Gas Pressure from the ORR to the Outlet\nBaseline Conditions, Sinuosoidal Load',
         ynames1=["cell.caFP.subregions[1, 1, 1].gas.H2O.boundaries[2, 2].p",
                  "cell.caFP.subregions[1, 1, 1].gas.H2O.p",
                  "cell.caGDL.subregions[1, 1, 1].gas.H2O.boundaries[1, 1].p",
                  "cell.caGDL.subregions[1, 1, 1].gas.H2O.p",
                  "cell.caCL.subregions[1, 1, 1].gas.H2O.boundaries[1, 1].p",
                  "cell.caCL.subregions[1, 1, 1].gas.H2O.p"][::-1],
         legends1=["Outlet", 
                   "caFP",
                   "caFP-caGDL interface",
                   "caGDL",
                   "caGDL-caCL interface",
                   "caCL/ORR"][::-1])
plt.xlim(xmax=9)
save()
plt.close()

# Plot
sim.plot(label='PoreSaturation', 
         title='Liquid Pore Saturation throughout the Cell\nBaseline Conditions, Sinuosoidal Load',
         ynames1=["cell.anFP.subregions[1, 1, 1].volume.x",
                  "cell.anGDL.subregions[1, 1, 1].volume.x",
                  "cell.anCL.subregions[1, 1, 1].volume.x",
                  "cell.caCL.subregions[1, 1, 1].volume.x",
                  "cell.caGDL.subregions[1, 1, 1].volume.x",
                  "cell.caFP.subregions[1, 1, 1].volume.x"], yunit1='%',
         leg1_kwargs=dict(loc='upper center', ncol=3),
         legends1=["anFP",
                   "anGDL",
                   "anCL",
                   "caCL",
                   "caGDL",
                   "caFP"])
plt.xlim(xmax=9)
plt.ylim(ymax=0.7)
save()
plt.close()

# Plot
sim.plot(label='Humidity',  
         title='Humidity throughout the Cell\nBaseline Conditions, Sinuosoidal Load',
         ynames1=["cell.anFP.subregions[1, 1, 1].gas.H2O.RH",
                  "cell.anGDL.subregions[1, 1, 1].gas.H2O.RH",
                  "cell.anCL.subregions[1, 1, 1].gas.H2O.RH",
                  "cell.caCL.subregions[1, 1, 1].gas.H2O.RH",
                  "cell.caGDL.subregions[1, 1, 1].gas.H2O.RH",
                  "cell.caFP.subregions[1, 1, 1].gas.H2O.RH"],
         ylabel1="Relative humidity", yunit1="%",
         leg1_kwargs=dict(loc='lower right'),
         legends1=["anFP",
                   "anGDL",
                   "anCL",
                   "caCL",
                   "caGDL",
                   "caFP"])
plt.xlim(xmax=9)
plt.ylim(ymin=82)
save()
plt.close()

# Plot
sim.plot(label='EvaporationRate',  
         title='Rates of Evaporation throughout the Cell\nBaseline Conditions, Sinuosoidal Load',
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
plt.ylim(ymax=30)
plt.xlim(xmax=9)
save()
plt.close()

# Plot
sim.plot(label='HydrationRate',  
         title='Rates of Hydration in the Catalyst Layers\nBaseline Conditions, Sinuosoidal Load',
         ynames1=["cell.anCL.subregions[1, 1, 1].ionomer.H2O.chemical[1].Ndot",
                  "cell.caCL.subregions[1, 1, 1].ionomer.H2O.chemical[1].Ndot"],
         ylabel1="Rate of hydration", yunit1="mA",
         leg1_kwargs=dict(loc='upper left'),
         legends1=["anCL",
                   "caCL"])
plt.xlim(xmax=9)
save()
plt.close()

# Plot
figure('ChannelPressureDrop')
plt.title("Gas Pressure Drop down the Channels\nBaseline Conditions, Sinuosoidal Load")
J = sim.get_values('J', f=Apercm2)
negkPa = lambda x: -kPa(x)
plt.plot(J, sim.get_values("cell.anFP.subregions[1, 1, 1].gas.H2O.Deltap[2]", f=negkPa) + sim.get_values("cell.anFP.subregions[1, 1, 1].gas.H2.Deltap[2]", f=negkPa) , label="Anode")
plt.plot(J, sim.get_values("cell.caFP.subregions[1, 1, 1].gas.H2O.Deltap[2]", f=negkPa) + sim.get_values("cell.caFP.subregions[1, 1, 1].gas.N2.Deltap[2]", f=negkPa) + sim.get_values("cell.caFP.subregions[1, 1, 1].gas.O2.Deltap[2]", f=negkPa), label="Cathode")
plt.xlabel(label_number("Current density", "A/cm2"))
plt.ylabel(label_number("Pressure difference", "kPa"))
plt.ylim(ymin=-0.1)
plt.legend(loc='upper left')
plt.xlim(xmax=9)
save()
plt.close()

# Plot
sim.plot(label='Hydration',  
         title='Hydration in the MEA\nBaseline Conditions, Sinuosoidal Load',
         ylabel1="Ratio of $H_2O$ molecules to $SO_3$ end-groups ($\lambda$)",
         ynames1=["cell.anCL.subregions[1, 1, 1].ionomer.H2O.lambda",
"cell.PEM.subregions[1, 1, 1].ionomer.H2O.lambda",
"cell.caCL.subregions[1, 1, 1].ionomer.H2O.lambda"],
         leg1_kwargs=dict(loc='upper center', ncol=3),
         legends1=["anCL", "PEM", "caCL"])
plt.xlim(xmax=9)
save()
plt.close()

# Plot
sim.plot(
         title='Transport of $H_2O$ through the PEM\n',
         ynames1=["cell.PEM.subregions[1, 1, 1].ionomer.H2O.I[1]"],
         yunit1='mA',
         ylabel1="Current",label='H2OTransportPEM',
         legends1=None)
plt.xlim(xmax=9)
save()
plt.close()

# Plot
f, ((ax1, ax2, ax3), (ax4, ax5, ax6)) = plt.subplots(2, 3, sharex='col', sharey='row')
f.set_label('H2OTransport')
sim.plot(ax1=ax1, 
         title='anFP',
         ynames1=["cell.anFP.subregions[1, 1, 1].gas.H2O.I[1]",
                  "cell.anFP.subregions[1, 1, 1].liquid.H2O.I[1]"],
         yunit1='A', xlabel="",
         ylabel1="Current",
         legends1=['Gas', 'Liquid'])
sim.plot(ax1=ax2, 
         title='Transport of Water through the Cell\nanGDL',
         ynames1=["cell.anGDL.subregions[1, 1, 1].gas.H2O.I[1]",
                  "cell.anGDL.subregions[1, 1, 1].liquid.H2O.I[1]"],
         yunit1='A', xlabel="", ylabel1="",
         legends1=['Gas', 'Liquid'])
sim.plot(ax1=ax3, 
         title='anCL',
         ynames1=["cell.anCL.subregions[1, 1, 1].gas.H2O.I[1]",
                  "cell.anCL.subregions[1, 1, 1].liquid.H2O.I[1]",
                  "cell.anCL.subregions[1, 1, 1].ionomer.H2O.I[1]"],
         yunit1='A', xlabel="", ylabel1="",
         leg1_kwargs=dict(loc='right'),
         legends1=['Gas', 'Liquid', 'Absorbed'])
sim.plot(ax1=ax4, 
         title='caCL',
         ynames1=["cell.caCL.subregions[1, 1, 1].gas.H2O.I[1]",
                  "cell.caCL.subregions[1, 1, 1].liquid.H2O.I[1]",
                  "cell.caCL.subregions[1, 1, 1].ionomer.H2O.I[1]"],
         yunit1='A', 
         legends1=['Gas', 'Liquid', 'Absorbed'])
sim.plot(ax1=ax5, 
         title='caGDL',
         ynames1=["cell.caGDL.subregions[1, 1, 1].gas.H2O.I[1]",
                  "cell.caGDL.subregions[1, 1, 1].liquid.H2O.I[1]"],
         yunit1='A', ylabel1="",
         legends1=['Gas', 'Liquid'])
sim.plot(ax1=ax6, 
         title='caFP',
         ynames1=["cell.caFP.subregions[1, 1, 1].gas.H2O.I[1]",
                  "cell.caFP.subregions[1, 1, 1].liquid.H2O.I[1]"],
         yunit1='A', ylabel1="",
         leg1_kwargs=dict(loc='upper left'),
         legends1=['Gas', 'Liquid'])
ax4.set_xlim(xmax=2.1)
ax5.set_xlim(xmax=2.1)
ax6.set_xlim(xmax=2.1)
plt.xlim(xmax=9)
save()
plt.close()

# Plot
sim.plot(label='PotentialLosses',  ylabel1="Potential difference",
         title="Potential Losses\nBaseline Conditions, Sinuosoidal Load",
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
plt.ylim(-0.02, 0.65)
plt.xlim(xmax=9)
save()
plt.close()

# Plot
figure('ElectricalLosses')
plt.title("Electrical Losses of the Layers\nBaseline Conditions, Sinuosoidal Load")
J = sim.get_values('J', f=Apercm2)
plt.plot(J, sim.get_values("cell.anFP.subregions[1, 1, 1].graphite.'e-'.Deltag[1]", f=V), label="anFP")
plt.plot(J, sim.get_values("cell.anGDL.subregions[1, 1, 1].graphite.'e-'.Deltag[1]", f=V), label="anGDL")
plt.plot(J, sim.get_values("cell.anCL.subregions[1, 1, 1].graphite.'e-'.g", f=V) - sim.get_values("cell.anCL.subregions[1, 1, 1].graphite.'e-'.g_boundaries[1, 1]", f=V) + sim.get_values("cell.anCL.subregions[1, 1, 1].ionomer.'H+'.g", f=V) - sim.get_values("cell.anCL.subregions[1, 1, 1].ionomer.'H+'.g_boundaries[1, 2]", f=V), label="anCL")
plt.plot(J, -sim.get_values("cell.PEM.subregions[1, 1, 1].ionomer.'H+'.Deltag[1]", f=V), label="PEM")
plt.plot(J, sim.get_values("cell.caCL.subregions[1, 1, 1].ionomer.'H+'.g_boundaries[1, 1]", f=V) - sim.get_values("cell.caCL.subregions[1, 1, 1].ionomer.'H+'.g", f=V) + sim.get_values("cell.caCL.subregions[1, 1, 1].graphite.'e-'.g_boundaries[1, 2]", f=V) - sim.get_values("cell.caCL.subregions[1, 1, 1].graphite.'e-'.g", f=V), label="caCL")
plt.plot(J, sim.get_values("cell.caFP.subregions[1, 1, 1].graphite.'e-'.Deltag[1]", f=V), label="caGDL")
plt.plot(J, sim.get_values("cell.caFP.subregions[1, 1, 1].graphite.'e-'.Deltag[1]", f=V), label="caFP")
plt.xlabel(label_number("Current density", "A/cm2"))
plt.ylabel(label_number("Potential difference", "V"))
plt.ylim(ymin=-0.01)
plt.legend(loc='upper left')
plt.xlim(xmax=9)
save()
plt.close()
