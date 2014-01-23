#!/bin/bash --
# Run the simulations in this folder (recrusively).


# Update the parameters.
#./update-dsin.py

# Run the simulations.
for f in `find . -name dymosim`; do
    echo Running $f...
    ( cd `dirname $f` && ./dymosim )
done
