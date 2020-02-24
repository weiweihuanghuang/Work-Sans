### Based on a script by Stephen Nixon
# Turn on feature variations so that glyphs swap out for a certain range in their defined axes. Values are documented in "Bracket Trick Glyph Swapping Values.ods", the region is based on normalized axis values i.e. same as "to" in avar if avar exists.



import os
import sys
import fontTools
from fontTools.ttLib import TTFont
from fontTools.varLib.featureVars import addFeatureVariations

inputTTF = sys.argv[1]

f = TTFont(inputTTF)

if "Italic" in inputTTF:
		condSubst = [
				# A list of (Region, Substitution) tuples.
				([{"wght": (.81, 1)}], {"uni20B5": "uni20B5.rvrn", # cedi
																	"cent": "cent.rvrn",
																	"dollar": "dollar.rvrn",
																	"uni20B2": "uni20B2.rvrn", # guarani
																	"dollar.tf": "dollar.tf.rvrn",
																	"cent.tf": "cent.tf.rvrn"}),
				([{"wght": (0.6, 1)}], {"peseta": "peseta.rvrn",
																 "uni20A9": "uni20A9.rvrn"}), # won
				([{"wght": (0.38, 1)}], {"uni20A6": "uni20A6.rvrn", # naira,
																	"colonmonetary": "colonmonetary.rvrn"}),
				([{"wght": (0.178, 1)}], {"uni20B1": "uni20B1.rvrn"}), # peso
				([{"wght": (0, 1)}], {"uni2761": "uni2761.rvrn", # curvedStemParagraphSignOrnament
																 "paragraph": "paragraph.rvrn"}) # won
		]

else:
		condSubst = [
				# A list of (Region, Substitution) tuples.
				([{"wght": (-.47, .18)}], {"uniF8FF": "uniF8FF.rvrn"}), # apple
				([{"wght": (.81, 1)}], {"uni20B5": "uni20B5.rvrn", # cedi
																	"cent": "cent.rvrn",
																	"dollar": "dollar.rvrn",
																	"uni20B2": "uni20B2.rvrn", # guarani
																	"dollar.tf": "dollar.tf.rvrn",
																	"cent.tf": "cent.tf.rvrn"}),
				([{"wght": (0.6, 1)}], {"peseta": "peseta.rvrn",
																 "uni20A9": "uni20A9.rvrn"}), # won
				([{"wght": (0.38, 1)}], {"uni20A6": "uni20A6.rvrn", # naira,
																	"colonmonetary": "colonmonetary.rvrn",  # colon
																	"Adieresis": "Adieresis.rvrn",
																	"Adieresis.titl": "Adieresis.titl.rvrn",
																	"Odieresis.titl": "Odieresis.titl.rvrn", 
																	"Odieresis": "Odieresis.rvrn",
																	"Udieresis": "Udieresis.rvrn",
																	"Udieresis.titl": "Udieresis.titl.rvrn"}),
				([{"wght": (0.178, 1)}], {"uni20B1": "uni20B1.rvrn"}),  # peso
				([{"wght": (0, 1)}], {"uni2761": "uni2761.rvrn", # curvedStemParagraphSignOrnament
																 "paragraph": "paragraph.rvrn"}) # won
		]

addFeatureVariations(f, condSubst)

outputTTF = inputTTF.replace('.ttf', '.ttf.fix')
f.save(outputTTF)