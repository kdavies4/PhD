#!/bin/bash
# List the work in progress in the *.tex files.
#
# Kevin Davies, 4/19/2013

function find_item {
   grep -c $1 --color *.tex
   #echo
   #grep $1 -n --color *.tex
}

echo Starred items:
echo --------------
find_item "\*\*"

echo
read -p "Press [Enter] to exit."
