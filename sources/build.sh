#!/bin/bash
set -e

### WIP macOS build script for Work Sans Upright and Italic VF, based on a build script by Mike LaGuttuta
# To add brace trick glyphs, define them in $BraceGlyphs variable, and save the source VF in the same folder as the script

# Setting the Source and VF name, determine if it's for Italic or Upright source from the argument passed to this script

glyphsSource="WorkSans.glyphs"
VFname="WorkSans-VF"
GXname="WorkSansGX"

if [ "$1" == "Upright" ]; then
	# Setting which brace glyphs will get copied from the VF generated from glyphs app
	BraceGlyphs="a,ae,e,s"
elif [ "$1" == "Italic" ]; then
	BraceGlyphs="ae,e,s"
	# Italic
	glyphsSource=${glyphsSource/".glyphs"/"-Italic.glyphs"}
	VFname=${VFname/"-VF"/"-Italic-VF"}
	GXname=${GXname/"GX"/"ItalicGX"}
fi

python tools/makeBuildGlyphsFile.py "${glyphsSource}" "$1"
glyphsBuildSource=${glyphsSource/".glyphs"/"-build.glyphs"}

# Call fontmake to generate variable font
echo "\tBuilding ${glyphsSource}.glyphs..."
fontmake -o variable -g $glyphsBuildSource
echo "\t${VFname}.ttf generated"

# Clean up files
mv variable_ttf/${VFname}.ttf ${VFname}.ttf
rm $glyphsBuildSource
rm -rf master_ufo
rm -rf instance_ufo
rm -rf variable_ttf

ttx ${VFname}.ttf
rm ${VFname}.ttf
ttx ${GXname}.ttf
mv ${GXname}.ttx tools/${GXname}.ttx

# Copy brace glyphs from variable font generated from Glyphs App
# Run script to find and copy TTGlyph and glyphVariations elements from source file and copy into target file
# Could probablh be done just with fonttools...
echo "\tAdding brace glyphs..."
xml tr tools/replaceBraceGlyphs.xsl \
    -s replacements=${GXname}.ttx \
    -s replacenames=$BraceGlyphs \
    ${VFname}.ttx > ${VFname}-brace.ttx

# Clean up files
rm tools/${GXname}.ttx
rm ${VFname}.ttx
ttx ${VFname}-brace.ttx
rm ${VFname}-brace.ttx
mv ${VFname}-brace.ttf ${VFname}.ttf

# Add featureVariation for bracket trick glyphs
echo "\tAdding bracket glyphs..."
python tools/replaceBracketTrick.py ${VFname}.ttf "$1"
mv ${VFname}-swap.ttf ${VFname}.ttf

# Fix non-hinting, DSIG and GASP table
gftools fix-nonhinting ${VFname}.ttf ${VFname}.ttf
gftools fix-gasp ${VFname}.ttf
echo "nonhinting, gasp fixed"

# Clean up files
rm ${VFname}-backup-fonttools-prep-gasp.ttf
# rm ${GXname}.ttf

# # Fix VF Metadata
# python tools/gftools-fix-vf-meta.py ${VFname}.ttf
# echo "vf-meta fixed"
# # Clean up and rename VF
# rm ${VFname}.ttf
# mv ${VFname}.ttf.fix ${VFname}.ttf

# # Correct nameID 6 (remove space)
# python tools/NAMEpatch.py ${VFname}.ttf
# rm ${VFname}.ttf
# mv ${VFname}#1.ttf ${VFname}.ttf
# echo "nameID 6 fixed"

# Fix DSIG
gftools fix-dsig --autofix ${VFname}.ttf

# if [ "$1" = "Italic" ]; then
# 	# Rename *-ItalicItalic to -Italic
# 	for i in *.ttf; do
# 	    mv "$i" "${i//ItalicItalic/Italic}"
# 	done
# fi

# fontbakery check-googlefonts ${VFname}.ttf --ghmarkdown fontbakery-report.md

## move font into folder of dist/, with timestamp, then fontbake the font
# python3 tools/distdate-and-fontbake.py ${VFname}.ttf