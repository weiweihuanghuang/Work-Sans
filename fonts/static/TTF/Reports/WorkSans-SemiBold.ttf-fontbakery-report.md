## Fontbakery report

Fontbakery version: 0.7.15

<details>
<summary><b>[29] Family checks</b></summary>
<details>
<summary>ℹ <b>INFO:</b> Do we have the latest version of FontBakery installed?</summary>

* [com.google.fonts/check/fontbakery_version](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/fontbakery_version)

* ℹ **INFO** fontbakery (0.7.19)  - Well designed Font QA tool, written in Python 3
  INSTALLED: 0.4.1
  LATEST:    0.7.19

* 🍞 **PASS** Font Bakery is up-to-date

</details>
<details>
<summary>🍞 <b>PASS:</b> Does font file include unacceptable control character glyphs?</summary>

* [com.google.fonts/check/family/control_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/family/control_chars)
<pre>--- Rationale ---

Use of some unacceptable control characters in the U+0000 - U+001F range can
lead to rendering issues on some platforms.

Acceptable control characters are defined as .null (U+0000) and CR (U+000D) for
this test.


</pre>

* 🍞 **PASS** Unacceptable control characters were not identified.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking all files are in the same directory.</summary>

* [com.google.fonts/check/family/single_directory](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/family/single_directory)
<pre>--- Rationale ---

If the set of font files passed in the command line is not all in the same
directory, then we warn the user since the tool will interpret the set of files
as belonging to a single family (and it is unlikely that the user would store
the files from a single family spreaded in several separate directories).


</pre>

* 🍞 **PASS** All files are in the same directory.

</details>
<details>
<summary>🍞 <b>PASS:</b> Each font in a family must have the same vertical metrics values.</summary>

* [com.google.fonts/check/family/vertical_metrics](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/family/vertical_metrics)
<pre>--- Rationale ---

We want all fonts within a family to have the same vertical metrics so their
line spacing is consistent across the family.


</pre>

* 🍞 **PASS** Vertical metrics are the same across the family

</details>
<details>
<summary>🍞 <b>PASS:</b> Fonts have equal unicode encodings?</summary>

* [com.google.fonts/check/family/equal_unicode_encodings](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cmap.html#com.google.fonts/check/family/equal_unicode_encodings)

* 🍞 **PASS** Fonts have equal unicode encodings.

</details>
<details>
<summary>🍞 <b>PASS:</b> Make sure all font files have the same version value.</summary>

* [com.google.fonts/check/family/equal_font_versions](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/family/equal_font_versions)

* 🍞 **PASS** All font files have the same version.

</details>
<details>
<summary>🍞 <b>PASS:</b> Fonts have consistent PANOSE proportion?</summary>

* [com.google.fonts/check/family/panose_proportion](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.google.fonts/check/family/panose_proportion)

* 🍞 **PASS** Fonts have consistent PANOSE proportion.

</details>
<details>
<summary>🍞 <b>PASS:</b> Fonts have consistent PANOSE family type?</summary>

* [com.google.fonts/check/family/panose_familytype](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.google.fonts/check/family/panose_familytype)

* 🍞 **PASS** Fonts have consistent PANOSE family type.

</details>
<details>
<summary>🍞 <b>PASS:</b> Fonts have consistent underline thickness?</summary>

* [com.google.fonts/check/family/underline_thickness](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/post.html#com.google.fonts/check/family/underline_thickness)
<pre>--- Rationale ---

Dave C Lemon (Adobe Type Team) recommends setting the underline thickness to be
consistent across the family.

If thicknesses are not family consistent, words set on the same line which have
different styles look strange.

See also:
https://twitter.com/typenerd1/status/690361887926697986


</pre>

* 🍞 **PASS** Fonts have consistent underline thickness.

</details>
<details>
<summary>🍞 <b>PASS:</b> Verify that each group of fonts with the same nameID 1 has maximum of 4 fonts</summary>

* [com.adobe.fonts/check/family/max_4_fonts_per_family_name](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/family/max_4_fonts_per_family_name)
<pre>--- Rationale ---

Per the OpenType spec:
&#x27;The Font Family name ... should be shared among at most four fonts that differ
only in weight or style ...&#x27;


</pre>

* 🍞 **PASS** There were no more than 4 fonts per family name.

</details>
<details>
<summary>💤 <b>SKIP:</b> Check METADATA.pb parse correctly.</summary>

* [com.google.fonts/check/metadata/parses](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/metadata/parses)
<pre>--- Rationale ---

The purpose of this check is to ensure that the METADATA.pb file is not
malformed.


</pre>

* 💤 **SKIP** Font family at '.' lacks a METADATA.pb file.

</details>
<details>
<summary>💤 <b>SKIP:</b> Font designer field in METADATA.pb must not be 'unknown'.</summary>

* [com.google.fonts/check/metadata/unknown_designer](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/metadata/unknown_designer)

* 💤 **SKIP** Unfulfilled Conditions: family_metadata

</details>
<details>
<summary>💤 <b>SKIP:</b> Multiple values in font designer field in METADATA.pb must be separated by commas.</summary>

* [com.google.fonts/check/metadata/designer_values](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/metadata/designer_values)
<pre>--- Rationale ---

We must use commas instead of forward slashes because the server-side code at
the fonts.google.com directory will segment the string on the commas into a
list of names and display the first item in the list as the &quot;principal
designer&quot; while the remaining names are identified as &quot;contributors&quot;.

See eg https://fonts.google.com/specimen/Rubik


</pre>

* 💤 **SKIP** Unfulfilled Conditions: family_metadata

</details>
<details>
<summary>💤 <b>SKIP:</b> Does METADATA.pb copyright field contain broken links?</summary>

* [com.google.fonts/check/metadata/broken_links](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/metadata/broken_links)

* 💤 **SKIP** Unfulfilled Conditions: family_metadata

</details>
<details>
<summary>💤 <b>SKIP:</b> Ensure METADATA.pb lists all font binaries.</summary>

* [com.google.fonts/check/metadata/undeclared_fonts](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/metadata/undeclared_fonts)
<pre>--- Rationale ---

The set of font binaries available must match exactly those declared on the
METADATA.pb file.

Also, to avoid confusion, we expect that font files are not placed on
subdirectories.


</pre>

* 💤 **SKIP** Unfulfilled Conditions: family_metadata

</details>
<details>
<summary>💤 <b>SKIP:</b> Check font has a license.</summary>

* [com.google.fonts/check/family/has_license](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/family/has_license)

* 💤 **SKIP** Unfulfilled Conditions: gfonts_repo_structure

</details>
<details>
<summary>💤 <b>SKIP:</b> METADATA.pb: check if fonts field only has unique "full_name" values.</summary>

* [com.google.fonts/check/metadata/unique_full_name_values](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/metadata/unique_full_name_values)

* 💤 **SKIP** Unfulfilled Conditions: family_metadata

</details>
<details>
<summary>💤 <b>SKIP:</b> METADATA.pb: check if fonts field only contains unique style:weight pairs.</summary>

* [com.google.fonts/check/metadata/unique_weight_style_pairs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/metadata/unique_weight_style_pairs)

* 💤 **SKIP** Unfulfilled Conditions: family_metadata

</details>
<details>
<summary>💤 <b>SKIP:</b> METADATA.pb license is "APACHE2", "UFL" or "OFL"?</summary>

* [com.google.fonts/check/metadata/license](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/metadata/license)

* 💤 **SKIP** Unfulfilled Conditions: family_metadata

</details>
<details>
<summary>💤 <b>SKIP:</b> METADATA.pb should contain at least "menu" and "latin" subsets.</summary>

* [com.google.fonts/check/metadata/menu_and_latin](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/metadata/menu_and_latin)

* 💤 **SKIP** Unfulfilled Conditions: family_metadata

</details>
<details>
<summary>💤 <b>SKIP:</b> METADATA.pb subsets should be alphabetically ordered.</summary>

* [com.google.fonts/check/metadata/subsets_order](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/metadata/subsets_order)

* 💤 **SKIP** Unfulfilled Conditions: family_metadata

</details>
<details>
<summary>💤 <b>SKIP:</b> METADATA.pb: Copyright notice is the same in all fonts?</summary>

* [com.google.fonts/check/metadata/copyright](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/metadata/copyright)

* 💤 **SKIP** Unfulfilled Conditions: family_metadata

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that METADATA.pb family values are all the same.</summary>

* [com.google.fonts/check/metadata/familyname](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/metadata/familyname)

* 💤 **SKIP** Unfulfilled Conditions: family_metadata

</details>
<details>
<summary>💤 <b>SKIP:</b> METADATA.pb: According Google Fonts standards, families should have a Regular style.</summary>

* [com.google.fonts/check/metadata/has_regular](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/metadata/has_regular)

* 💤 **SKIP** Unfulfilled Conditions: family_metadata

</details>
<details>
<summary>💤 <b>SKIP:</b> METADATA.pb: Regular should be 400.</summary>

* [com.google.fonts/check/metadata/regular_is_400](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/metadata/regular_is_400)

* 💤 **SKIP** Unfulfilled Conditions: family_metadata, has_regular_style

</details>
<details>
<summary>💤 <b>SKIP:</b> METADATA.pb: Font filenames match font.filename entries?</summary>

* [com.google.fonts/check/metadata/filenames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/metadata/filenames)

* 💤 **SKIP** Unfulfilled Conditions: family_metadata

</details>
<details>
<summary>💤 <b>SKIP:</b> All tabular figures must have the same width across the RIBBI-family.</summary>

* [com.google.fonts/check/family/tnum_horizontal_metrics](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/family/tnum_horizontal_metrics)
<pre>--- Rationale ---

Tabular figures need to have the same metrics in all styles in order to allow
tables to be set with proper typographic control, but to maintain the placement
of decimals and numeric columns between rows.

Here&#x27;s a good explanation of this:
https://www.typography.com/techniques/fonts-for-financials/#tabular-figs


</pre>

* 💤 **SKIP** Unfulfilled Conditions: RIBBI_ttFonts

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that OS/2.fsSelection bold & italic settings are unique for each NameID1</summary>

* [com.adobe.fonts/check/family/bold_italic_unique_for_nameid1](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.adobe.fonts/check/family/bold_italic_unique_for_nameid1)
<pre>--- Rationale ---

Per the OpenType spec: name ID 1 &#x27;is used in combination with Font Subfamily
name (name ID 2), and should be shared among at most four fonts that differ
only in weight or style...

This four-way distinction should also be reflected in the OS/2.fsSelection
field, using bits 0 and 5.


</pre>

* 💤 **SKIP** Unfulfilled Conditions: RIBBI_ttFonts

</details>
<details>
<summary>⚠ <b>WARN:</b> Is the command `ftxvalidator` (Apple Font Tool Suite) available?</summary>

* [com.google.fonts/check/ftxvalidator_is_available](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/ftxvalidator_is_available)
<pre>--- Rationale ---

There&#x27;s no reasonable (and legal) way to run the command `ftxvalidator` of the
Apple Font Tool Suite on a non-macOS machine. I.e. on GNU+Linux or Windows etc.

If Font Bakery is not running on an OSX machine, the machine running Font
Bakery could access `ftxvalidator` on OSX, e.g. via ssh or a remote procedure
call (rpc).

There&#x27;s an ssh example implementation at:
https://github.com/googlefonts/fontbakery/blob/master/prebuilt/workarounds/ftxvalidator/ssh-implementation/ftxvalidator


</pre>

* ⚠ **WARN** ftxvalidator is not available.

</details>
<br>
</details>
<details>
<summary><b>[132] WorkSans-SemiBold.ttf</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Stricter unitsPerEm criteria for Google Fonts. </summary>

* [com.google.fonts/check/unitsperem_strict](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/unitsperem_strict)
<pre>--- Rationale ---

Even though the OpenType spec allows unitsPerEm to be any value between 16 and
16384, the Google Fonts project aims at a narrower set of reasonable values.

The spec suggests usage of powers of two in order to get some performance
improvements on legacy renderers, so those values are acceptable.

But value of 500 or 1000 are also acceptable, with the added benefit that it
makes upm math easier for designers, while the performance hit of not using a
power of two is most likely negligible nowadays.

Another acceptable value is 2000. Since TT outlines are all integers (no
floats), then instances in a VF suffer rounding compromises, and therefore a
1000 UPM is to small because it forces too many such compromises.

Therefore 2000 is a good &#x27;new VF standard&#x27;, because 2000 is a simple 2x
conversion from existing fonts drawn on a 1000 UPM, and anyone who knows what
10 units can do for 1000 UPM will know what 20 units does too.

Additionally, values above 2048 would result in filesize increases with not
much added benefit.


</pre>

* ⚠ **WARN** Even though unitsPerEm (1000) in this font is reasonable. It is strongly advised to consider changing it to 2000, since it will likely improve the quality of Variable Fonts by avoiding excessive rounding of coordinates on interpolations. [code: legacy-value]

</details>
<details>
<summary>⚠ <b>WARN:</b> Glyphs are similiar to Google Fonts version?</summary>

* [com.google.fonts/check/production_glyphs_similarity](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/production_glyphs_similarity)

* ⚠ **WARN** Following glyphs differ greatly from Google Fonts version: [uni2206, dollar, uni275E, paragraph, sacute.sc, uni25C7, circle, dollar.tf, scaron.sc, radical, uni25C6, zero.osf.zero, uni25CF, Aring, iacute_j.loclNLD.sc.ss05, daggerdbl, uni20BD, s.sc, sterling, uni275D, Adieresis.titl, uni20BD.tf, uni2761, germandbls.sc, Lcaron.swsh]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---

Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will
only differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.

However, a quotedbl should have 2 contours, unless the font belongs to a
display family.

This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.


</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: lira	Contours detected: 2	Expected: 1
Glyph name: uni20B1	Contours detected: 3	Expected: 1, 2 or 4
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: Tbar	Contours detected: 2	Expected: 1
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: ohorn	Contours detected: 3	Expected: 2
Glyph name: Uhorn	Contours detected: 2	Expected: 1
Glyph name: uhorn	Contours detected: 2	Expected: 1
Glyph name: uni01EA	Contours detected: 3	Expected: 2
Glyph name: uni01EB	Contours detected: 3	Expected: 2
Glyph name: uni1E08	Contours detected: 3	Expected: 2
Glyph name: uni1E09	Contours detected: 3	Expected: 2
Glyph name: uni1E1C	Contours detected: 3	Expected: 2
Glyph name: uni1E1D	Contours detected: 4	Expected: 3
Glyph name: uni1EDB	Contours detected: 4	Expected: 3
Glyph name: uni1EDD	Contours detected: 4	Expected: 3
Glyph name: uni1EDF	Contours detected: 4	Expected: 3
Glyph name: uni1EE1	Contours detected: 4	Expected: 3
Glyph name: uni1EE3	Contours detected: 4	Expected: 3
Glyph name: uni1EE8	Contours detected: 3	Expected: 2
Glyph name: uni1EE9	Contours detected: 3	Expected: 2
Glyph name: uni1EEA	Contours detected: 3	Expected: 2
Glyph name: uni1EEB	Contours detected: 3	Expected: 2
Glyph name: uni1EEC	Contours detected: 3	Expected: 2
Glyph name: uni1EED	Contours detected: 3	Expected: 2
Glyph name: uni1EEE	Contours detected: 3	Expected: 2
Glyph name: uni1EEF	Contours detected: 3	Expected: 2
Glyph name: uni1EF0	Contours detected: 3	Expected: 2
Glyph name: uni1EF1	Contours detected: 3	Expected: 2
Glyph name: uni275D	Contours detected: 2	Expected: 1
Glyph name: uni275E	Contours detected: 2	Expected: 1
Glyph name: uni2761	Contours detected: 3	Expected: 2
Glyph name: uni1EEB	Contours detected: 3	Expected: 2
Glyph name: uni1EDF	Contours detected: 4	Expected: 3
Glyph name: uni275E	Contours detected: 2	Expected: 1
Glyph name: uni1EE9	Contours detected: 3	Expected: 2
Glyph name: uni1EDD	Contours detected: 4	Expected: 3
Glyph name: uni1EEC	Contours detected: 3	Expected: 2
Glyph name: uni1E09	Contours detected: 3	Expected: 2
Glyph name: uni20B1	Contours detected: 3	Expected: 1, 2 or 4
Glyph name: uni1EF1	Contours detected: 3	Expected: 2
Glyph name: uni1EEA	Contours detected: 3	Expected: 2
Glyph name: uni1EEE	Contours detected: 3	Expected: 2
Glyph name: uni1EDB	Contours detected: 4	Expected: 3
Glyph name: uni1EE3	Contours detected: 4	Expected: 3
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: uni1E08	Contours detected: 3	Expected: 2
Glyph name: uni275D	Contours detected: 2	Expected: 1
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: uni1EEF	Contours detected: 3	Expected: 2
Glyph name: Tbar	Contours detected: 2	Expected: 1
Glyph name: uni1EE1	Contours detected: 4	Expected: 3
Glyph name: uni1E1C	Contours detected: 3	Expected: 2
Glyph name: uni1EED	Contours detected: 3	Expected: 2
Glyph name: uni1EF0	Contours detected: 3	Expected: 2
Glyph name: ohorn	Contours detected: 3	Expected: 2
Glyph name: uni2761	Contours detected: 3	Expected: 2
Glyph name: lira	Contours detected: 2	Expected: 1
Glyph name: uni1EE8	Contours detected: 3	Expected: 2
Glyph name: Uhorn	Contours detected: 2	Expected: 1
Glyph name: uni1E1D	Contours detected: 4	Expected: 3
Glyph name: uhorn	Contours detected: 2	Expected: 1 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there caret positions declared for every ligature?</summary>

* [com.google.fonts/check/ligature_carets](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/ligature_carets)
<pre>--- Rationale ---

All ligatures in a font must have corresponding caret (text cursor) positions
defined in the GDEF table, otherwhise, users may experience issues with caret
rendering.


</pre>

* ⚠ **WARN** This font lacks caret position values for ligature glyphs on its GDEF table. [code: lacks-caret-pos]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
<pre>--- Rationale ---

Fonts with ligatures should have kerning on the corresponding non-ligated
sequences for text where ligatures aren&#x27;t used (eg
https://github.com/impallari/Raleway/issues/14).


</pre>

* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + f
	- f + i
	- i + f
	- f + l
	- l + f
	- i + l

   [code: lacks-kern-info]

</details>
<details>
<summary>💤 <b>SKIP:</b> Does DESCRIPTION file contain broken links?</summary>

* [com.google.fonts/check/description/broken_links](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/description/broken_links)
<pre>--- Rationale ---

The snippet of HTML in the DESCRIPTION.en_us.html file is added to the font
family webpage on the Google Fonts website. For that reason, all hyperlinks in
it must be properly working. 


</pre>

* 💤 **SKIP** Unfulfilled Conditions: description

</details>
<details>
<summary>💤 <b>SKIP:</b> Does DESCRIPTION file contain a upstream Git repo URL?</summary>

* [com.google.fonts/check/description/git_url](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/description/git_url)
<pre>--- Rationale ---

The contents of the DESCRIPTION.en-us.html file are displayed on the Google
Fonts website in the about section of each font family specimen page.

Since all of the Google Fonts collection is composed of libre-licensed fonts,
this check enforces a policy that there must be a hypertext link in that page
directing users to the repository where the font project files are made
available.

Such hosting is typically done on sites like Github, Gitlab, GNU Savannah or
any other git-based version control service.


</pre>

* 💤 **SKIP** Unfulfilled Conditions: description

</details>
<details>
<summary>💤 <b>SKIP:</b> Does DESCRIPTION file mention when a family is available as variable font?</summary>

* [com.google.fonts/check/description/variable_font](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/description/variable_font)
<pre>--- Rationale ---

Families with variable fonts do not always mention that in their descriptions.
Therefore, this check ensures that a standard boilerplate sentence is present
in the DESCRIPTION.en_us.html files for all those families which are available
as variable fonts.


</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, description

</details>
<details>
<summary>💤 <b>SKIP:</b> Is this a proper HTML snippet?</summary>

* [com.google.fonts/check/description/valid_html](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/description/valid_html)
<pre>--- Rationale ---

When packaging families for being pushed to the `google/fonts` git repo, if
there is no DESCRIPTION.en_us.html file, some older versions of the
`add_font.py` tool insert a dummy description file which contains invalid html.

This file needs to either be replaced with an existing description file or
edited by hand.


</pre>

* 💤 **SKIP** Unfulfilled Conditions: descfile

</details>
<details>
<summary>💤 <b>SKIP:</b> DESCRIPTION.en_us.html must have more than 200 bytes.</summary>

* [com.google.fonts/check/description/min_length](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/description/min_length)

* 💤 **SKIP** Unfulfilled Conditions: description

</details>
<details>
<summary>💤 <b>SKIP:</b> DESCRIPTION.en_us.html must have less than 1000 bytes.</summary>

* [com.google.fonts/check/description/max_length](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/description/max_length)

* 💤 **SKIP** Unfulfilled Conditions: description

</details>
<details>
<summary>💤 <b>SKIP:</b> Font has ttfautohint params?</summary>

* [com.google.fonts/check/has_ttfautohint_params](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/has_ttfautohint_params)

* 💤 **SKIP** Font appears to our heuristic as not hinted using ttfautohint. [code: not-hinted]

</details>
<details>
<summary>💤 <b>SKIP:</b> METADATA.pb: Fontfamily is listed on Google Fonts API?</summary>

* [com.google.fonts/check/metadata/listed_on_gfonts](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/metadata/listed_on_gfonts)

* 💤 **SKIP** Unfulfilled Conditions: family_metadata

</details>
<details>
<summary>💤 <b>SKIP:</b> Checks METADATA.pb font.name field matches family name declared on the name table.</summary>

* [com.google.fonts/check/metadata/nameid/family_name](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/metadata/nameid/family_name)

* 💤 **SKIP** Unfulfilled Conditions: font_metadata

</details>
<details>
<summary>💤 <b>SKIP:</b> Checks METADATA.pb font.post_script_name matches postscript name declared on the name table.</summary>

* [com.google.fonts/check/metadata/nameid/post_script_name](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/metadata/nameid/post_script_name)

* 💤 **SKIP** Unfulfilled Conditions: font_metadata

</details>
<details>
<summary>💤 <b>SKIP:</b> METADATA.pb font.full_name value matches fullname declared on the name table?</summary>

* [com.google.fonts/check/metadata/nameid/full_name](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/metadata/nameid/full_name)

* 💤 **SKIP** Unfulfilled Conditions: font_metadata

</details>
<details>
<summary>💤 <b>SKIP:</b> METADATA.pb font.name value should be same as the family name declared on the name table.</summary>

* [com.google.fonts/check/metadata/nameid/font_name](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/metadata/nameid/font_name)

* 💤 **SKIP** Unfulfilled Conditions: font_metadata

</details>
<details>
<summary>💤 <b>SKIP:</b> METADATA.pb font.full_name and font.post_script_name fields have equivalent values ?</summary>

* [com.google.fonts/check/metadata/match_fullname_postscript](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/metadata/match_fullname_postscript)

* 💤 **SKIP** Unfulfilled Conditions: font_metadata

</details>
<details>
<summary>💤 <b>SKIP:</b> METADATA.pb font.filename and font.post_script_name fields have equivalent values?</summary>

* [com.google.fonts/check/metadata/match_filename_postscript](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/metadata/match_filename_postscript)

* 💤 **SKIP** Unfulfilled Conditions: font_metadata

</details>
<details>
<summary>💤 <b>SKIP:</b> METADATA.pb font.name field contains font name in right format?</summary>

* [com.google.fonts/check/metadata/valid_name_values](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/metadata/valid_name_values)

* 💤 **SKIP** Unfulfilled Conditions: font_metadata

</details>
<details>
<summary>💤 <b>SKIP:</b> METADATA.pb font.full_name field contains font name in right format?</summary>

* [com.google.fonts/check/metadata/valid_full_name_values](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/metadata/valid_full_name_values)

* 💤 **SKIP** Unfulfilled Conditions: font_metadata

</details>
<details>
<summary>💤 <b>SKIP:</b> METADATA.pb font.filename field contains font name in right format?</summary>

* [com.google.fonts/check/metadata/valid_filename_values](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/metadata/valid_filename_values)

* 💤 **SKIP** Unfulfilled Conditions: family_metadata

</details>
<details>
<summary>💤 <b>SKIP:</b> METADATA.pb font.post_script_name field contains font name in right format?</summary>

* [com.google.fonts/check/metadata/valid_post_script_name_values](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/metadata/valid_post_script_name_values)

* 💤 **SKIP** Unfulfilled Conditions: font_metadata

</details>
<details>
<summary>💤 <b>SKIP:</b> Copyright notices match canonical pattern in METADATA.pb</summary>

* [com.google.fonts/check/metadata/valid_copyright](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/metadata/valid_copyright)

* 💤 **SKIP** Unfulfilled Conditions: font_metadata

</details>
<details>
<summary>💤 <b>SKIP:</b> Copyright notice on METADATA.pb should not contain 'Reserved Font Name'.</summary>

* [com.google.fonts/check/metadata/reserved_font_name](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/metadata/reserved_font_name)

* 💤 **SKIP** Unfulfilled Conditions: font_metadata

</details>
<details>
<summary>💤 <b>SKIP:</b> METADATA.pb: Copyright notice shouldn't exceed 500 chars.</summary>

* [com.google.fonts/check/metadata/copyright_max_length](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/metadata/copyright_max_length)

* 💤 **SKIP** Unfulfilled Conditions: font_metadata

</details>
<details>
<summary>💤 <b>SKIP:</b> METADATA.pb font.style "italic" matches font internals?</summary>

* [com.google.fonts/check/metadata/italic_style](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/metadata/italic_style)

* 💤 **SKIP** Unfulfilled Conditions: font_metadata

</details>
<details>
<summary>💤 <b>SKIP:</b> METADATA.pb font.style "normal" matches font internals?</summary>

* [com.google.fonts/check/metadata/normal_style](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/metadata/normal_style)

* 💤 **SKIP** Unfulfilled Conditions: font_metadata

</details>
<details>
<summary>💤 <b>SKIP:</b> METADATA.pb font.name and font.full_name fields match the values declared on the name table?</summary>

* [com.google.fonts/check/metadata/nameid/family_and_full_names](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/metadata/nameid/family_and_full_names)

* 💤 **SKIP** Unfulfilled Conditions: font_metadata

</details>
<details>
<summary>💤 <b>SKIP:</b> METADATA.pb: Check if fontname is not camel cased.</summary>

* [com.google.fonts/check/metadata/fontname_not_camel_cased](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/metadata/fontname_not_camel_cased)

* 💤 **SKIP** Unfulfilled Conditions: font_metadata

</details>
<details>
<summary>💤 <b>SKIP:</b> METADATA.pb: Check font name is the same as family name.</summary>

* [com.google.fonts/check/metadata/match_name_familyname](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/metadata/match_name_familyname)

* 💤 **SKIP** Unfulfilled Conditions: family_metadata, font_metadata

</details>
<details>
<summary>💤 <b>SKIP:</b> METADATA.pb: Check that font weight has a canonical value.</summary>

* [com.google.fonts/check/metadata/canonical_weight_value](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/metadata/canonical_weight_value)

* 💤 **SKIP** Unfulfilled Conditions: font_metadata

</details>
<details>
<summary>💤 <b>SKIP:</b> Checking OS/2 usWeightClass matches weight specified at METADATA.pb.</summary>

* [com.google.fonts/check/metadata/os2_weightclass](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/metadata/os2_weightclass)

* 💤 **SKIP** Unfulfilled Conditions: font_metadata

</details>
<details>
<summary>💤 <b>SKIP:</b> METADATA.pb weight matches postScriptName.</summary>

* [com.google.fonts/check/metadata/match_weight_postscript](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/metadata/match_weight_postscript)

* 💤 **SKIP** Unfulfilled Conditions: font_metadata

</details>
<details>
<summary>💤 <b>SKIP:</b> METADATA.pb: Font styles are named canonically?</summary>

* [com.google.fonts/check/metadata/canonical_style_names](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/metadata/canonical_style_names)

* 💤 **SKIP** Unfulfilled Conditions: font_metadata

</details>
<details>
<summary>💤 <b>SKIP:</b> Copyright field for this font on METADATA.pb matches all copyright notice entries on the name table ?</summary>

* [com.google.fonts/check/metadata/nameid/copyright](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/metadata/nameid/copyright)

* 💤 **SKIP** Unfulfilled Conditions: font_metadata

</details>
<details>
<summary>💤 <b>SKIP:</b> Check a static ttf can be generated from a variable font.</summary>

* [com.google.fonts/check/varfont/generate_static](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/varfont/generate_static)
<pre>--- Rationale ---

Google Fonts may serve static fonts which have been generated from variable
fonts. This test will attempt to generate a static ttf using fontTool&#x27;s varLib
mutator.

The target font will be the mean of each axis e.g:

**VF font axes**

- min weight, max weight = 400, 800
- min width, max width = 50, 100

**Target Instance**

- weight = 600
- width = 75


</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> Check that variable fonts have an HVAR table.</summary>

* [com.google.fonts/check/varfont/has_HVAR](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/varfont/has_HVAR)
<pre>--- Rationale ---

Not having a HVAR table can lead to costly text-layout operations on some
platforms, which we want to avoid.

So, all variable fonts on the Google Fonts collection should have an HVAR with
valid values.

More info on the HVAR table can be found at:
https://docs.microsoft.com/en-us/typography/opentype/spec/otvaroverview#variation-data-tables-and-miscellaneous-requirements


</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> All name entries referenced by fvar instances exist on the name table?</summary>

* [com.google.fonts/check/fvar_name_entries](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/fvar_name_entries)
<pre>--- Rationale ---

The purpose of this check is to make sure that all name entries referenced by
variable font instances do exist in the name table.


</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> A variable font must have named instances.</summary>

* [com.google.fonts/check/varfont_has_instances](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/varfont_has_instances)
<pre>--- Rationale ---

Named instances must be present in all variable fonts in order not to frustrate
the users&#x27; typical expectations of a traditional static font workflow.


</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> Variable font weight coordinates must be multiples of 100.</summary>

* [com.google.fonts/check/varfont_weight_instances](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/varfont_weight_instances)
<pre>--- Rationale ---

The named instances on the weight axis of a variable font must have coordinates
that are multiples of 100 on the design space.


</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> Directory name in GFonts repo structure must match NameID 1 of the regular.</summary>

* [com.google.fonts/check/repo/dirname_matches_nameid_1](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/repo/dirname_matches_nameid_1)

* 💤 **SKIP** Unfulfilled Conditions: gfonts_repo_structure

</details>
<details>
<summary>💤 <b>SKIP:</b> Check variable font instances have correct coordinate values</summary>

* [com.google.fonts/check/varfont_instance_coordinates](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/varfont_instance_coordinates)

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> Check variable font instances have correct names</summary>

* [com.google.fonts/check/varfont_instance_names](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/varfont_instance_names)

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> Checking with ftxvalidator.</summary>

* [com.google.fonts/check/ftxvalidator](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/ftxvalidator)

* 💤 **SKIP** Unfulfilled Conditions: ftxvalidator_is_available

</details>
<details>
<summary>💤 <b>SKIP:</b> Is the CFF subr/gsubr call depth > 10?</summary>

* [com.adobe.fonts/check/cff_call_depth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff_call_depth)
<pre>--- Rationale ---

Per &quot;The Type 2 Charstring Format, Technical Note #5177&quot;, the &quot;Subr nesting,
stack limit&quot; is 10.


</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_cff

</details>
<details>
<summary>💤 <b>SKIP:</b> Is the CFF2 subr/gsubr call depth > 10?</summary>

* [com.adobe.fonts/check/cff2_call_depth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cff.html#com.adobe.fonts/check/cff2_call_depth)
<pre>--- Rationale ---

Per &quot;The CFF2 CharString Format&quot;, the &quot;Subr nesting, stack limit&quot; is 10.


</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_cff2

</details>
<details>
<summary>💤 <b>SKIP:</b> CFF table FontName must match name table ID 6 (PostScript name).</summary>

* [com.adobe.fonts/check/name/postscript_vs_cff](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/postscript_vs_cff)
<pre>--- Rationale ---

The PostScript name entries in the font&#x27;s &#x27;name&#x27; table should match the
FontName string in the &#x27;CFF &#x27; table.

The &#x27;CFF &#x27; table has a lot of information that is duplicated in other tables.
This information should be consistent across tables, because there&#x27;s no
guarantee which table an app will get the data from.


</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_cff

</details>
<details>
<summary>💤 <b>SKIP:</b> Monospace font has hhea.advanceWidthMax equal to each glyph's advanceWidth?</summary>

* [com.google.fonts/check/monospace_max_advancewidth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hhea.html#com.google.fonts/check/monospace_max_advancewidth)

* 💤 **SKIP** Font is not monospaced.

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be 400 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_wght_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_wght_coord)
<pre>--- Rationale ---

According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght

If a variable font has a &#x27;wght&#x27; (Weight) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be 400.


</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_wght_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wdth' (Width) axis coordinate must be 100 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_wdth_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_wdth_coord)
<pre>--- Rationale ---

According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wdth&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wdth

If a variable font has a &#x27;wdth&#x27; (Width) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be 100.


</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_wdth_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'slnt' (Slant) axis coordinate must be zero on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_slnt_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_slnt_coord)
<pre>--- Rationale ---

According to the Open-Type spec&#x27;s registered design-variation tag &#x27;slnt&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_slnt

If a variable font has a &#x27;slnt&#x27; (Slant) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be zero.


</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_slnt_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'ital' (Italic) axis coordinate must be zero on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_ital_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_ital_coord)
<pre>--- Rationale ---

According to the Open-Type spec&#x27;s registered design-variation tag &#x27;ital&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_ital

If a variable font has a &#x27;ital&#x27; (Italic) axis, then the coordinate of its
&#x27;Regular&#x27; instance is required to be zero.


</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_ital_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'opsz' (Optical Size) axis coordinate should be between 9 and 13 on the 'Regular' instance.</summary>

* [com.google.fonts/check/varfont/regular_opsz_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/regular_opsz_coord)
<pre>--- Rationale ---

According to the Open-Type spec&#x27;s registered design-variation tag &#x27;opsz&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_opsz

If a variable font has a &#x27;opsz&#x27; (Optical Size) axis, then the coordinate of its
&#x27;Regular&#x27; instance is recommended to be a value in the range 9 to 13.


</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, regular_opsz_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be 700 on the 'Bold' instance.</summary>

* [com.google.fonts/check/varfont/bold_wght_coord](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/bold_wght_coord)
<pre>--- Rationale ---

The Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27; available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght does
not specify a required value for the &#x27;Bold&#x27; instance of a variable font.

But Dave Crossland suggested that we should enforce a required value of 700 in
this case.


</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, bold_wght_coord

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wght' (Weight) axis coordinate must be within spec range of 1 to 1000 on all instances.</summary>

* [com.google.fonts/check/varfont/wght_valid_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/wght_valid_range)
<pre>--- Rationale ---

According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wght&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wght

On the &#x27;wght&#x27; (Weight) axis, the valid coordinate range is 1-1000.


</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'wdth' (Weight) axis coordinate must be within spec range of 1 to 1000 on all instances.</summary>

* [com.google.fonts/check/varfont/wdth_valid_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/wdth_valid_range)
<pre>--- Rationale ---

According to the Open-Type spec&#x27;s registered design-variation tag &#x27;wdth&#x27;
available at
https://docs.microsoft.com/en-gb/typography/opentype/spec/dvaraxistag_wdth

On the &#x27;wdth&#x27; (Width) axis, the valid coordinate range is 1-1000


</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font

</details>
<details>
<summary>💤 <b>SKIP:</b> The variable font 'slnt' (Slant) axis coordinate specifies positive values in its range? </summary>

* [com.google.fonts/check/varfont/slnt_range](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/fvar.html#com.google.fonts/check/varfont/slnt_range)
<pre>--- Rationale ---

The OpenType spec says at
https://docs.microsoft.com/en-us/typography/opentype/spec/dvaraxistag_slnt
that:

[...] the scale for the Slant axis is interpreted as the angle of slant in
counter-clockwise degrees from upright. This means that a typical,
right-leaning oblique design will have a negative slant value. This matches the
scale used for the italicAngle field in the post table.


</pre>

* 💤 **SKIP** Unfulfilled Conditions: is_variable_font, slnt_axis

</details>
<details>
<summary>ℹ <b>INFO:</b> Show hinting filesize impact.</summary>

* [com.google.fonts/check/hinting_impact](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/hinting_impact)
<pre>--- Rationale ---

This check is merely informative, displaying and useful comparison of filesizes
after ttfautohint usage versus unhinted font files.


</pre>

* ℹ **INFO** Hinting filesize impact:

|  | WorkSans-SemiBold.ttf |
|:--- | ---:|
| Dehinted Size | 173.0kb |
| Hinted Size | 217.4kb |
| Increase | 44.4kb |
| Change   | 25.7 % |
 [code: size-impact]

</details>
<details>
<summary>ℹ <b>INFO:</b> EPAR table present in font?</summary>

* [com.google.fonts/check/epar](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/epar)
<pre>--- Rationale ---

The EPAR table is/was a way of expressing common licensing permissions and
restrictions in metadata; while almost nothing supported it, Dave Crossland
wonders that adding it to everything in Google Fonts could help make it more
popular.

More info is available at:
https://davelab6.github.io/epar/


</pre>

* ℹ **INFO** EPAR table not present in font. To learn more see https://github.com/googlefonts/fontbakery/issues/818 [code: lacks-EPAR]

</details>
<details>
<summary>ℹ <b>INFO:</b> Is the Grid-fitting and Scan-conversion Procedure ('gasp') table set to optimize rendering?</summary>

* [com.google.fonts/check/gasp](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/gasp)
<pre>--- Rationale ---

Traditionally version 0 &#x27;gasp&#x27; tables were set so that font sizes below 8 ppem
had no grid fitting but did have antialiasing. From 9-16 ppem, just grid
fitting. And fonts above 17ppem had both antialiasing and grid fitting toggled
on. The use of accelerated graphics cards and higher resolution screens make
this approach obsolete. Microsoft&#x27;s DirectWrite pushed this even further with
much improved rendering built into the OS and apps.

In this scenario it makes sense to simply toggle all 4 flags ON for all font
sizes.


</pre>

* ℹ **INFO** These are the ppm ranges declared on the gasp table:

PPM <= 65535:
	flag = 0x0F
	- Use grid-fitting
	- Use grayscale rendering
	- Use gridfitting with ClearType symmetric smoothing
	- Use smoothing along multiple axes with ClearType®
 [code: ranges]
* 🍞 **PASS** The 'gasp' table is correctly set, with one gaspRange:value of 0xFFFF:0x0F.

</details>
<details>
<summary>ℹ <b>INFO:</b> Familyname must be unique according to namecheck.fontdata.com</summary>

* [com.google.fonts/check/fontdata_namecheck](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/fontdata_namecheck)
<pre>--- Rationale ---

We need to check names are not already used, and today the best place to check
that is http://namecheck.fontdata.com


</pre>

* ℹ **INFO** The family name "WorkSans" seems to be already in use.
Please visit http://namecheck.fontdata.com for more info. [code: name-collision]

</details>
<details>
<summary>ℹ <b>INFO:</b> Check for font-v versioning.</summary>

* [com.google.fonts/check/fontv](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/fontv)
<pre>--- Rationale ---

The git sha1 tagging and dev/release features of Source Foundry `font-v` tool
are awesome and we would love to consider upstreaming the approach into
fontmake someday. For now we only emit a WARN if a given font does not yet
follow the experimental versioning style, but at some point we may start
enforcing it.


</pre>

* ℹ **INFO** Version string is: "Version 2.008; ttfautohint (v1.8.3)"
The version string must ideally include a git commit hash and either a "dev" or a "release" suffix such as in the example below:
"Version 1.3; git-0d08353-release" [code: bad-format]

</details>
<details>
<summary>ℹ <b>INFO:</b> Font contains all required tables?</summary>

* [com.google.fonts/check/required_tables](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/required_tables)
<pre>--- Rationale ---

Depending on the typeface and coverage of a font, certain tables are
recommended for optimum quality. For example, the performance of a non-linear
font is improved if the VDMX, LTSH, and hdmx tables are present. Non-monospaced
Latin fonts should have a kern table. A gasp table is necessary if a designer
wants to influence the sizes at which grayscaling is used under Windows. A DSIG
table containing a digital signature helps ensure the integrity of the font
file. Etc.


</pre>

* ℹ **INFO** This font contains the following optional tables [fpgm, GSUB, loca, prep, cvt , gasp, GPOS, DSIG]
* 🍞 **PASS** Font contains all required tables.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking file is named canonically.</summary>

* [com.google.fonts/check/canonical_filename](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/canonical_filename)
<pre>--- Rationale ---

A font&#x27;s filename must be composed in the following manner:
&lt;familyname&gt;-&lt;stylename&gt;.ttf

- Nunito-Regular.ttf,
- Oswald-BoldItalic.ttf

Variable fonts must list the axis tags in alphabetical order in square brackets
and separated by commas:

- Roboto[wdth,wght].ttf
- Familyname-Italic[wght].ttf


</pre>

* 🍞 **PASS** WorkSans-SemiBold.ttf is named canonically.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking OS/2 fsType does not impose restrictions.</summary>

* [com.google.fonts/check/fstype](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/fstype)
<pre>--- Rationale ---

The fsType in the OS/2 table is a legacy DRM-related field. Fonts in the Google
Fonts collection must have it set to zero (also known as &quot;Installable
Embedding&quot;). This setting indicates that the fonts can be embedded in documents
and permanently installed by applications on remote systems.

More detailed info is available at:
https://docs.microsoft.com/en-us/typography/opentype/spec/os2#fstype


</pre>

* 🍞 **PASS** OS/2 fsType is properly set to zero.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking OS/2 achVendID.</summary>

* [com.google.fonts/check/vendor_id](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/vendor_id)

* 🍞 **PASS** OS/2 VendorID 'WEI ' looks good!

</details>
<details>
<summary>🍞 <b>PASS:</b> Check `Google Fonts Latin Core` glyph coverage.</summary>

* [com.google.fonts/check/glyph_coverage](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/glyph_coverage)
<pre>--- Rationale ---

Google Fonts expects that fonts in its collection support at least the minimal
set of characters defined in the `GF-latin-core` glyph-set.


</pre>

* 🍞 **PASS** OK

</details>
<details>
<summary>🍞 <b>PASS:</b> Substitute copyright, registered and trademark symbols in name table entries.</summary>

* [com.google.fonts/check/name/unwanted_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/unwanted_chars)

* 🍞 **PASS** No need to substitute copyright, registered and trademark symbols in name table entries of this font.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking OS/2 usWeightClass.</summary>

* [com.google.fonts/check/usweightclass](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/usweightclass)

* 🍞 **PASS** OS/2 usWeightClass value looks good!

</details>
<details>
<summary>🍞 <b>PASS:</b> Check copyright namerecords match license file.</summary>

* [com.google.fonts/check/name/license](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/license)

* 🍞 **PASS** Licensing entry on name table is correctly set.

</details>
<details>
<summary>🍞 <b>PASS:</b> License URL matches License text on name table?</summary>

* [com.google.fonts/check/name/license_url](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/license_url)

* 🍞 **PASS** Font has a valid license URL in NAME table.

</details>
<details>
<summary>🍞 <b>PASS:</b> Description strings in the name table must not exceed 200 characters.</summary>

* [com.google.fonts/check/name/description_max_length](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/description_max_length)
<pre>--- Rationale ---

An old FontLab version had a bug which caused it to store copyright notices in
nameID 10 entries.

In order to detect those and distinguish them from actual legitimate usage of
this name table entry, we expect that such strings do not exceed a reasonable
length of 200 chars.

Longer strings are likely instances of the FontLab bug.


</pre>

* 🍞 **PASS** All description name records have reasonably small lengths.

</details>
<details>
<summary>🍞 <b>PASS:</b> Version format is correct in 'name' table?</summary>

* [com.google.fonts/check/name/version_format](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/version_format)

* 🍞 **PASS** Version format in NAME table entries is correct.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font has old ttfautohint applied?</summary>

* [com.google.fonts/check/old_ttfautohint](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/old_ttfautohint)
<pre>--- Rationale ---

This check finds which version of ttfautohint was used, by inspecting name
table entries and then finds which version of ttfautohint is currently
installed in the system.


</pre>

* 🍞 **PASS** ttfautohint available in the system (1.8.2) is older than the one used in the font (1.8.3).

</details>
<details>
<summary>🍞 <b>PASS:</b> Make sure family name does not begin with a digit.</summary>

* [com.google.fonts/check/name/familyname_first_char](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/familyname_first_char)
<pre>--- Rationale ---

Font family names which start with a numeral are often not discoverable in
Windows applications.


</pre>

* 🍞 **PASS** Font family name first character is not a digit.

</details>
<details>
<summary>🍞 <b>PASS:</b> Are there non-ASCII characters in ASCII-only NAME table entries?</summary>

* [com.google.fonts/check/name/ascii_only_entries](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/ascii_only_entries)
<pre>--- Rationale ---

The OpenType spec requires ASCII for the POSTSCRIPT_NAME (nameID 6).

For COPYRIGHT_NOTICE (nameID 0) ASCII is required because that string should be
the same in CFF fonts which also have this requirement in the OpenType spec.

Note:
A common place where we find non-ASCII strings is on name table entries with
NameID &gt; 18, which are expressly for localising the ASCII-only IDs into Hindi /
Arabic / etc.


</pre>

* 🍞 **PASS** None of the ASCII-only NAME table entries contain non-ASCII characteres.

</details>
<details>
<summary>🍞 <b>PASS:</b> Copyright notices match canonical pattern in fonts</summary>

* [com.google.fonts/check/font_copyright](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/font_copyright)

* 🍞 **PASS** Name Table entry: Copyright field 'Copyright 2019 The Work Sans Project Authors (https://github.com/weiweihuanghuang/Work-Sans)' matches canonical pattern.
* 🍞 **PASS** Name table copyright entries are good

</details>
<details>
<summary>🍞 <b>PASS:</b> Version number has increased since previous release on Google Fonts?</summary>

* [com.google.fonts/check/version_bump](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/version_bump)

* 🍞 **PASS** Version number 2.00799560546875 is greater than version on Google Fonts GitHub (1.399993896484375) and production servers (1.399993896484375).

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking OS/2 fsSelection value.</summary>

* [com.google.fonts/check/fsselection](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/fsselection)

* 🍞 **PASS** OS/2 fsSelection REGULAR bit is properly set.
* 🍞 **PASS** OS/2 fsSelection ITALIC bit is properly set.
* 🍞 **PASS** OS/2 fsSelection BOLD bit is properly set.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking post.italicAngle value.</summary>

* [com.google.fonts/check/italic_angle](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/italic_angle)
<pre>--- Rationale ---

The &#x27;post&#x27; table italicAngle property should be a reasonable amount, likely not
more than -20°, never more than -30°, and never greater than 0°. Note that in
the OpenType specification, the value is negative for a lean rightwards.

https://docs.microsoft.com/en-us/typography/opentype/spec/post


</pre>

* 🍞 **PASS** Value of post.italicAngle is 0.0 with style="SemiBold".

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking head.macStyle value.</summary>

* [com.google.fonts/check/mac_style](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/mac_style)
<pre>--- Rationale ---

The values of the flags on the macStyle entry on the &#x27;head&#x27; OpenType table that
describe whether a font is bold and/or italic must be coherent with the actual
style of the font as inferred by its filename.


</pre>

* 🍞 **PASS** head macStyle ITALIC bit is properly set.
* 🍞 **PASS** head macStyle BOLD bit is properly set.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font has all mandatory 'name' table entries?</summary>

* [com.google.fonts/check/name/mandatory_entries](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/mandatory_entries)

* 🍞 **PASS** Font contains values for all mandatory name table entries.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check name table: FONT_FAMILY_NAME entries.</summary>

* [com.google.fonts/check/name/familyname](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/familyname)
<pre>--- Rationale ---

Checks that the family name infered from the font filename matches the string
at nameID 1 (NAMEID_FONT_FAMILY_NAME) if it conforms to RIBBI and otherwise
checks that nameID 1 is the family name + the style name.


</pre>

* 🍞 **PASS** FONT_FAMILY_NAME entries are all good. [code: ok]

</details>
<details>
<summary>🍞 <b>PASS:</b> Check name table: FONT_SUBFAMILY_NAME entries.</summary>

* [com.google.fonts/check/name/subfamilyname](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/subfamilyname)

* 🍞 **PASS** FONT_SUBFAMILY_NAME entries are all good.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check name table: FULL_FONT_NAME entries.</summary>

* [com.google.fonts/check/name/fullfontname](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/fullfontname)

* 🍞 **PASS** FULL_FONT_NAME entries are all good.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check name table: POSTSCRIPT_NAME entries.</summary>

* [com.google.fonts/check/name/postscriptname](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/postscriptname)

* 🍞 **PASS** POSTCRIPT_NAME entries are all good.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check name table: TYPOGRAPHIC_FAMILY_NAME entries.</summary>

* [com.google.fonts/check/name/typographicfamilyname](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/typographicfamilyname)

* 🍞 **PASS** TYPOGRAPHIC_FAMILY_NAME entries are all good.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check name table: TYPOGRAPHIC_SUBFAMILY_NAME entries.</summary>

* [com.google.fonts/check/name/typographicsubfamilyname](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/typographicsubfamilyname)

* 🍞 **PASS** TYPOGRAPHIC_SUBFAMILY_NAME entries are all good.

</details>
<details>
<summary>🍞 <b>PASS:</b> Length of copyright notice must not exceed 500 characters.</summary>

* [com.google.fonts/check/name/copyright_length](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/copyright_length)
<pre>--- Rationale ---

This is an arbitrary max length for the copyright notice field of the name
table. We simply don&#x27;t want such notices to be too long. Typically such notices
are actually much shorter than this with a length of roughly 70 or 80
characters.


</pre>

* 🍞 **PASS** All copyright notice name entries on the 'name' table are shorter than 500 characters.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font enables smart dropout control in "prep" table instructions?</summary>

* [com.google.fonts/check/smart_dropout](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/smart_dropout)
<pre>--- Rationale ---

This setup is meant to ensure consistent rendering quality for fonts across all
devices (with different rendering/hinting capabilities).

Below is the snippet of instructions we expect to see in the fonts:
B8 01 FF    PUSHW 0x01FF
85          SCANCTRL (unconditinally turn on
                      dropout control mode)
B0 04       PUSHB 0x04
8D          SCANTYPE (enable smart dropout control)

&quot;Smart dropout control&quot; means activating rules 1, 2 and 5:
Rule 1: If a pixel&#x27;s center falls within the glyph outline,
        that pixel is turned on.
Rule 2: If a contour falls exactly on a pixel&#x27;s center,
        that pixel is turned on.
Rule 5: If a scan line between two adjacent pixel centers
        (either vertical or horizontal) is intersected
        by both an on-Transition contour and an off-Transition
        contour and neither of the pixels was already turned on
        by rules 1 and 2, turn on the pixel which is closer to
        the midpoint between the on-Transition contour and
        off-Transition contour. This is &quot;Smart&quot; dropout control.

For more detailed info (such as other rules not enabled in this snippet),
please refer to the TrueType Instruction Set documentation.


</pre>

* 🍞 **PASS** 'prep' table contains instructions enabling smart dropout control.

</details>
<details>
<summary>🍞 <b>PASS:</b> There must not be VTT Talk sources in the font.</summary>

* [com.google.fonts/check/vttclean](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/vttclean)
<pre>--- Rationale ---

The goal here is to reduce filesizes and improve pageloading when dealing with
webfonts.

The VTT Talk sources are not necessary at runtime and endup being just dead
weight when left embedded in the font binaries. The sources should be kept on
the project files but stripped out when building release binaries.


</pre>

* 🍞 **PASS** There are no tables with VTT Talk sources embedded in the font.

</details>
<details>
<summary>🍞 <b>PASS:</b> Are there unwanted Apple tables?</summary>

* [com.google.fonts/check/aat](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/aat)
<pre>--- Rationale ---

Apple&#x27;s TrueType reference manual [1] describes SFNT tables not in the
Microsoft OpenType specification [2] and these can sometimes sneak into final
release files, but Google Fonts should only have OpenType tables.

[1] https://developer.apple.com/fonts/TrueType-Reference-Manual/RM06/Chap6.html
[2] https://docs.microsoft.com/en-us/typography/opentype/spec/


</pre>

* 🍞 **PASS** There are no unwanted AAT tables.

</details>
<details>
<summary>🍞 <b>PASS:</b> PPEM must be an integer on hinted fonts.</summary>

* [com.google.fonts/check/integer_ppem_if_hinted](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/integer_ppem_if_hinted)
<pre>--- Rationale ---

Hinted fonts must have head table flag bit 3 set.

Per https://docs.microsoft.com/en-us/typography/opentype/spec/head, bit 3 of
Head::flags decides whether PPEM should be rounded. This bit should always be
set for hinted fonts.

Note:
Bit 3 = Force ppem to integer values for all internal scaler math;
        May use fractional ppem sizes if this bit is clear;


</pre>

* 🍞 **PASS** OK

</details>
<details>
<summary>🍞 <b>PASS:</b> Combined length of family and style must not exceed 27 characters.</summary>

* [com.google.fonts/check/name/family_and_style_max_length](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/family_and_style_max_length)
<pre>--- Rationale ---

According to a GlyphsApp tutorial [1], in order to make sure all versions of
Windows recognize it as a valid font file, we must make sure that the
concatenated length of the familyname (NameID.FONT_FAMILY_NAME) and style
(NameID.FONT_SUBFAMILY_NAME) strings in the name table do not exceed 20
characters.

After discussing the problem in more detail at `FontBakery issue #2179 [2] we
decided that allowing up to 27 chars would still be on the safe side, though.

[1]
https://glyphsapp.com/tutorials/multiple-masters-part-3-setting-up-instances
[2] https://github.com/googlefonts/fontbakery/issues/2179


</pre>

* 🍞 **PASS** All name entries are good.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check if the vertical metrics of a family are similar to the same family hosted on Google Fonts.</summary>

* [com.google.fonts/check/vertical_metrics_regressions](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/vertical_metrics_regressions)
<pre>--- Rationale ---

If the family already exists on Google Fonts, we need to ensure that the
checked family&#x27;s vertical metrics are similar. This check will test the
following schema which was outlined in Fontbakery issue #1162 [1]:

- The family should visually have the same vertical metrics as the
  Regular style hosted on Google Fonts.
- If the family on Google Fonts has differing hhea and typo metrics,
  the family being checked should use the typo metrics for both the
  hhea and typo entries.
- If the family on Google Fonts has use typo metrics not enabled and the
  family being checked has it enabled, the hhea and typo metrics
  should use the family on Google Fonts winAscent and winDescent values.
- If the upms differ, the values must be scaled so the visual appearance
  is the same.

[1] https://github.com/googlefonts/fontbakery/issues/1162


</pre>

* 🍞 **PASS** Vertical metrics have not regressed.

</details>
<details>
<summary>🍞 <b>PASS:</b> Name table records must not have trailing spaces.</summary>

* [com.google.fonts/check/name/trailing_spaces](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/name/trailing_spaces)

* 🍞 **PASS** No trailing spaces on name table entries.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking OS/2 usWinAscent & usWinDescent.</summary>

* [com.google.fonts/check/family/win_ascent_and_descent](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/family/win_ascent_and_descent)
<pre>--- Rationale ---

A font&#x27;s winAscent and winDescent values should be greater than the head
table&#x27;s yMax, abs(yMin) values. If they are less than these values, clipping
can occur on Windows platforms
(https://github.com/RedHatBrand/Overpass/issues/33).

If the font includes tall/deep writing systems such as Arabic or Devanagari,
the winAscent and winDescent can be greater than the yMax and abs(yMin) to
accommodate vowel marks.

When the win Metrics are significantly greater than the upm, the linespacing
can appear too loose. To counteract this, enabling the OS/2 fsSelection bit 7
(Use_Typo_Metrics), will force Windows to use the OS/2 typo values instead.
This means the font developer can control the linespacing with the typo values,
whilst avoiding clipping by setting the win values to values greater than the
yMax and abs(yMin).


</pre>

* 🍞 **PASS** OS/2 usWinAscent & usWinDescent values look good!

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking OS/2 Metrics match hhea Metrics.</summary>

* [com.google.fonts/check/os2_metrics_match_hhea](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/os2_metrics_match_hhea)
<pre>--- Rationale ---

When OS/2 and hhea vertical metrics match, the same linespacing results on
macOS, GNU+Linux and Windows. Unfortunately as of 2018, Google Fonts has
released many fonts with vertical metrics that don&#x27;t match in this way. When we
fix this issue in these existing families, we will create a visible change in
line/paragraph layout for either Windows or macOS users, which will upset some
of them.

But we have a duty to fix broken stuff, and inconsistent paragraph layout is
unacceptably broken when it is possible to avoid it.

If users complain and prefer the old broken version, they have the freedom to
take care of their own situation.


</pre>

* 🍞 **PASS** OS/2.sTypoAscender/Descender values match hhea.ascent/descent.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking with ots-sanitize.</summary>

* [com.google.fonts/check/ots](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/ots)

* 🍞 **PASS** ots-sanitize passed this file

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains .notdef as first glyph?</summary>

* [com.google.fonts/check/mandatory_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/mandatory_glyphs)
<pre>--- Rationale ---

The OpenType specification v1.8.2 recommends that the first glyph is the
.notdef glyph without a codepoint assigned and with a drawing.

https://docs.microsoft.com/en-us/typography/opentype/spec/recom#glyph-0-the-notdef-glyph

Pre-v1.8, it was recommended that a font should also contain a .null, CR and
space glyph. This might have been relevant for applications on MacOS 9.


</pre>

* 🍞 **PASS** Font contains the .notdef glyph as the first glyph, it does not have a Unicode value assigned and contains a drawing.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains glyphs for whitespace characters?</summary>

* [com.google.fonts/check/whitespace_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_glyphs)

* 🍞 **PASS** Font contains glyphs for whitespace characters.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font has **proper** whitespace glyph names?</summary>

* [com.google.fonts/check/whitespace_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_glyphnames)

* 🍞 **PASS** Font has **proper** whitespace glyph names.

</details>
<details>
<summary>🍞 <b>PASS:</b> Whitespace glyphs have ink?</summary>

* [com.google.fonts/check/whitespace_ink](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/whitespace_ink)

* 🍞 **PASS** There is no whitespace glyph with ink.

</details>
<details>
<summary>🍞 <b>PASS:</b> Are there unwanted tables?</summary>

* [com.google.fonts/check/unwanted_tables](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unwanted_tables)
<pre>--- Rationale ---

Some font editors store source data in their own SFNT tables, and these can
sometimes sneak into final release files, which should only have OpenType spec
tables.


</pre>

* 🍞 **PASS** There are no unwanted tables.

</details>
<details>
<summary>🍞 <b>PASS:</b> Glyph names are all valid?</summary>

* [com.google.fonts/check/valid_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/valid_glyphnames)
<pre>--- Rationale ---

Microsoft&#x27;s recommendations for OpenType Fonts states the following:

&#x27;NOTE: The PostScript glyph name must be no longer than 31 characters, include
only uppercase or lowercase English letters, European digits, the period or the
underscore, i.e. from the set [A-Za-z0-9_.] and should start with a letter,
except the special glyph name &quot;.notdef&quot; which starts with a period.&#x27;

https://docs.microsoft.com/en-us/typography/opentype/spec/recom#post-table


</pre>

* 🍞 **PASS** Glyph names are all valid.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font contains unique glyph names?</summary>

* [com.google.fonts/check/unique_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/unique_glyphnames)
<pre>--- Rationale ---

Duplicate glyph names prevent font installation on Mac OS X.


</pre>

* 🍞 **PASS** Font contains unique glyph names.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking with fontTools.ttx</summary>

* [com.google.fonts/check/ttx-roundtrip](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/ttx-roundtrip)

* 🍞 **PASS** Hey! It all looks good!

</details>
<details>
<summary>🍞 <b>PASS:</b> Check all glyphs have codepoints assigned.</summary>

* [com.google.fonts/check/all_glyphs_have_codepoints](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/cmap.html#com.google.fonts/check/all_glyphs_have_codepoints)

* 🍞 **PASS** All glyphs have a codepoint value assigned.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking unitsPerEm value is reasonable.</summary>

* [com.google.fonts/check/unitsperem](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/unitsperem)
<pre>--- Rationale ---

According to the OpenType spec:

The value of unitsPerEm at the head table must be a value between 16 and 16384.
Any value in this range is valid.

In fonts that have TrueType outlines, a power of 2 is recommended as this
allows performance optimizations in some rasterizers.

But 1000 is a commonly used value. And 2000 may become increasingly more common
on Variable Fonts.


</pre>

* 🍞 **PASS** The unitsPerEm value (1000) on the 'head' table is reasonable.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking font version fields (head and name table).</summary>

* [com.google.fonts/check/font_version](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/head.html#com.google.fonts/check/font_version)

* 🍞 **PASS** All font version fields match.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check if OS/2 xAvgCharWidth is correct.</summary>

* [com.google.fonts/check/xavgcharwidth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.google.fonts/check/xavgcharwidth)

* 🍞 **PASS** OS/2 xAvgCharWidth value is correct.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check if OS/2 fsSelection matches head macStyle bold and italic bits.</summary>

* [com.adobe.fonts/check/fsselection_matches_macstyle](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.adobe.fonts/check/fsselection_matches_macstyle)
<pre>--- Rationale ---

The bold and italic bits in OS/2.fsSelection must match the bold and italic
bits in head.macStyle per the OpenType spec.


</pre>

* 🍞 **PASS** The OS/2.fsSelection and head.macStyle bold and italic settings match.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check code page character ranges</summary>

* [com.google.fonts/check/code_pages](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/os2.html#com.google.fonts/check/code_pages)
<pre>--- Rationale ---

At least some programs (such as Word and Sublime Text) under Windows 7 do not
recognize fonts unless code page bits are properly set on the ulCodePageRange1
(and/or ulCodePageRange2) fields of the OS/2 table.

More specifically, the fonts are selectable in the font menu, but whichever
Windows API these applications use considers them unsuitable for any character
set, so anything set in these fonts is rendered with a fallback font of Arial.

This check currently does not identify which code pages should be set.
Auto-detecting coverage is not trivial since the OpenType specification leaves
the interpretation of whether a given code page is &quot;functional&quot; or not open to
the font developer to decide.

So here we simply detect as a FAIL when a given font has no code page declared
at all.


</pre>

* 🍞 **PASS** At least one code page is defined.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font has correct post table version (2 for TTF, 3 for OTF)?</summary>

* [com.google.fonts/check/post_table_version](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/post.html#com.google.fonts/check/post_table_version)

* 🍞 **PASS** Font has post table version 2.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check name table for empty records.</summary>

* [com.adobe.fonts/check/name/empty_records](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/empty_records)
<pre>--- Rationale ---

Check the name table for empty records, as this can cause problems in Adobe
apps.


</pre>

* 🍞 **PASS** No empty name table records found.

</details>
<details>
<summary>🍞 <b>PASS:</b> Description strings in the name table must not contain copyright info.</summary>

* [com.google.fonts/check/name/no_copyright_on_description](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/name/no_copyright_on_description)

* 🍞 **PASS** Description strings in the name table do not contain any copyright string.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking correctness of monospaced metadata.</summary>

* [com.google.fonts/check/monospace](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/monospace)
<pre>--- Rationale ---

There are various metadata in the OpenType spec to specify if a font is
monospaced or not. If the font is not trully monospaced, then no monospaced
metadata should be set (as sometimes they mistakenly are...)

Monospace fonts must:

* post.isFixedWidth &quot;Set to 0 if the font is proportionally spaced, non-zero if
the font is not proportionally spaced (monospaced)&quot;
  www.microsoft.com/typography/otspec/post.htm

* hhea.advanceWidthMax must be correct, meaning no glyph&#x27;s width value is
greater.
  www.microsoft.com/typography/otspec/hhea.htm

* OS/2.panose.bProportion must be set to 9 (monospace). Spec says: &quot;The PANOSE
definition contains ten digits each of which currently describes up to sixteen
variations. Windows uses bFamilyType, bSerifStyle and bProportion in the font
mapper to determine family type. It also uses bProportion to determine if the
font is monospaced.&quot;
  www.microsoft.com/typography/otspec/os2.htm#pan
  monotypecom-test.monotype.de/services/pan2

* OS/2.xAverageWidth must be set accurately.
  &quot;OS/2.xAverageWidth IS used when rendering monospaced fonts, at least by
Windows GDI&quot;
  http://typedrawers.com/discussion/comment/15397/#Comment_15397

Also we should report an error for glyphs not of average width


</pre>

* 🍞 **PASS** Font is not monospaced and all related metadata look good. [code: good]

</details>
<details>
<summary>🍞 <b>PASS:</b> Name table entries should not contain line-breaks.</summary>

* [com.google.fonts/check/name/line_breaks](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/name/line_breaks)

* 🍞 **PASS** Name table entries are all single-line (no line-breaks found).

</details>
<details>
<summary>🍞 <b>PASS:</b> Does full font name begin with the font family name?</summary>

* [com.google.fonts/check/name/match_familyname_fullfont](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/name/match_familyname_fullfont)

* 🍞 **PASS** Full font name begins with the font family name.

</details>
<details>
<summary>🍞 <b>PASS:</b> Font follows the family naming recommendations?</summary>

* [com.google.fonts/check/family_naming_recommendations](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/family_naming_recommendations)

* 🍞 **PASS** Font follows the family naming recommendations.

</details>
<details>
<summary>🍞 <b>PASS:</b> Name table strings must not contain the string 'Reserved Font Name'.</summary>

* [com.google.fonts/check/name/rfn](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.google.fonts/check/name/rfn)

* 🍞 **PASS** None of the name table strings contain "Reserved Font Name".

</details>
<details>
<summary>🍞 <b>PASS:</b> Name table ID 6 (PostScript name) must be consistent across platforms.</summary>

* [com.adobe.fonts/check/name/postscript_name_consistency](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/name/postscript_name_consistency)
<pre>--- Rationale ---

The PostScript name entries in the font&#x27;s &#x27;name&#x27; table should be consistent
across platforms.

This is the TTF/CFF2 equivalent of the CFF &#x27;postscript_name_cff_vs_name&#x27; check.


</pre>

* 🍞 **PASS** Entries in the "name" table for ID 6 (PostScript name) are consistent.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the number of glyphs in the loca table match the maxp table?</summary>

* [com.google.fonts/check/loca/maxp_num_glyphs](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/loca.html#com.google.fonts/check/loca/maxp_num_glyphs)

* 🍞 **PASS** 'loca' table matches numGlyphs in 'maxp' table.

</details>
<details>
<summary>🍞 <b>PASS:</b> Checking Vertical Metric Linegaps.</summary>

* [com.google.fonts/check/linegaps](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hhea.html#com.google.fonts/check/linegaps)

* 🍞 **PASS** OS/2 sTypoLineGap and hhea lineGap are both 0.

</details>
<details>
<summary>🍞 <b>PASS:</b> MaxAdvanceWidth is consistent with values in the Hmtx and Hhea tables?</summary>

* [com.google.fonts/check/maxadvancewidth](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hhea.html#com.google.fonts/check/maxadvancewidth)

* 🍞 **PASS** MaxAdvanceWidth is consistent with values in the Hmtx and Hhea tables.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does the font have a DSIG table?</summary>

* [com.google.fonts/check/dsig](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/dsig.html#com.google.fonts/check/dsig)
<pre>--- Rationale ---

Some programs expect fonts to have a digital signature declared in their DSIG
table in order to work properly.

This checks verifies that such signature is available in the font.

Typically, even a fake signature would be enough to make the fonts work. If
needed, such dummy-placeholder can be added to the font by using the `gftools
fix-dsig` script available at https://github.com/googlefonts/gftools


</pre>

* 🍞 **PASS** Digital Signature (DSIG) exists.

</details>
<details>
<summary>🍞 <b>PASS:</b> Whitespace and non-breaking space have the same width?</summary>

* [com.google.fonts/check/whitespace_widths](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hmtx.html#com.google.fonts/check/whitespace_widths)

* 🍞 **PASS** Whitespace and non-breaking space have the same width.

</details>
<details>
<summary>🍞 <b>PASS:</b> Does GPOS table have kerning information?</summary>

* [com.google.fonts/check/gpos_kerning_info](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gpos.html#com.google.fonts/check/gpos_kerning_info)

* 🍞 **PASS** GPOS table has got kerning information.

</details>
<details>
<summary>🍞 <b>PASS:</b> Is there a "kern" table declared in the font?</summary>

* [com.google.fonts/check/kern_table](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/kern.html#com.google.fonts/check/kern_table)
<pre>--- Rationale ---

Even though all fonts should have their kerning implemented in the GPOS table,
there may be kerning info at the kern table as well.

Some applications such as MS PowerPoint require kerning info on the kern table.
More specifically, they require a format 0 kern subtable from a kern table
version 0, which is the only one that Windows understands (and which is also
the simplest and more limited of all the kern subtables).

Google Fonts ingests fonts made for download and use on desktops, and does all
web font optimizations in the serving pipeline (using libre libraries that
anyone can replicate.)

Ideally, TTFs intended for desktop users (and thus the ones intended for Google
Fonts) should have both KERN and GPOS tables.

Given all of the above, we currently treat kerning on a v0 kern table as a
good-to-have (but optional) feature.


</pre>

* 🍞 **PASS** Font does not declare an optional "kern" table.

</details>
<details>
<summary>🍞 <b>PASS:</b> Is there any unused data at the end of the glyf table?</summary>

* [com.google.fonts/check/glyf_unused_data](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/glyf_unused_data)

* 🍞 **PASS** There is no unused data at the end of the glyf table.

</details>
<details>
<summary>🍞 <b>PASS:</b> Check for points out of bounds.</summary>

* [com.google.fonts/check/points_out_of_bounds](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/points_out_of_bounds)

* 🍞 **PASS** All glyph paths have coordinates within bounds!

</details>
<br>
</details>

### Summary

| 💔 ERROR | 🔥 FAIL | ⚠ WARN | 💤 SKIP | ℹ INFO | 🍞 PASS | 🔎 DEBUG |
|:-----:|:----:|:----:|:----:|:----:|:----:|:----:|
| 0 | 0 | 6 | 71 | 7 | 77 | 0 |
| 0% | 0% | 4% | 44% | 4% | 48% | 0% |
