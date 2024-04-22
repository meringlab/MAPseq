#!/bin/bash

wget http://www.microbeatlas.org/mapref/mapref-3.0.tar.gz
tar -Cdata -xvzf mapref-3.0.tar.gz && mv data/mapref-3.0/* data/ && rmdir data/mapref-3.0 && touch data/mapref-3.0.fna

svn co https://www.konceptfx.com/svn/eutils
pushd eutils
svn update
