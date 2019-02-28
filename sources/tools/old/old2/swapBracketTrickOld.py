### Based on a script by Stephen Nixon

import os
import sys
import fontTools
from fontTools.ttLib import TTFont
from fontTools.varLib.featureVars import addFeatureVariations
from fontTools.ttx import makeOutputFileName

inputTTF = sys.argv[1]
# style = sys.argv[2]

# f = TTFont(fontPath)
f = TTFont(inputTTF)

condSubst = [
    # A list of (Region, Substitution) tuples.
    ([{"wght": (0.158, 0.564)}], {"uniF8FF": "uniF8FF.001"}),
    # ([{"wght": (0.868, 1)}], {"uni20B5": "uni20B5.201_230"}),
    # ([{"wght": (0.868, 1)}], {"cent": "cent.201_230"}),
    # ([{"wght": (0.868, 1)}], {"colonmonetary": "colonmonetary.201_230"}),
    # ([{"wght": (0.868, 1)}], {"dollar": "dollar.201_230"}),
    # ([{"wght": (0.868, 1)}], {"uni20B2": "uni20B2.201_230"}),
    # ([{"wght": (0.868, 1)}], {"dollar.tf": "dollar.tf.201_230"}),
    # ([{"wght": (0.868, 1)}], {"cent.tf": "cent.tf.201_230"}),
    # ([{"wght": (0.71, 1)}], {"uni20A6": "uni20A6.169_230"}),
    # ([{"wght": (0.71, 1)}], {"peseta": "peseta.169_230"}),
    # ([{"wght": (0.71, 1)}], {"uni20A9": "uni20A9.169_230"}),
    # ([{"wght": (0.564, 1)}], {"uni20B1": "uni20B1.136_230"}),
    # ([{"wght": (0.424, 1)}], {"uni2761": "uni2761.79_230"}),
    # ([{"wght": (0.424, 1)}], {"paragraph": "paragraph.79_230"}),
]

# if style == "Upright":
# 	condSubst += [	    
# 		([{"wght": (0.564, 1)}], {"Adieresis.titl": "Adieresis.titl.136_230"}),
# 	    ([{"wght": (0.564, 1)}], {"Odieresis.titl": "Odieresis.titl.136_230"}),
# 	]

addFeatureVariations(f, condSubst)

# newFontPath = fontPath.split(".")[0] + "-italic.ttf" 
# f.save(fontPath)
extension = os.path.splitext(inputTTF)[1]
outputTTF = makeOutputFileName(inputTTF, '', extension)
f.save(outputTTF)