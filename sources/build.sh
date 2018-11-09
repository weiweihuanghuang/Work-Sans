### WIP macOS build script for Work Sans Upright and Italic VF, based on a build script by Mike LaGuttuta

# Setting the Source and VF name, determine if it's for Italic or Upright source from the argument passed to this script
if [ "$1" == "Italic" ]; then
	# Italic
	glyphsSource="WorkSans-Italic.glyphs"
	VFname="WorkSans-ItalicItalic-VF"
elif [ "$1" == "Upright" ]; then
	# Upright
	glyphsSource="WorkSans.glyphs"
	VFname="WorkSans-VF"
fi

# Call fontmake to generate variable font
fontmake -o variable -g $glyphsSource
echo "${VFname}.ttf generated"

# Clean up folders
mv variable_ttf/${VFname}.ttf ${VFname}.ttf

rm -rf master_ufo
rm -rf instance_ufo
rm -rf variable_ttf

# # Add featureVariation for bracket trick glyphs
# python tools/swapBracketTrick.py ${VFname}.ttf "$1"
# mv ${VFname}-swap.ttf ${VFname}.ttf

# Fix non-hinting, DSIG and GASP table
gftools fix-nonhinting ${VFname}.ttf ${VFname}.ttf
gftools fix-gasp ${VFname}.ttf
echo "nonhinting, dsig, gasp fixed"

# Clean up backup file
rm -rf ${VFname}-backup-fonttools-prep-gasp.ttf

# # Fix VF Metadata
# python tools/gftools-fix-vf-meta.py ${VFname}.ttf
# echo "vf-meta fixed"
# # Clean up and rename VF
# rm ${VFname}.ttf
# mv ${VFname}.ttf.fix ${VFname}.ttf

# Correct nameID 6 (remove space)
python tools/NAMEpatch.py ${VFname}.ttf
rm ${VFname}.ttf
mv ${VFname}#1.ttf ${VFname}.ttf
echo "nameID 6 fixed"

# Fix DSIG
gftools fix-dsig --autofix ${VFname}.ttf

if [ "$1" = "Italic" ]; then
	# Rename *-ItalicItalic to -Italic
	for i in *.ttf; do
	    mv "$i" "${i//ItalicItalic/Italic}"
	done
fi

# fontbakery check-googlefonts ${VFname}.ttf --ghmarkdown fontbakery-report.md

## move font into folder of dist/, with timestamp, then fontbake the font
# python3 tools/distdate-and-fontbake.py ${VFname}.ttf