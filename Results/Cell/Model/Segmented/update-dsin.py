#!/usr/bin/python
# Make replacements on the dsin.txt files in the folder above this one.

from glob import glob
from modelicares import write_params

for dsin in glob('*/dsin.txt'):
    print("Updating %s..." % dsin)
    write_params(dict(StopTime=230, Tolerance=1e-6, nInterval=500, Algorithm=8,
                      teps=2e-14, delaym=1e-06, lxd=1), dsin)
