#!/bin/bash

for i in *.ttf; do
    fontbakery check-googlefonts $i --ghmarkdown ${i}-fontbakery-report.md
    # fontbakery check-googlefonts -c com.google.fonts/check/usweightclass -c com.google.fonts/check/name/familyname -c com.google.fonts/check/name/match_familyname_fullfont $i --ghmarkdown ${i}-fontbakery-report.md
    echo "Processing $i ..."
done