#!/bin/sh

rm -Rf build

mkdir -p build

cp ../../src/freesci build
cp ../../desktop/freesci.png build
cp ../../README build/README.freesci.txt
cp PXML.xml build
cp run.sh build
cp config build

pnd_make.sh -p freesci.pnd -d build -x build/PXML.xml -i build/freesci.png


