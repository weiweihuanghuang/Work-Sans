# Make a .glyphs file with only brace glyphs, export these files in Glyphs App as variable fonts, and the build script will swap these out in the final VF

import sys
import re
from glyphsLib import GSFont
from glyphsLib import GSGlyph
from glyphsLib import GSLayer

file = sys.argv[1]
font = GSFont(file)
print("\tPreparing %s" % file)

# Append Italic to font family naame if Italics
style = sys.argv[2]
if style == "Italic":
	font.familyName = "%s %s" % (font.familyName, style)

# Clear all features
font.features = []
font.classes = []
font.featurePrefixes = []

# Remove Rename Glyphs custom parameter
for instance in font.instances:
	for customParam in instance.customParameters:
		if customParam.name == "Rename Glyphs":
			del customParam

# Find brace glyphs
listOfBraceGlyphs = []
for eachGlyph in font.glyphs:
	for eachLayer in eachGlyph.layers:
		if re.match('.*\d\}$', eachLayer.name):
			listOfBraceGlyphs += [eachGlyph.name]

print("\tBrace glyphs found: ", listOfBraceGlyphs)
listOfBraceGlyphs += ["space", ".notdef"]

listOfGlyphsNotToExport = [g.name for g in font.glyphs if g.name not in listOfBraceGlyphs]

for eachGlyph in listOfGlyphsNotToExport:
	font.glyphs[eachGlyph].export = 0

# for eachGlyph in listOfBraceGlyphs:
# 	try:
# 		font.glyphs[eachGlyph].export = 1
# 	except:
# 		pass

newFileName = file.replace(".glyphs", "-onlyBraceGlyphs.glyphs")

font.save(newFileName)