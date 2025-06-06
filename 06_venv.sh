#!/bin/bash

venv="abhi-venv"
if [ ! -d $venv  ]; then
    python3 -m venv $venv 
    echo " successfully created venv $venv"
    source $venv/bin/activate #Scripts  if windows
    echo "activated"
    packages=(flask requests) # not comma seperated=space
    pip install "${packages[@]}" # should use "${packages[@]}" =pass all items
    echo " packages installed,"${packages[*]}"" # dont forget braces
    pip freeze >> requirements.txt
    echo "saved to file requirements.txt"
    

else
    echo "u messed it up"
fi
