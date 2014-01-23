#!/usr/bin/python
"""Read data from a Dymola simulation log file.
"""
__author__ = "Kevin Davies"


import os, re, sys
import matplotlib.pyplot as plt

from modelicares import figure, saveall
sys.path.append('../'*4 + 'Figures/Master/utilities')
from readlog import read_entry

## Settings
tex_file = 'statistics2.tex'


## Procedure

# Start the table.
f = open(tex_file, 'w')
f.write(r"""\begin{tabular}{cccccccc}
  \toprule
  \textbf{Number of}  & \textbf{Number of} & \textbf{Number of time-} & \textbf{Number of} & \textbf{Number of} & \textbf{Size of largest} & \textbf{Translation} & \textbf{Simulation} \\
  \textbf{segments} & \textbf{variables} & \textbf{varying variables} & \textbf{states} & \textbf{linear systems} & \textbf{linear system} & \textbf{time / s} & \textbf{time / s} \\
  \midrule
""")

# Read and write the data.
#folders = glob('*/')
folders = []
i = 1
while os.path.isdir(str(i)): # Not using glob so that the list is in order
    folders.append(str(i))
    i += 1
template = '  %s & %s & %s & %s & %s & %s & %s & %s \\\\\n'
alldata = []
for folder in folders:
    try:
        dymolalg = os.path.join(folder, 'dymolalg.txt')
        sizes = read_entry(dymolalg,
                           'Sizes after manipulation of the linear systems',
                           re_target=' *: *{(.*)}').split(', ')
        sizes = [size for size in sizes if size <> '0']
    except IOError:
        continue
    try:
        t_trans = read_entry(os.path.join(folder, 'translg.txt'),
                             'Translation time')
    except IOError:
        t_trans = "**"
    t_sim = read_entry(os.path.join(folder, 'dslog.txt'),
                       'CPU-time for integration')
    d = {'Number of segments': folder,
         'Variables': read_entry(dymolalg, 'Variables'),
         'Time-varying variables': read_entry(dymolalg, 'Time-varying variables'),
         'Continuous time states': read_entry(dymolalg, 'Continuous time states'),
         'Number of linear systems': len(sizes),
         'Max size of linear systems': max(sizes),
         'Translation time': t_trans,
         'CPU-time for integration': read_entry(os.path.join(folder, 'dslog.txt'),
                                                'CPU-time for integration')}
    f.write(template % (d['Number of segments'],
                        d['Variables'],
                        d['Time-varying variables'],
                        d['Continuous time states'],
                        d['Number of linear systems'],
                        d['Max size of linear systems'],
                        d['Translation time'],
                        d['CPU-time for integration']))
    alldata.append(d)

# Finish the table.
f.write(r"""  \bottomrule
\end{tabular}""")
f.close()

exit()

# Slice the data.
labels = [d['Simulation'] for d in alldata]
variables = [d['Variables'] for d in alldata]
varying_variables = [d['Time-varying variables'] for d in alldata]
states = [d['Continuous time states'] for d in alldata]
translation_time = [d['Translation time'] for d in alldata]
simulation_time = [d['CPU-time for integration'] for d in alldata]
sizes = [sum(float(s)**3
         for s in d['Sizes after manipulation of the linear systems'].split(', '))
         for d in alldata]

# Plot 1
figure('VariablesTranslation')
plt.scatter(variables, translation_time)
for label, x, y in zip(labels, variables, translation_time):
    plt.annotate(label, xy = (x, y), xytext = (4, 4),
                 textcoords='offset points', ha='left', va='bottom')
plt.title('Translation Time vs. Number of Variables\n')
plt.xlabel('Number of variables')
plt.ylabel('Time for Translation / s')

# Plot 2
figure('Variables')
plt.scatter(variables, simulation_time)
for label, x, y in zip(labels, variables, simulation_time):
    plt.annotate(label, xy = (x, y), xytext = (4, 4),
                 textcoords='offset points', ha='left', va='bottom')
plt.title('CPU-time for Integration vs. Number of Variables\n')
plt.xlabel('Number of variables')
plt.ylabel('CPU-time for integration / s')

# Plot 3
figure('VaryingVariables')
plt.scatter(varying_variables, simulation_time)
for label, x, y in zip(labels, varying_variables, simulation_time):
    plt.annotate(label, xy = (x, y), xytext = (4, 4),
                 textcoords='offset points', ha='left', va='bottom')
plt.title('CPU-time for Integration vs. Number of Time-Varying Variables\n')
plt.xlabel('Number of time-varying variables')
plt.ylabel('CPU-time for integration / s')

# Plot 4
figure('States')
plt.scatter(states, simulation_time)
for label, x, y in zip(labels, states, simulation_time):
    plt.annotate(label, xy = (x, y), xytext = (4, 4),
                 textcoords='offset points', ha='left', va='bottom')
plt.title('CPU-time for Integration vs. Number of States\n')
plt.xlabel('Number of states')
plt.ylabel('CPU-time for integration / s')

# Plot 4
figure('Sizes')
plt.scatter(states, sizes)
for label, x, y in zip(labels, states, sizes):
    plt.annotate(label, xy = (x, y), xytext = (4, 4),
                 textcoords='offset points', ha='left', va='bottom')
plt.title('CPU-time for Integration vs. Sum of Cubes of the Sizes of Linear Systems\n')
plt.xlabel('Sum of cubes of sizes of linear systems')
plt.ylabel('CPU-time for integration / s')

# Finish.
saveall()
