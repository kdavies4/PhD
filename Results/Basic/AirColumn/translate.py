#!/usr/bin/python
"""Time the translation of models in Dymola.
"""
__author__ = "Kevin Davies"
__version__ = "2013-7-2"

import os

from fcres import gen_experiments, write_script

# Settings
# Begin customize--------------------------------------------------------------

# Name of the Modelica script (may include the path)
fname = 'translate.mos'

# Working directory
working_dir = '~/Documents/Modelica'

# List of Modelica packages that should be preloaded (besides the Modelica
# Standard Library)
# Each may be a *.mo file or a path where a package.mo file resides, e.g.,
# "/opt/dymola/Modelica/Library/VehicleInterfaces 1.1.1".
packages = ['FCSys/FCSys']

# List or generator of simulations to run
experiments = gen_experiments(['FCSys.Subregions.Examples.AirColumn']*2)

# End customize----------------------------------------------------------------

# Create the script to load the packages, simulate, and save the results.
write_script(experiments, working_dir=working_dir, packages=packages,
             fname=fname,
             command='FCSys.Utilities.Time.timeTranslation',
             results=['translg.txt'])

# Ask Dymola to run the script.
os.system('dymola ' + fname) # For Linux
# TODO: Add support for Windows.
#os.system(r'C:\Program files\Dymola\bin\Dymola.exe ' + fname) # For Windows
