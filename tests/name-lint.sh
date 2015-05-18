#!/bin/sh


grep -e "Pycon UK" -e "pycon UK" -e "pyconUK" -e "PyConUK" \
        --line-number --recursive . \
        --include "*.html" --include "*.rst"

# We found misspellings, warn the user and exit
if [ $? -eq 0 ]; then
    echo "Please spell the conference name PyCon UK."
    exit 1
fi

exit 0
