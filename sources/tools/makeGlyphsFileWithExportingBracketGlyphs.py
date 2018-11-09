# Turn on Export for Bracket Glyphs (given as argument from shell) and disable non ttf instances
import sys
from glyphsLib import GSFont
from glyphsLib import GSGlyph

file = sys.argv[1]
font = GSFont(file)
print "Preparing %s" % file

italicBracketGlyphs = [
"apple.001",
"cedi.201_230",
"cent.201_230",
"colonsign.201_230",
"dollar.201_230",
"guarani.201_230",
"dollar.tf.201_230",
"cent.tf.201_230",
"naira.169_230",
"peseta.169_230",
"won.169_230",
"peso.136_230",
"curvedStemParagraphSignOrnament.79_230",
"paragraph.79_230"
]

uprightBracketGlyphs = italicBracketGlyphs + [
"Adieresis.titl.136_230",
"Odieresis.titl.106_230",
"Udieresis.titl.136_230",
]

for instance in font.instances:
	deavtivateThisInstance = True
	for customParam in instance.customParameters:
		if customParam.name == "Save as TrueType" and customParam.value == 1:
			deavtivateThisInstance = False
	if deavtivateThisInstance == True:
		instance.active = 0

style = sys.argv[2]
if style == "Italic":
	glyphsToActivateExport = italicBracketGlyphs
elif style == "Upright":
	glyphsToActivateExport = uprightBracketGlyphs

for eachGlyph in glyphsToActivateExport:
	font.glyphs[eachGlyph].export = 1

newFileName = file.replace(".glyphs", "-build.glyphs")

font.save(newFileName)