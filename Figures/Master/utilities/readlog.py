#!/usr/bin/python
"""Read data from a Dymola simulation log file.
"""
__author__ = "Kevin Davies"

import re

def read_line(fname='info.txt', line=0):
    """Read a line from a file, without the newline character.
    """
    src = open(fname, 'r')
    lines = src.readlines()
    src.close()
    return lines[line][:-1]

def read_entry(fname='dslog.txt', entry='CPU-time for integration',
               re_target=' *: *([^ \n]+)'):
    """Read an entry from a Dymola simulation log file.

    Possible entries (as case- and space-insensitive strings):
        CPU-time for integration
        CPU-time for one GRID interval
        Number of result points
        Number of GRID points
        Number of (successful) steps
        Number of F-evaluations
        Number of H-evaluations
        Number of Jacobian-evaluations
        Number of (model) time events
        Number of (U) time events
        Number of state events
        Number of step events
        Minimum integration stepsize
        Maximum integration stepsize
        Maximum integration order
    """
    # Read the file.
    try:
        src = open(fname, 'r')
    except IOError:
        return None
    text = src.read()
    src.close()

    # Parse the contents.
    entry = re.escape(entry).replace(' ', ' +') + re_target
    number = re.search(entry, text, re.IGNORECASE).group(1)
    try:
        return int(number)
    except ValueError:
        try:
            return float(number)
        except ValueError:
            return number

if __name__ == '__main__':
    """Read data from the subfolders of the current directory.
    """
    import os

    # Possible entries (case- and space-insensitive):
    entries=['CPU-time for integration', # in s
             'CPU-time for one GRID interval', # in ms
             'Number of result points',
             'Number of GRID points',
             'Number of (successful) steps',
             'Number of F-evaluations',
             'Number of H-evaluations',
             'Number of Jacobian-evaluations',
             'Number of (model) time events',
             'Number of (U) time events',
             'Number of state events',
             'Number of step events',
             'Minimum integration stepsize',
             'Maximum integration stepsize',
             'Maximum integration order']

    entry = entries[0]
    folders = [os.path.join('.', item) for item in os.listdir('.')
               if os.path.isdir(item)]
    for folder in folders:
        #key = read_line(os.path.join(folder, 'info.txt'), 0)
        value = read_entry(os.path.join(folder, 'dslog.txt'), entry)
        print("%s of %s is %s" % (entry, folder[2:], value))
