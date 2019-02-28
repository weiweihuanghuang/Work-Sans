# ### WIP macOS build script for Work Sans VF, based on a build script by Mike LaGuttuta

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

ttx ${VFname}.ttf.fix
rm -rf ${VFname}.ttf.fix
ttxPath="${VFname}.ttf.ttx"

## inserts patch files into temporary ttx to fix export errors
## BE SURE to update these patches for the real values in a given typeface
cat $ttxPath | tr '\n' '\r' | sed -e "s~<name>.*<\/name>~$(cat tools/NAMEpatch.xml | tr '\n' '\r')~" | tr '\r' '\n' > ${VFname}-name.ttx
# cat variable_ttf/${VFname}-name.ttx | tr '\n' '\r' | sed -e "s,<STAT>.*<\/STAT>,$(cat scripts/STATpatch.xml | tr '\n' '\r')," | tr '\r' '\n' > $ttxPath
echo "name table fixed"

## copies temp ttx file back into a new ttf file
ttx ${VFname}-name.ttx

# removes temp ttx file
rm -rf ${VFname}-name.ttx
rm -rf $ttxPath

mv ${VFname}-name.ttf ${VFname}.ttf

# fontbakery check-googlefonts ${VFname}.ttf --ghmarkdown fontbakery-report.md

## move font into folder of dist/, with timestamp, then fontbake the font
# python3 tools/distdate-and-fontbake.py ${VFname}.ttf

