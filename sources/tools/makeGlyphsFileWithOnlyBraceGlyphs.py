# Make a .glyphs file with only brace glyphs to export
import sys
import re
from glyphsLib import GSFont
from glyphsLib import GSGlyph
from glyphsLib import GSLayer

file = sys.argv[1]
print file

font = GSFont()
# font = GSFont(file)

# Clear all features
font.features = []
font.classes = []
font.featurePrefixes = []

# Find brace glyphs
listOfBraceGlyphs = []
for eachGlyph in font.glyphs:
	for eachLayer in eachGlyph.layers:
		if re.match('.*\d\}$', eachLayer.name):
			listOfBraceGlyphs += [eachGlyph.name]

print "brace glyphs: ", listOfBraceGlyphs
listOfBraceGlyphs += ["space", ".notdef"]

# Append Italic to font family naame if Italics
style = sys.argv[2]
if style == "Italic":
	font.familyName = "%s %s" % (font.familyName, style)

listOfGlyphsNotToExport = [g.name for g in font.glyphs if g not in listOfBraceGlyphs]

for eachGlyph in listOfGlyphsNotToExport:
	font.glyphs[eachGlyph].export = 0

# for eachGlyph in listOfBraceGlyphs:
# 	try:
# 		font.glyphs[eachGlyph].export = 1
# 	except:
# 		pass

newFileName = file.replace(".glyphs", "-onlyBraceGlyphs.glyphs")

font.save(newFileName)