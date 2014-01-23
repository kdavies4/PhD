#!/usr/bin/python
"""Read data from a Dymola simulation log file.
"""
__author__ = "Kevin Davies"


import os, re, sys
import matplotlib.pyplot as plt

from glob import glob
sys.path.append('../../' + 'Figures/Master/utilities')
from readlog import read_entry


## Settings
tex_file = 'statistics.tex'


## Procedure
def read_sizes(log, key):
    """Read and process the sizes of the systems of equations.
    """
    sizes = read_entry(log, key, re_target=' *: *{(.*)}')
    if sizes == 0:
        return 'None'
    try:
       sizes = sizes.replace(' ', '')
       sizes = sizes.split(',')
    except AttributeError:
       return str(sizes)
    sizes = [size for size in sizes if size <> '0' and size <> '']
    if len(sizes) == 0:
        return 'None'
    else:
        if len(set(sizes)) == 1 and len(sizes) > 1:
            return "%i sets of %s" % (len(sizes), sizes[0])
        else:
            sizes.sort(reverse=True)
            return ', '.join(sizes)

template = r"""\begin{contextbox}
  Modeling and simulation statistics:
  \begin{itemize}
    \item Number of variables: %s
    \item Number of time-varying variables: %s
    \item Number of states: %s
    \item Sizes of the nonlinear systems of equations: %s
    \item Sizes of the linear systems of equations: %s
    \item Translation time: \SI{%s}{s}
    \item Simulation time: \SI{%s}{s}
  \end{itemize}
\end{contextbox}"""

#template = r"""\vspace{2.7ex}
#\begin{minipage}{\linewidth}
#Modeling and simulation statistics:
#\begin{singlespaced}
#  \begin{tabular}{lll}
#    \toprule 
#    Number of variables & %s \\
#    Number of time-varying variables & %s \\
#    Number of states & %s \\
#    Sizes of the nonlinear systems of equations & %s \\
#    Sizes of the linear systems of equations & %s \\
#    Translation time & \SI{%s}{s} \\
#    Simulation time & \SI{%s}{s} \\
#    \bottomrule
#  \end{tabular}
#\end{singlespaced}
#\end{minipage}"""

for log in glob('*/*/dymolalg.txt'):
    print("Processing %s..." % log)

    try:
        # Read the data.
        dirname = os.path.dirname(log)
        d = {'Variables': read_entry(log, 'Variables')}
        d['Time-varying variables'] = read_entry(log, 'Time-varying variables')
        try: 
            d['Continuous time states'] = read_entry(log, 'Continuous time states')
        except AttributeError:
            d['Continuous time states'] = 0
        d['Translation time'] = read_entry(os.path.join(dirname, 'translg.txt'),
                                           'Translation time')
        d['CPU-time for integration'] = read_entry(os.path.join(dirname, 'dslog.txt'),
                                                   'CPU-time for integration')
        key = 'Sizes after manipulation of the linear systems'
        d[key] = read_sizes(log, key)
        key = 'Sizes after manipulation of the nonlinear systems'
        d[key] = read_sizes(log, key)

        # Write the table.
        f = open(os.path.join(dirname, tex_file), 'w')
        f.write(template % (d['Variables'],
                            d['Time-varying variables'],
                            d['Continuous time states'],
                            d['Sizes after manipulation of the nonlinear systems'],
                            d['Sizes after manipulation of the linear systems'],
                            d['Translation time'],
                            d['CPU-time for integration']))
        f.close()
    except AttributeError, IOError:
        try:
            os.remove(os.path.join(dirname, tex_file))
        except OSError:
            pass
