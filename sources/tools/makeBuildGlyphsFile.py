# Create build glyphs file :
# Turn on Export for Bracket Glyphs (given as argument from shell) and disable non ttf instances
# Add extra opentype code for rvrn glyphs that are substituted by another feature as well

import sys
from glyphsLib import GSFont
from glyphsLib import GSGlyph

file = sys.argv[1]

font = GSFont(file)
print "\tPreparing %s" % file

# Glyphs to re-enable export, in the Glyphs App export these are not active but get swapped with a custom parameter
italicBracketGlyphs = [
"cedi.201_230",
"colonsign.136_230",
"guarani.201_230",
"cent.201_230",
"dollar.201_230",
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
"apple.001",
"Adieresis.136_230",
"Odieresis.106_230",
"Udieresis.136_230",
"Adieresis.titl.136_230",
"Odieresis.titl.106_230",
"Udieresis.titl.136_230",
]

# Extra FEA code so that the glyphs swapped by rvrn can be substituted again by another opentype feature
# https://github.com/fonttools/fonttools/issues/1371#issuecomment-437613378
uprightFeaCode = [
("tnum", """sub cent.201_230 by cent.tf.201_230; # for rvrn
sub dollar.201_230 by dollar.tf.201_230; # for rvrn"""),
("titl", """# for rvrn
sub Adieresis.136_230 by Adieresis.titl.136_230;
sub Odieresis.106_230 by Odieresis.titl.106_230;
sub Udieresis.136_230 by Udieresis.titl.136_230;""")
]

italicFeaCode = [
("tnum", """sub cent.201_230 by cent.tf.201_230; # for rvrn
sub dollar.201_230 by dollar.tf.201_230; # for rvrn""")
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
	appendFeatureCode = italicFeaCode
elif style == "Upright":
	glyphsToActivateExport = uprightBracketGlyphs
	appendFeatureCode = uprightFeaCode

for eachGlyph in glyphsToActivateExport:
	font.glyphs[eachGlyph].export = 1

for feaCode in appendFeatureCode:
	for f in font.features:
		if f.name == feaCode[0]:
			f.code += "\n" + feaCode[1]
			f.automatic = False
			# print f.code

newFileName = file.replace(".glyphs", "-build.glyphs")

font.save(newFileName)