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

baseline = 1 # Index of the baseline simulation (after sorting)
colors = ['b', 'g', 'r', 'c', 'm', 'y', 'k']
markers = ['o', 'v', '^', '<', '>', 's', 'p', '*', 'h', 'H' , 'D', 'd']
dashes = [(None, None), (3, 3), (1, 1), (3, 2, 1, 2)]


## Model ---------

# Load and sort the results.
sims = map(SimRes, glob('*.mat'))
vals = [sim.get_FV('testConditions.I_ca')/sim.get_FV('zI') for sim in sims]
vals, sims = zip(*sorted(zip(vals, sims)))
comps = ['$O_2$' if sim.get_IV('environment.psi_O2_dry')==1.0 else 'air' for sim in sims]

# Plot
labels = [label_quantity(val, 'stoich', '%.1f') + ' ' + comp for val, comp in zip(vals, comps)]
labels[baseline] += " (baseline)"
multiplot(sims, xname='J', ynames1=['w'], label='Polarization',
          title = 'Cell Polarization: Varying Cathode Flow Conditions\n'
                  + annotate_conditions(conditions, flow=False, composition=False)
                  + ', 1.5|x$\,$stoich, $H_2$|x',
          legends1=[''], suffixes=['Model @ ' + label for label in labels], 
          use_paren=False, leg1_kwargs=dict(loc='upper right'))


## HNEI ---------

# Load the results.
runs = map(Results, ['090718-I111-1.5-Stoich-Air.csv',
                     '090718-I111-Baseline4.csv',
                     '090718-I111-2.5-Stoich-Air.csv',
                     '090718-I111-7.177-Stoich-O2.csv',
                     '090718-I111-9.569-Stoich-O2.csv',
                     '090718-I111-11.962-Stoich-O2.csv'])

for run, label, color, marker, dashes in zip(runs, labels, cycle(colors), 
                                             cycle(markers), cycle(dashes)):
    J_Apercm2 = run.get_step_values('current_density')/1000
    w_V = run.get_step_values('data_cell_001V')
    plt.plot(J_Apercm2, w_V,
             color=color, marker=marker, dashes=dashes, 
             label='Experiment @ ' + label)
    label = label.replace('$', '').replace('\\,', ' ').replace('_', '')
    f = open(label + '.mos', 'w')
    f.write('plotArray({%s}, {%s}, color={255, 0, 0}, marker=MarkerStyle.Cross);\n' % (', '.join(map(str, J_Apercm2)), 
                                         ', '.join(map(str, w_V))))
    f.close()
plt.legend()
plt.xlim(xmax=2.25)
plt.ylim(ymax=1.2)
save()
