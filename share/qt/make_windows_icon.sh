#!/bin/bash
# create multiresolution windows icon
ICON_SRC=../../src/qt/res/icons/cnycoin.png
ICON_DST=../../src/qt/res/icons/cnycoin.ico
convert ${ICON_SRC} -resize 16x16 cnycoin-16.png
convert ${ICON_SRC} -resize 32x32 cnycoin-32.png
convert ${ICON_SRC} -resize 48x48 cnycoin-48.png
convert cnycoin-48.png cnycoin-32.png cnycoin-16.png ${ICON_DST}

