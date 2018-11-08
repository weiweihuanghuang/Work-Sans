import os
import sys
from fontTools.ttLib import TTFont
from fontTools.ttx import makeOutputFileName

inputTTF = sys.argv[1]

# open the source file and read it
font = TTFont(inputTTF)
extension = os.path.splitext(inputTTF)[1]

# Remove space in nameID 6
if 'name' in font:
    name = font['name']
    for i, eachName in enumerate(name.names):
        if eachName.nameID == 6:
            eachName.string = eachName.string.replace(' ', '')

outputTTF = makeOutputFileName(inputTTF, '', extension)
font.save(outputTTF)