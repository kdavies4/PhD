#!/bin/bash
# This is a test of using the Design.Calibration package to calibrate parameters.
#
# Created by Kevin Davies, 17-Nov-11

# Set the current directory to the directory in which this script resides.
baseDir=`dirname $0`
cd $baseDir

# Ask Dymola to run the script.
dymola ./calibrate.mos &
