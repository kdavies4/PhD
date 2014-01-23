#!/usr/bin/python
"""Set up and run simulations in Dymola.
"""
__author__ = "Kevin Davies"
__version__ = "2013-7-2"

import os

from modelicares.base import flatten_dict
from fcres import gen_experiments, write_script, doe, ParamDict

# Settings
# Begin customize--------------------------------------------------------------

# Name of the Modelica script (may include the path)
fname = 'sim.mos'

# Working directory
working_dir = '~/Documents/Modelica'

# List of Modelica packages that should be preloaded (besides the Modelica
# Standard Library)
# Each may be a *.mo file or a path where a package.mo file resides, e.g.,
# "/opt/dymola/Modelica/Library/VehicleInterfaces 1.1.1".
packages = ['FCSys/FCSys']

if False: # Don't regenerate the script.
    # List or generator of simulations to run
    # Air:
    experiments1 = gen_experiments(
                     ['FCSys.Figures.TestStand'],
                     params=dict(n_O2=[None], # 0.21
                                 caStoich=[None, 1.5, 2.5], # 2.0
                                 anStoich=[None, 1.1, 2], # 1.5
                                 caInletRH=[None, 0.3, 0.7], # 0.5
                                 anInletRH=[None, 0.6, 1], # 0.8
                                 p_kPag=[None, 0, 202.7], # 48.3
                                 T_degC=[None, 40, 80]), # 60
                     args=dict(stopTime=[210]),
                     design=doe.ofat)
    # O2:
    experiments2 = gen_experiments(
                     ['FCSys.Figures.TestStand'],
                     params=dict(n_O2=[1],
                                 caStoich=[9.569, 7.177, 11.962]),
                     args=dict(stopTime=[210]),
                     design=doe.ofat)
    # All (must expand the generators into lists; can't chain them for some reason):
    experiments = [e for e in experiments1] + [e for e in experiments2]

    # Save a list for convenience.
    f = open("simlist.txt", 'w')
    for i, (model, params, args) in enumerate(experiments):
        f.write("Simulation %i: %s%s \n"
                % (i + 1, model.split('.')[-1], ParamDict(flatten_dict(params))))
    f.close()

# End customize----------------------------------------------------------------

    # Create the script to load the packages, simulate, and save the results.
    write_script(experiments, working_dir=working_dir, packages=packages,
                 fname=fname)

# Ask Dymola to run the script.
os.system('dymola ' + fname) # For Linux
# TODO: Add support for Windows.
#os.system(r'C:\Program files\Dymola\bin\Dymola.exe ' + fname) # For Windows
