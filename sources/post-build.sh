#!/bin/bash
set -e

VFname="WorkSans-VF"
VFItalicname="WorkSans-Italic-VF"

# Fix VF Metadata
echo "\tFixing VF Family Metadata..."
python tools/gftools-fix-vf-meta.py ${VFname}.ttf ${VFItalicname}.ttf
# Clean up and rename VF
rm ${VFname}.ttf
rm ${VFItalicname}.ttf
mv ${VFname}.ttf.fix ${VFname}.ttf
mv ${VFItalicname}.ttf.fix ${VFItalicname}.ttf