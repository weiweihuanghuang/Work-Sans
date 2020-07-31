## Building Fonts
Fonts are built using fontmake, gftools and Bramstein's webfonttools. These can be installed in a python virtualenv using the following commands:

```
# Create a new vitualenv
python3 -m venv venv
# Activate virtualenv
source venv/bin/activate
# Install python dependencies
pip install -r ../requirements.txt
# Install webfonttools
brew tap bramstein/webfonttools
brew install woff2
brew install sfnt2woff
```

After installing the dependencies. Run `sh build.sh` from this directory to build the fonts.

