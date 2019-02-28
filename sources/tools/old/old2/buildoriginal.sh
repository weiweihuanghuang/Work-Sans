### WIP macOS build script for Work Sans VF, based on a build script by Mike LaGuttuta

glyphsSource="WorkSans.glyphs"
VFname="WorkSans-VF"

fontmake -o variable -g $glyphsSource
echo "${VFname}.ttf generated"

mv variable_ttf/${VFname}.ttf ${VFname}.ttf

rm -rf master_ufo
rm -rf instance_ufo
rm -rf variable_ttf

# python tools/swapBracketTrick.py ${VFname}.ttf "Upright"

gftools fix-nonhinting ${VFname}.ttf ${VFname}.ttf
gftools fix-dsig --autofix ${VFname}.ttf
gftools fix-gasp ${VFname}.ttf
echo "nonhinting, dsig, gasp fixed"

rm -rf ${VFname}-backup-fonttools-prep-gasp.ttf

python tools/gftools-fix-vf-meta.py ${VFname}.ttf
echo "vf-meta fixed"

rm -rf ${VFname}.ttf
mv ${VFname}.ttf.fix ${VFname}.ttf

# fontbakery check-googlefonts ${VFname}.ttf --ghmarkdown fontbakery-report.md

## move font into folder of dist/, with timestamp, then fontbake the font
# python3 tools/distdate-and-fontbake.py ${VFname}.ttf

