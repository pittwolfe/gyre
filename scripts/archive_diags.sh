#!/bin/bash

TARGET="$HOME/drive/Research/Gyres_MOC/exp/gyre"

PNGS=$(find . -name "*.png" -print)
PDFS=$(find . -name "*.pdf" -print)

for png in $PNGS ; do
    DIRNAME=$(dirname ${png:2}) # this strips the './' off the dirname
    mkdir -p $TARGET/$DIRNAME
    
    echo $png
    cp $png $TARGET/$DIRNAME
done

for pdf in $PDFS ; do
    echo $pdf
    DIRNAME=$(dirname ${pdf:2}) # this strips the './' off the dirname
    cp $pdf $TARGET/$DIRNAME
done
