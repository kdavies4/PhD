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
from modelicares import save, label_quantity
from fcres import SimRes, annotate_conditions, multiplot
sys.path.append('../../HNEI/00-Common')
from hneires import Results

# Specify the baseline conditions.
conditions = dict(T = (60, 'degC'),
                  p = (48.3, 'kPag'),
                  n_O2 = (21, '%'),
                  anInletRH = (80, '%'),
                  caInletRH = (50, '%'),
                  anStoich = (1.5, '1'),
                  caStoich = (2.0, '1'))

## Settings ---------

variable = 'environment.T' # Varied parameter
unit = 'degC' # Display unit for the varied parameter
baseline = 1 # Index of the baseline simulation (after sorting)
colors = ['b', 'g', 'r', 'c', 'm', 'y', 'k']
markers = ['o', 'v', '^', '<', '>', 's', 'p', '*', 'h', 'H' , 'D', 'd']
dashes = [(None, None), (3, 3), (1, 1), (3, 2, 1, 2)]


## Model ---------

# Load the results.
sim = SimRes('1.mat')

# Plot
sim.plot(xname='J', ynames1=['w'], label='Polarization',
         title = 'Cell Polarization: Baseline Conditions\n'
                 + annotate_conditions(conditions), color='k',
         legends1=['Model'], leg1_kwargs=dict(loc='upper right'))


## HNEI ---------

# Load the results.
runs = map(Results, ['090716-I111-Baseline1.csv',
                     '090716-I111-Baseline2.csv',
                     '090717-I111-Baseline3.csv',
                     '090718-I111-Baseline4.csv',
                     '090718-I111-Baseline5.csv',
                     '090719-I111-Baseline6.csv',
                     '090721-I111-Baseline-Kinetic.csv'])


for i, (run, color, marker, dashes) in enumerate(zip(runs, cycle(colors), 
                                             cycle(markers), cycle(dashes))):
    J_Apercm2 = run.get_step_values('current_density')/1000
    w_V = run.get_step_values('data_cell_001V')
    plt.plot(J_Apercm2, w_V,
             color=color, marker=marker, dashes=dashes, 
             label='Experiment #%i' % (i+1))
    f = open('%i.mos' % (i + 1), 'w')
    f.write('plotArray({%s}, {%s}, color={255, 0, 0}, marker=MarkerStyle.Cross);\n' 
             % (', '.join(map(str, J_Apercm2)), 
                ', '.join(map(str, w_V))))
    f.close()
plt.legend()
plt.xlim(xmax=2.25)
plt.ylim(ymax=1.2)
save()



