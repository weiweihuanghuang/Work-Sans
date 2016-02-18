FONTLOG for Work Sans
---------------------

This file provides detailed information on the Work Sans font software.
This information should be distributed along with the Work Sans fonts
and any derivative works.


Basic Font Information
----------------------

‘Work Sans’ fonts are a set of fonts supporting Latin. They are designed for body text and display text on for on-screen reading.

*Note: There are no UFOs as UFOs exported from Glyphs App will currently not generate in Robofont and so on due to using '[Bracket trick](http://www.glyphsapp.com/tutorials/alternating-glyph-shapes)' and '[Brace trick](http://www.glyphsapp.com/tutorials/additional-masters-for-individual-glyphs-the-brace-trick)' to solve interpolation bumps. Glyphs marked orange are bracket layers and glyphs marked yellow are using brace layers.*

There is a Telugu glyph set (Work Sans-Telugu.glyphs) that comes from [Ramabhadra](http://teluguvijayam.org/fonts.html) by Silicon Andhra. Glyphs marked red in the file are those that have been manually cleaned up, the rest are automatically cleaned up with FontForge from Ramabhadra. The Latin glyphs in Work Sans-Telugu.glyphs are out of date.


Information for Contributors
----------------------------

Work Sans is released under the OFL 1.1 - http://scripts.sil.org/OFL

For information on what you're allowed to change or modify, consult the
OFL-1.1.txt and OFL-FAQ.txt files. The OFL-FAQ also gives a very general
rationale and various recommendations regarding why you would want to
contribute to the project or make your own version of the font.

See the project website for the current trunk and the various branches:

https://github.com/weiweihuanghuang/Work-Sans


ChangeLog
---------

When you make modifications, be sure to add a description of your changes,
following the format of the other entries, to the start of this section.

18 Feb 2016 (Wei Huang) 'Work Sans' v1.51
- Fixed /m stem in Black Master

03 Jan 2016 (Wei Huang) 'Work Sans' v1.50
- Fixed some bugs (iacute_j, localCAT, among others)

13 Sep 2015 – 25 Sep 2015 (Denis Moyogo Jacquerye) 'Work Sans' v1.50
- Created combining diacritics from diacritics already in fonts
- Added anchors

12 Jul 2015 (Wei Huang) 'Work Sans' v1.40
- Subsumed Hairline weight into Work Sans 9 weight family – according to Google Font engineers scheme. The new 'Thin' is the same as 'HairLine' in previous versions. 'Light' and 'ExtraLight' also changed accordingly. Reflow will occur from previous versions on these weights.

12 Jul 2015 (Wei Huang) 'Work Sans' v1.32
- Changed usWeightClass to start at 250 by changing Thin, ExtraLight (in TTF) and Hairline (in OTF) as per https://github.com/weiweihuanghuang/Work-Sans/issues/13#issuecomment-119579341
- Changed mid stroke of /S in Black master to balance counters
- Added comments to hinting .ctrl files

8 Jul 2015 (Wei Huang) 'Work Sans' v1.31
- Changed WorkSan-Hairline into a separate family to fit into CSS restrictions:
- Rename name table id 6 from WorkSans-Hairline to WorkSansHairline-Regular
- a usWeightClass of 400
- Remove name tables 16 and 17
- Added Panose <bWeight value="1"/>

6 Jul 2015 (Wei Huang) 'Work Sans' v1.30
- Added style linking for Bold in TTF
- Removed any NAME table IDs with a PlatformID="1" attribute

6 Jul 2015 (Wei Huang) 'Work Sans' v1.29
- Set fsType to 0

22 Jun 2015 (Wei Huang) 'Work Sans' v1.28
- Fixed tittle of /j

3 Jun 2015 (Wei Huang) 'Work Sans' v1.27
- Fixed uniF8FF and .titl glyphs

18 May 2015 (Wei Huang) 'Work Sans' v1.26
- Improved Postscript hinting (for desktop fonts)

18 May 2015 (Wei Huang) 'Work Sans' v1.25
- Fixed alignment zone mistake.

18 May 2015 (Wei Huang) 'Work Sans' v1.24
- Improved Postscript hinting
- Simplified alignment zones and stems
- Fixed tittle in j for Thin master

16 March 2015 (Wei Huang) 'Work Sans' v1.22
- Edit symbols and shapes spacing
- Added /ldot.ss02 /uni013C.ss02 /fl.ss02
- Added /period.tf/comma.tf/colon.tf/semicolon.tf/space.tf
- Fixed /S.swsh `swsh` code
- Fixed /equal superior `swsh` code

13 March 2015 (Wei Huang) ‘Work Sans’ v1.21
- Adjusted spacing and kerning for /quote* glyphs
- Adjusted spacing for symbols

11 March 2015 (Wei Huang) ‘Work Sans’ v1.2
- Fixed more outline errors
- Improved hinting
- Added webfont and desktop font binaries

4 March 2015 (Wei Huang) ‘Work Sans’ v1.06
*Updated source only*
- Fixed more outline errors

4 March 2015 (Wei Huang) ‘Work Sans’ v1.06
*Updated source only*
- Deleted all kerning pairs smaller than 1
- Fix color of numerals
- Added arrows
- Added c_t, s_t ligature
- Added alt R, G
- Added swashes
- Added ornaments, symbols, dingbats
- Fixed outline errors
- Improved instances for family generation

23 February 2015 (Wei Huang) ‘Work Sans’ v1.05
*Updated source only, will generate broken fonts*
- Added small caps letters, numerals and punctuation with kerning
- Added indices (numerals in circles)
- Added square, circle and diamond shapes
- Added superior and inferior punctuation
- Updated Opentype feature code

11 February 2015 (Wei Huang) ‘Work Sans’ v1.04
*Updated source only, will generate broken fonts*
- Added more superscript glyphs
- Created inferior, numerator and denominator numerals
- Kerning for little numerals
- Minor design changes and glyph harmonisation

7 February 2015 (Wei Huang) ‘Work Sans’ v1.03
*Updated source only, will generate broken fonts*
- Created superscript numerals
- Created tabular & oldstyle figures
- Duplexed tabular numerals and associated glyphs – punctuation and symbols – across family (same width in all weights)
– `zero` slashed zero
- `titl` created some titling alternates for dieresis capital glyphs
- `case` sensitive punctuation
- `hist` ſ and ligatures added
– `locl` for Romanian & Moldovian (*cedilla)
- `locl` for Catalan (periodcentered)
– `locl` for Dutch (ij, IJ, iacute_j, Iacute_J)
- `locl` for languages with idotaccent
– Created Germandbls capitals
- Minor design fixes

19 January 2015 (Wei Huang) ‘Work Sans’ v1.02
- Fixed right side of bold 'J'
- Fixed incompatible glyphs for interpolation in .glyphs file
- Improved Hinting
- Synchronised vertical metrics for webfonts following Google Fonts recommendations
- Synchronised vertical metrics for otfs following Microsoft recommendations

10 December 2014 (Wei Huang) ‘Work Sans’ v0.99
- Completed kerning

18 November 2014 (Wei Huang) ‘Work Sans’ v0.9
- Telugu glyph set uploaded – thought not exported to fonts in Test Fonts folder

4 November 2014 (Wei Huang) ‘Work Sans’ v0.8
- Font Renamed to ‘Work Sans’ from the working title ‘Alice’.

3 November 2014 (Wei Huang) ‘Alice’ v0.8
- Completed drawing Adobe Latin-3 for Thin, Regular and Black masters.
– Using ‘Bracket trick’ and ‘Brace tricks’ in Glyphs App to compensate intermediate instances.
– Started kerning.
– Project changed to Telugu from Devanagari.

25 September 2014 (Wei Huang) ‘Alice’ v0.3
- Edited ogonek and cedilla glyphs.
- Added diacritics for the Thin weight.
- Added webfonts.

22 September 2014 (Wei Huang) ‘Alice’ v0.22
- Added most of the Thin weight.

27 August 2014 (Wei Huang) ‘Alice’ v0.12
- Widened Devanagari for better legibility.
- Added some Devanagari glyphs.
- Changed ascender to an arbitrarily taller height to compensate for Devanagari.

25 August 2014 (Wei Huang) ‘Alice’ v0.11
- Fixed spacing.
- Edited some characters to even up the typographic colour.
- Changed joins (r, n, d, q, b, p, etc) to smooth joins in Latin.
- Changed quote marks to rounded.
- Thinned the Devanagari glyphs to match colour of Latin.

19 July 2014 (Wei Huang) ‘Alice’ v0.1
- Added Adobe Latin-3 character set.

11 July 2014 (Wei Huang) ‘Alice’ v0.01
- Added some Devanagari characters.

8 July 2014 (Wei Huang) ‘Alice’ v0.01
- Initial Beta.


Acknowledgements
----------------

When you make modifications, be sure to add your name (N), email (E),
web-address (W) and description (D). This list is sorted by last name in
alphabetical order.

N: Wei Huang
E: wweeiihhuuaanngg@gmail.com
W: https://github.com/weiweihuanghuang
D: Designer - concept, design and production of original font

N: Denis Moyogo Jacquerye
E:
W: https://github.com/moyogo
D: Production