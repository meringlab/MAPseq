#!/bin/bash

# wget http://www.microbeatlas.org/mapref/mapref-3.0.tar.gz
git-lfs pull
tar -xvzf data/mapref-3.0.tar.gz && mv mapseq/* data/ && rmdir mapseq && touch data/mapref-3.0.fna

if [ ! -d "libs/eutils" ]; then
	mkdir -p libs
	svn co -r 1194 https://www.konceptfx.com/svn/eutils libs/eutils
else
	pushd libs/eutils
	svn update
	popd
fi
