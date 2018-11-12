### Based on a script by Stephen Nixon

import os
import sys
import fontTools
from fontTools.ttLib import TTFont
from fontTools.varLib.featureVars import addFeatureVariations

inputTTF = sys.argv[1]
style = sys.argv[2]

f = TTFont(inputTTF)
if style == "Upright":
    condSubst = [
        # A list of (Region, Substitution) tuples.
        ([{"wght": (-.46, .18)}], {"uniF8FF": "uniF8FF.rvrn"}), # apple
        ([{"wght": (.81, 1)}], {"uni20B5": "uni20B5.rvrn", # cedi
                                  "cent": "cent.rvrn",
                                  "dollar": "dollar.rvrn",
                                  "uni20B2": "uni20B2.rvrn", # guarani
                                  "dollar.tf": "dollar.tf.rvrn",
                                  "cent.tf": "cent.tf.rvrn"}),
        ([{"wght": (0.6, 1)}], {"peseta": "peseta.rvrn",
                                 "uni20A9": "uni20A9.rvrn", # won
                                 "uni2761": "uni2761.rvrn", # curvedStemParagraphSignOrnament
                                 "paragraph": "paragraph.rvrn"}), # won
        # ([{"wght": (0.6, 1)}], {"Odieresis.titl": "Odieresis.titl.rvrn",
        #                           "Odieresis": "Odieresis.rvrn",
        #                           "Udieresis": "Udieresis.rvrn",
        #                           "Udieresis.titl": "Udieresis.titl.rvrn"}),
        ([{"wght": (0.38, 1)}], {"uni20A6": "uni20A6.rvrn", # naira,
                                  "colonmonetary": "colonmonetary.rvrn",  # colon
                                  "Adieresis": "Adieresis.rvrn",
                                  "Adieresis.titl": "Adieresis.titl.rvrn",
                                  "Odieresis.titl": "Odieresis.titl.rvrn", 
                                  "Odieresis": "Odieresis.rvrn",
                                  "Udieresis": "Udieresis.rvrn",
                                  "Udieresis.titl": "Udieresis.titl.rvrn"}),
        ([{"wght": (0.178, 1)}], {"uni20B1": "uni20B1.rvrn"})  # peso
    ]

elif style == "Italic":
    condSubst = [
        # A list of (Region, Substitution) tuples.
        ([{"wght": (-.4688, .1800)}], {"uniF8FF": "uniF8FF.rvrn"}), # apple
        ([{"wght": (.8134, 1)}], {"uni20B5": "uni20B5.rvrn", # cedi
                                  "cent": "cent.rvrn",
                                  "dollar": "dollar.rvrn",
                                  "uni20B2": "uni20B2.rvrn", # guarani
                                  "dollar.tf": "dollar.tf.rvrn",
                                  "cent.tf": "cent.tf.rvrn"}),
        ([{"wght": (0.6, 1)}], {"peseta": "peseta.rvrn",
                                 "uni20A9": "uni20A9.rvrn", # won
                                 "uni2761": "uni2761.rvrn", # curvedStemParagraphSignOrnament
                                 "paragraph": "paragraph.rvrn"}), # won
        ([{"wght": (0.38, 1)}], {"uni20A6": "uni20A6.rvrn", # naira,
                                  "colonmonetary": "colonmonetary.rvrn"}),
        ([{"wght": (0.18, 1)}], {"uni20B1": "uni20B1.rvrn"})  # peso
    ]


addFeatureVariations(f, condSubst)

outputTTF = inputTTF.replace('.ttf', '-swap.ttf')
f.save(outputTTF)
