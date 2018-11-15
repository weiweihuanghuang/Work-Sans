#!/bin/bash
set -e

# for i in *.ttf; do
#     fontbakery check-googlefonts "$i" --ghmarkdown $i-fontbakery-report.md
#     echo "Processing $i"
# done

# fontbakery check-googlefonts "WorkSans-VF.ttf" --ghmarkdown WorkSans-VF-fontbakery-report.md
fontbakery check-googlefonts "WorkSans-Italic-VF.ttf" --ghmarkdown WorkSans-Italic-VF-fontbakery-report.md

## move font into folder of dist/, with timestamp, then fontbake the font
# python3 tools/distdate-and-fontbake.py ${VFname}.ttf