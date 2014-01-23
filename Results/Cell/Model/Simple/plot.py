#!/usr/bin/python
"""Plot polarization curves from the FCSys model and HNEI.
"""
__author__ = "Kevin L. Davies"
__version__ = "2013/12/13"
__email__ = "kld@alumni.carnegiemellon.edu"

import matplotlib.pyplot as plt

from glob import glob
from modelicares import save
from fcres import SimRes, multiplot

# Load the results.
sims = map(SimRes, glob('*/*.mat'))[0:2]

# Plot
multiplot(sims, xname='J', ynames1=['w'], label='Polarization',
          title="""Cell Polarization: Standard and Simplified Model
Baseline Conditions""", incl_prefix=False, suffixes=['Standard', 'Simplified'],
          legends1=[''], use_paren=False, leg1_kwargs=dict(loc='upper right'))
plt.xlim(xmax=2.25)
plt.ylim(ymax=1.2)
save()

# Plot
sims[1].plot(label='Humidity',  xname='J',
         title='Humidity throughout the Cell\nSimplified Model, Baseline Conditions',
         ynames1=["cell.anFP.subregions[1, 1, 1].gas.H2O.RH",
                  "cell.anCGDL.subregions[1, 1, 1].gas.H2O.RH",
                  "cell.caCGDL.subregions[1, 1, 1].gas.H2O.RH",
                  "cell.caFP.subregions[1, 1, 1].gas.H2O.RH"],
         ylabel1="Relative humidity", yunit1="%",
         leg1_kwargs=dict(loc='lower right'),
         legends1=["anFP",
                   "anCGDL",
                   "caCGDL",
                   "caFP"])
plt.xlim(xmax=2.25)
save()
plt.close()
