import sys
import os
import shutil
from datetime import datetime

arg = sys.argv[-1]
fontFile = arg.split("/")[1]
fontName = fontFile.split(".")[0]

# make timestamped folder in dist, like `SampleFont_2015-10-21-017_03`
currentDatetime = datetime.now().strftime('%Y-%m-%d-%H_%M')
# outputFolder = 'dist/' + GLYPHS_PATH.replace('sources/', '').replace('.glyphs', '-VF-') + currentDatetime + '/'

outputFolder = f'dist/{fontName}-{currentDatetime}'


if not os.path.exists(outputFolder):
    os.makedirs(outputFolder)

defaultFontPath = arg
newFontPath = f'{outputFolder}/{fontFile}'
shutil.move(defaultFontPath, newFontPath)

# run fontbakery check on new font
fontbakeryCommand = f'fontbakery check-googlefonts {newFontPath} --ghmarkdown {outputFolder}/fontbakery-report.md'
print("fontbakeryCommand is " + fontbakeryCommand)

print(os.system(fontbakeryCommand))