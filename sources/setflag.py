# This python script finds and replaces the flags="0x0" with flags="0x4" to set the ROUND_XY_TO_GRID bit in a TTX.
# I'm sure this could be done in a much more efficient way, i.e. actually calling fontTools directly instead of dumping and recompiling the GLYF table with TTX
# ... but I don't know how to do that

# import the modules that we need. (re is for regex)
import os, re, sys

eachTTX = sys.argv[1]

# set the working directory for a shortcut
# os.chdir('/Users/weihuang/Google Drive/Type Design/Google/Outputs/Test/Hinting')

# open the source file and read it
fh = file(eachTTX, 'r')
subject = fh.read()
fh.close()

# create the pattern object. Note the "r". In case you're unfamiliar with Python
# this is to set the string as raw so we don't have to escape our escape characters
pattern = re.compile(r'<component (.+)flags="(0x0)"(.+)')
# do the replace
result = pattern.sub(r'<component \1flags="0x4"\3', subject)

# write the file
f_out = file(eachTTX, 'w')
f_out.write(result)
f_out.close()