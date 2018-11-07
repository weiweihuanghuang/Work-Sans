import os
import sys
import fontTools
from fontTools.ttLib import TTFont
from fontTools.varLib.featureVars import addFeatureVariations
from fontTools.ttx import makeOutputFileName


inputTTF = sys.argv[1]

# f = TTFont(fontPath)
f = TTFont(inputTTF)

condSubst = [
    # A list of (Region, Substitution) tuples.
    ([{"wght": (0.158, 0.564)}], {"a": "a.swsh"}),
    ([{"wght": (0.868, 1.0)}], {"dollar": "dollar.201_230"}),
]

addFeatureVariations(f, condSubst)

# newFontPath = fontPath.split(".")[0] + "-italic.ttf" 
# f.save(fontPath)
extension = os.path.splitext(inputTTF)[1]
outputTTF = makeOutputFileName(inputTTF, '', extension)
f.save(outputTTF)