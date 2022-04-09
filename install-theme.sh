#!/usr/bin/env bash

TMP=$(which kpsewhich)
if [ $? -ne 0 ]
then
    echo 'ERROR ON THEME INSTALLATION : '$TMP
    exit 1
fi
BASE_FOLDER=$(kpsewhich -var-value=TEXMFHOME)
BEAMER_FOLDER=$BASE_FOLDER/tex/latex/beamerthemeextia/

echo "BEAMER FOLDER : $BEAMER_FOLDER"

mkdir -p $BEAMER_FOLDER

cp -rf theme/* $BEAMER_FOLDER

if [ $? -ne 0 ]
then
    echo 'ERROR ON THEME INSTALLATION'
    exit 1
fi
echo 'INSTALLATION SUCCEED'
exit 0
