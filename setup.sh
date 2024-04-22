#!/bin/bash

wget http://www.microbeatlas.org/mapref/mapref-3.0.tar.gz
# mkdir -p data
tar -xvzf mapref-3.0.tar.gz && mv mapref-3.0/* data/ && rmdir mapref-3.0 && touch data/mapref-3.0.fna

if [ ! -d "libs/eutils" ]; then
	mkdir -p libs
	svn co -r 1194 https://www.konceptfx.com/svn/eutils libs/eutils
else
	pushd libs/eutils
	svn update
	popd
fi
