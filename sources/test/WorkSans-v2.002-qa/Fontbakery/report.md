## Fontbakery report

Fontbakery version: 0.6.11

<details>
<summary><b>[1] Family checks</b></summary>
<details>
<summary>:fire: <b>FAIL:</b> Check font has a license.</summary>

* [com.google.fonts/check/028](https://github.com/googlefonts/fontbakery/search?q=com.google.fonts/check/028)
* :fire: **FAIL** More than a single license file found. Please review. [code: multiple]

</details>
<br>
</details>
<details>
<summary><b>[10] WorkSans-Italic-VF.ttf</b></summary>
<details>
<summary>:broken_heart: <b>ERROR:</b> Fonts have equal glyph names?</summary>

* [com.google.fonts/check/012](https://github.com/googlefonts/fontbakery/search?q=com.google.fonts/check/012)
* :broken_heart: **ERROR** Failed with TypeError: sequence item 0: expected str instance, NoneType found

</details>
<details>
<summary>:fire: <b>FAIL:</b> Fonts have equal numbers of glyphs?</summary>

* [com.google.fonts/check/011](https://github.com/googlefonts/fontbakery/search?q=com.google.fonts/check/011)
* :fire: **FAIL** Italic-VF has 1266 glyphs while Roman-VF has 1410 glyphs. There are 150 different glyphs among them: uni1EAF.ss06, Odieresis.rvrn, Lacute.swsh, uniF8FF.001, Ncaron.swsh, c_t, Rcaron.swsh, Emacron.swsh.001, racute.swsh, agrave.ss06 (and more)

</details>
<details>
<summary>:fire: <b>FAIL:</b> Variable font weight coordinates must be multiples of 100.</summary>

* [com.google.fonts/check/varfont_weight_instances](https://github.com/googlefonts/fontbakery/search?q=com.google.fonts/check/varfont_weight_instances)
* :fire: **FAIL** Found an variable font instance with 'wght'=250.0. This should instead be a multiple of 100.
* :fire: **FAIL** Found an variable font instance with 'wght'=275.0. This should instead be a multiple of 100.

</details>
<details>
<summary>:fire: <b>FAIL:</b> Checking with fontTools.ttx</summary>

* [com.google.fonts/check/ttx-roundtrip](https://github.com/googlefonts/fontbakery/search?q=com.google.fonts/check/ttx-roundtrip)
* :fire: **FAIL** TTX had some problem parsing the generated XML file. This most likely mean there's some problem in the font. Please inspect the output of ttx in order to find more on what went wrong. A common problem is the presence of control characteres outside the accepted character range as defined in the XML spec. FontTools has got a bug which causes TTX to generate corrupt XML files in those cases. So, check the entries of the name table and remove any control chars that you find there. The full ttx error message was:
======
not well-formed (invalid token): line 22087, column 15
======

</details>
<details>
<summary>:warning: <b>WARN:</b> Checking OS/2 achVendID.</summary>

* [com.google.fonts/check/018](https://github.com/googlefonts/fontbakery/search?q=com.google.fonts/check/018)
* :warning: **WARN** OS/2 VendorID value 'WEI ' is not a known registered id. You should set it to your own 4 character code, and register that code with Microsoft at https://www.microsoft.com/typography/links/vendorlist.aspx [code: unknown]

</details>
<details>
<summary>:warning: <b>WARN:</b> Stricter unitsPerEm criteria for Google Fonts. </summary>

* [com.google.fonts/check/116](https://github.com/googlefonts/fontbakery/search?q=com.google.fonts/check/116)
* :warning: **WARN** Even though unitsPerEm (1000) in this font is reasonable. It is strongly advised to consider changing it to 2000, since it will likely improve the quality of Variable Fonts by avoiding excessive rounding of coordinates on interpolations.

</details>
<details>
<summary>:warning: <b>WARN:</b> Monospace font has hhea.advanceWidthMax equal to each glyph's advanceWidth?</summary>

* [com.google.fonts/check/079](https://github.com/googlefonts/fontbakery/search?q=com.google.fonts/check/079)
* :warning: **WARN** This seems to be a monospaced font, so advanceWidth value should be the same across all glyphs, but 99.68% of them have a different value: A, Aacute, Abreve, uni1EAE, uni1EB6, uni1EB0, uni1EB2, uni1EB4, Acircumflex, uni1EA4, uni1EAC, uni1EA6, uni1EA8, uni1EAA, uni0200, Adieresis, uni1EA0, Agrave, uni1EA2, uni0202, Amacron, Aogonek, Aring, Aringacute, Atilde, AE, AEacute, B, C, Cacute, Ccaron, Ccedilla, uni1E08, Ccircumflex, Cdotaccent, D, Eth, Dcaron, Dcroat, uni1E0C, uni1E0E, uni01F2, uni01C5, E, Eacute, Ebreve, Ecaron, uni1E1C, Ecircumflex, uni1EBE, uni1EC6, uni1EC0, uni1EC2, uni1EC4, uni0204, Edieresis, Edotaccent, uni1EB8, Egrave, uni1EBA, uni0206, Emacron, uni1E16, uni1E14, Eogonek, uni1EBC, F, G, Gbreve, Gcaron, Gcircumflex, uni0122, Gdotaccent, uni1E20, H, Hbar, uni1E2A, Hcircumflex, uni1E24, I, IJ, Iacute, Ibreve, Icircumflex, uni0208, Idieresis, uni1E2E, Idotaccent, uni1ECA, Igrave, uni1EC8, uni020A, Imacron, Iogonek, Itilde, J, Jcircumflex, K, uni0136, L, uni01C7, Lacute, Lcaron, uni013B, Ldot, uni1E36, uni01C8, uni1E3A, Lslash, M, uni1E42, N, uni01CA, Nacute, Ncaron, uni0145, uni1E44, uni1E46, Eng, uni01CB, uni1E48, Ntilde, O, Oacute, Obreve, Ocircumflex, uni1ED0, uni1ED8, uni1ED2, uni1ED4, uni1ED6, uni020C, Odieresis, uni022A, uni0230, uni1ECC, Ograve, uni1ECE, Ohorn, uni1EDA, uni1EE2, uni1EDC, uni1EDE, uni1EE0, Ohungarumlaut, uni020E, Omacron, uni1E52, uni1E50, uni01EA, Oslash, Oslashacute, Otilde, uni1E4C, uni1E4E, uni022C, OE, P, Thorn, Q, R, Racute, Rcaron, uni0156, uni0210, uni1E5A, uni0212, uni1E5E, S, Sacute, uni1E64, Scaron, uni1E66, Scedilla, Scircumflex, uni0218, uni1E60, uni1E62, uni1E68, uni1E9E, uni018F, T, Tbar, Tcaron, uni0162, uni021A, uni1E6C, uni1E6E, U, Uacute, Ubreve, Ucircumflex, uni0214, Udieresis, uni1EE4, Ugrave, uni1EE6, Uhorn, uni1EE8, uni1EF0, uni1EEA, uni1EEC, uni1EEE, Uhungarumlaut, uni0216, Umacron, uni1E7A, Uogonek, Uring, Utilde, uni1E78, V, W, Wacute, Wcircumflex, Wdieresis, Wgrave, X, Y, Yacute, Ycircumflex, Ydieresis, uni1E8E, uni1EF4, Ygrave, uni1EF6, uni0232, uni1EF8, Z, Zacute, Zcaron, Zdotaccent, uni1E92, Iacute_J.loclNLD, R.ss03, Racute.ss03, Rcaron.ss03, uni0156.ss03, uni0210.ss03, uni1E5A.ss03, uni0212.ss03, uni1E5E.ss03, G.ss04, Gbreve.ss04, Gcaron.ss04, Gcircumflex.ss04, uni0122.ss04, Gdotaccent.ss04, uni1E20.ss04, IJ.ss05, Iacute_J.loclNLD.ss05, a, aacute, abreve, uni1EAF, uni1EB7, uni1EB1, uni1EB3, uni1EB5, acircumflex, uni1EA5, uni1EAD, uni1EA7, uni1EA9, uni1EAB, uni0201, adieresis, uni1EA1, agrave, uni1EA3, uni0203, amacron, aogonek, aring, aringacute, atilde, ae, aeacute, b, c, cacute, ccaron, ccedilla, uni1E09, ccircumflex, cdotaccent, d, eth, dcaron, dcroat, uni1E0D, uni1E0F, uni01F3, uni01C6, e, eacute, ebreve, ecaron, uni1E1D, ecircumflex, uni1EBF, uni1EC7, uni1EC1, uni1EC3, uni1EC5, uni0205, edieresis, edotaccent, uni1EB9, egrave, uni1EBB, uni0207, emacron, uni1E17, uni1E15, eogonek, uni1EBD, uni0259, f, g, gbreve, gcaron, gcircumflex, uni0123, gdotaccent, uni1E21, h, hbar, uni1E2B, hcircumflex, uni1E25, i, dotlessi, iacute, ibreve, icircumflex, uni0209, idieresis, uni1E2F, i.loclTRK, uni1ECB, igrave, uni1EC9, uni020B, ij, imacron, iogonek, itilde, j, uni0237, jcircumflex, k, uni0137, kgreenlandic, l, lacute, lcaron, uni013C, ldot, uni1E37, uni01C9, uni1E3B, lslash, m, uni1E43, n, nacute, ncaron, uni0146, uni1E45, uni1E47, eng, uni01CC, uni1E49, ntilde, o, oacute, obreve, ocircumflex, uni1ED1, uni1ED9, uni1ED3, uni1ED5, uni1ED7, uni020D, odieresis, uni022B, uni0231, uni1ECD, ograve, uni1ECF, ohorn, uni1EDB, uni1EE3, uni1EDD, uni1EDF, uni1EE1, ohungarumlaut, uni020F, omacron, uni1E53, uni1E51, uni01EB, oslash, oslashacute, otilde, uni1E4D, uni1E4F, uni022D, oe, p, thorn, q, r, racute, rcaron, uni0157, uni0211, uni1E5B, uni0213, uni1E5F, s, sacute, uni1E65, scaron, uni1E67, scedilla, scircumflex, uni0219, uni1E61, uni1E63, uni1E69, germandbls, longs, t, tbar, tcaron, uni0163, uni021B, uni1E97, uni1E6D, uni1E6F, u, uacute, ubreve, ucircumflex, uni0215, udieresis, uni1EE5, ugrave, uni1EE7, uhorn, uni1EE9, uni1EF1, uni1EEB, uni1EED, uni1EEF, uhungarumlaut, uni0217, umacron, uni1E7B, uogonek, uring, utilde, uni1E79, v, w, wacute, wcircumflex, wdieresis, wgrave, x, y, yacute, ycircumflex, ydieresis, uni1E8F, uni1EF5, ygrave, uni1EF7, uni0233, uni1EF9, z, zacute, zcaron, zdotaccent, uni1E93, iacute_j.loclNLD, j.short, uni0237.short, jcircumflex.short, l.ss02, lacute.ss02, lcaron.ss02, uni013C.ss02, ldot.ss02, uni1E37.ss02, uni01C9.ss02, uni1E3B.ss02, lslash.ss02, f_f, f_f_i, f_f_l, fi, fl, f_f_l.ss02, fl.ss02, uni1E9E.sc, a.sc, aacute.sc, abreve.sc, uni1EAF.sc, uni1EB7.sc, uni1EB1.sc, uni1EB3.sc, uni1EB5.sc, acircumflex.sc, uni1EA5.sc, uni1EAD.sc, uni1EA7.sc, uni1EA9.sc, uni1EAB.sc, uni0201.sc, adieresis.sc, uni1EA1.sc, agrave.sc, uni1EA3.sc, uni0203.sc, amacron.sc, aogonek.sc, aring.sc, aringacute.sc, atilde.sc, ae.sc, aeacute.sc, b.sc, c.sc, cacute.sc, ccaron.sc, ccedilla.sc, uni1E09.sc, ccircumflex.sc, cdotaccent.sc, d.sc, eth.sc, dcaron.sc, dcroat.sc, uni1E0D.sc, uni1E0F.sc, uni01C6.sc, e.sc, eacute.sc, ebreve.sc, ecaron.sc, uni1E1D.sc, ecircumflex.sc, uni1EBF.sc, uni1EC7.sc, uni1EC1.sc, uni1EC3.sc, uni1EC5.sc, uni0205.sc, edieresis.sc, edotaccent.sc, uni1EB9.sc, egrave.sc, uni1EBB.sc, uni0207.sc, emacron.sc, uni1E17.sc, uni1E15.sc, eogonek.sc, uni1EBD.sc, uni0259.sc, f.sc, g.sc, gbreve.sc, gcaron.sc, gcircumflex.sc, uni0123.sc, gdotaccent.sc, uni1E21.sc, h.sc, hbar.sc, uni1E2B.sc, hcircumflex.sc, uni1E25.sc, i.sc, dotlessi.sc, iacute.sc, iacute_j.loclNLD.sc, ibreve.sc, icircumflex.sc, uni0209.sc, idieresis.sc, uni1E2F.sc, i.loclTRK.sc, uni1ECB.sc, igrave.sc, uni1EC9.sc, uni020B.sc, ij.sc, imacron.sc, iogonek.sc, itilde.sc, j.sc, jcircumflex.sc, k.sc, uni0137.sc, kgreenlandic.sc, l.sc, lacute.sc, lcaron.sc, uni013C.sc, ldot.sc, uni1E37.sc, uni01C9.sc, uni1E3B.sc, lslash.sc, m.sc, uni1E43.sc, n.sc, nacute.sc, ncaron.sc, uni0146.sc, uni1E45.sc, uni1E47.sc, eng.sc, uni01CC.sc, uni1E49.sc, ntilde.sc, o.sc, oacute.sc, obreve.sc, ocircumflex.sc, uni1ED1.sc, uni1ED9.sc, uni1ED3.sc, uni1ED5.sc, uni1ED7.sc, uni020D.sc, odieresis.sc, uni022B.sc, uni0231.sc, uni1ECD.sc, ograve.sc, uni1ECF.sc, ohorn.sc, uni1EDB.sc, uni1EE3.sc, uni1EDD.sc, uni1EDF.sc, uni1EE1.sc, ohungarumlaut.sc, uni020F.sc, omacron.sc, uni1E53.sc, uni1E51.sc, uni01EB.sc, oslash.sc, oslashacute.sc, otilde.sc, uni1E4D.sc, uni1E4F.sc, uni022D.sc, oe.sc, p.sc, thorn.sc, q.sc, r.sc, racute.sc, rcaron.sc, uni0157.sc, uni0211.sc, uni1E5B.sc, uni0213.sc, uni1E5F.sc, s.sc, sacute.sc, uni1E65.sc, scaron.sc, uni1E67.sc, scedilla.sc, scircumflex.sc, uni0219.sc, uni1E61.sc, uni1E63.sc, uni1E69.sc, germandbls.sc, t.sc, tbar.sc, tcaron.sc, uni0163.sc, uni021B.sc, uni1E97.sc, uni1E6D.sc, uni1E6F.sc, u.sc, uacute.sc, ubreve.sc, ucircumflex.sc, uni0215.sc, udieresis.sc, uni1EE5.sc, ugrave.sc, uhorn.sc, uni1EE9.sc, uni1EF1.sc, uni1EEB.sc, uni1EED.sc, uni1EEF.sc, uhungarumlaut.sc, uni0217.sc, umacron.sc, uni1E7B.sc, uogonek.sc, uring.sc, utilde.sc, uni1E79.sc, v.sc, w.sc, wacute.sc, wcircumflex.sc, wdieresis.sc, wgrave.sc, x.sc, y.sc, yacute.sc, ycircumflex.sc, ydieresis.sc, uni1E8F.sc, uni1EF5.sc, ygrave.sc, uni1EF7.sc, uni0233.sc, uni1EF9.sc, z.sc, zacute.sc, zcaron.sc, zdotaccent.sc, uni1E93.sc, r.sc.ss03, racute.sc.ss03, rcaron.sc.ss03, uni0157.sc.ss03, uni0211.sc.ss03, uni1E5B.sc.ss03, uni0213.sc.ss03, uni1E5F.sc.ss03, g.sc.ss04, gbreve.sc.ss04, gcaron.sc.ss04, gcircumflex.sc.ss04, uni0123.sc.ss04, gdotaccent.sc.ss04, uni1E21.sc.ss04, iacute_j.loclNLD.sc.ss05, ij.sc.ss05, napostrophe.sc, ordfeminine, ordmasculine, uni03A9, uni03BC, pi, zero, one, two, three, four, five, six, seven, eight, nine, uni2780, uni2781, uni2782, uni2783, uni2784, uni2785, uni2786, uni2787, uni2788, zero.lf, one.lf, two.lf, three.lf, four.lf, five.lf, six.lf, seven.lf, eight.lf, nine.lf, zero.osf, one.osf, two.osf, three.osf, four.osf, five.osf, six.osf, seven.osf, eight.osf, nine.osf, zero.osf.zero, zero.tf, one.tf, two.tf, three.tf, four.tf, five.tf, six.tf, seven.tf, eight.tf, nine.tf, zero.tf.zero, zero.tosf, one.tosf, two.tosf, three.tosf, four.tosf, five.tosf, six.tosf, seven.tosf, eight.tosf, nine.tosf, zero.tosf.zero, zero.zero, zero.subs, one.subs, two.subs, uni2080, uni2081, uni2082, uni2083, uni2084, uni2085, uni2086, uni2087, uni2088, uni2089, three.subs, four.subs, five.subs, six.subs, seven.subs, eight.subs, nine.subs, zero.dnom, one.dnom, two.dnom, three.dnom, four.dnom, five.dnom, six.dnom, seven.dnom, eight.dnom, nine.dnom, zero.numr, one.numr, two.numr, three.numr, four.numr, five.numr, six.numr, seven.numr, eight.numr, nine.numr, uni2070, uni00B9, uni00B2, uni00B3, uni2074, uni2075, uni2076, uni2077, uni2078, uni2079, fraction, onehalf, uni2153, uni2154, onequarter, threequarters, oneeighth, threeeighths, fiveeighths, seveneighths, zero.sc, one.sc, two.sc, three.sc, four.sc, five.sc, six.sc, seven.sc, eight.sc, nine.sc, period, comma, colon, semicolon, ellipsis, exclam, exclamdown, question, questiondown, periodcentered, bullet, asterisk, numbersign, slash, backslash, exclamdown.case, questiondown.case, periodcentered.case, periodcentered.loclCAT.case, periodcentered.loclCAT, periodcentered.loclCAT.ss02, period.tf, comma.tf, colon.tf, semicolon.tf, numbersign.tf, uni208D, uni208E, parenleft, parenright, braceleft, braceright, bracketleft, bracketright, uni207D, uni207E, parenleft.case, parenright.case, braceleft.case, braceright.case, bracketleft.case, bracketright.case, hyphen, uni00AD, endash, emdash, figuredash, uni2015, uni2010, underscore, hyphen.case, uni00AD.case, endash.case, emdash.case, quotesinglbase, quotedblbase, quotedblleft, quotedblright, quoteleft, quoteright, guillemotleft, guillemotright, guilsinglleft, guilsinglright, quotedbl, quotesingle, guillemotleft.case, guillemotright.case, guilsinglleft.case, guilsinglright.case, exclam.sc, exclamdown.sc, question.sc, questiondown.sc, periodcentered.sc, quotedblleft.sc, quotedblright.sc, quoteleft.sc, quoteright.sc, periodcentered.loclCAT.sc, quotedbl.sc, quotesingle.sc, uni27E8, uni27E9, uni2007, uni200A, uni2008, space, uni00A0, uni2009, uni200B, space.tf, CR, uni20B5, cent, colonmonetary, currency, dollar, dong, Euro, florin, franc, uni20B2, uni20AD, lira, uni20BA, uni20BC, uni20A6, peseta, uni20B1, uni20BD, uni20B9, sterling, uni20A9, yen, cent.tf, currency.tf, dollar.tf, Euro.tf, florin.tf, uni20BA.tf, uni20BD.tf, sterling.tf, yen.tf, Euro.part, sterling.part, uni20B5.rvrn, cent.rvrn, colonmonetary.rvrn, dollar.rvrn, uni20B2.rvrn, uni20A6.rvrn, peseta.rvrn, uni20B1.rvrn, cent.tf.rvrn, dollar.tf.rvrn, uni20A9.rvrn, Euro.part.tf, sterling.part.tf, uni2219, uni2052, uni2215, uni208C, uni207C, uni208B, uni207B, plus, minus, multiply, divide, equal, notequal, greater, less, greaterequal, lessequal, plusminus, approxequal, asciitilde, logicalnot, asciicircum, infinity, emptyset, integral, uni2126, uni2206, product, summation, radical, partialdiff, uni00B5, percent, perthousand, uni208A, uni207A, arrowup, uni2197, arrowright, uni2198, arrowdown, uni2199, arrowleft, uni2196, arrowboth, arrowupdn, uni21A9, uni21AA, uni21BA, uni21BB, uni25CF, circle, uni25C6, uni25C7, lozenge, filledbox, uni25A1, uni25AA, uni25AB, uni25FB, uni25FC, triagup, uni25B6, triagdn, uni25C0, uni25B3, uni25B7, uni25BD, uni25C1, uni26AA, uni26AB, uni275B, uni275C, uni275D, uni275E, uni2761, uniF8FF, at, ampersand, paragraph, section, copyright, registered, trademark, degree, minute, second, bar, brokenbar, uni2113, dagger, daggerdbl, estimated, uni2116, uni2B25, uni2B26, at.case, bar.case, uniF8FF.001, uni2761.rvrn, paragraph.rvrn, ampersand.sc, uni02BC, uni02BB, uni02BA, uni02C9, uni02CB, uni02B9, uni02BF, uni02BE, uni02CA, uni02CC, uni02C8, uni0308, uni0307, gravecomb, acutecomb, uni030B, uni0302, uni030C, uni0306, uni030A, tildecomb, uni0304, hookabovecomb, uni030F, uni0311, uni0312, uni031B, dotbelowcomb, uni0324, uni0326, uni0327, uni0328, uni032E, uni0331, uni0335, uni0338, acute, breve, caron, cedilla, circumflex, dieresis, dotaccent, grave, hungarumlaut, macron, ogonek, ring, tilde, gravecomb.asc, acutecomb.asc, gravecomb.case, acutecomb.case, uni030B.case, uni0302.case, uni030C.case, uni0306.case, hookabovecomb.case, uni030F.case, uni031B.case, uni0335.case, uni0336.case, uni030C.alt, uni0328.A, uni0328.E, uni0328.I, uni031B.O, uni0328.a, ogonek.e, uni031B.o, uni0335.sc, uni0302.viet, uni0306.viet, tildecomb.viet, uni03060301, uni03060300, uni03060309, uni03060303, uni03020301, uni03020300, uni03020309, uni03020303, uni03060301.case, uni03060300.case, uni03060309.case, uni03060303.case, uni03020301.case, uni03020300.case, uni03020309.case, uni03020303.case, uniE0FF, uniEFFD, uniF000, spaceinferior, Hinferior, Hsuperior, Oinferior, Osuperior, hypheninferior, endashinferior, emdashinferior, bracketleftinferior, bracketrightinferior, periodinferior, commainferior, coloninferior, hyphensuperior, endashsuperior, emdashsuperior, bracketleftsuperior, bracketrightsuperior, periodsuperior, commasuperior, colonsuperior, spacesuperior, registeredsuperior, daggersuperior, daggerdblsuperior, indexring, gbase, swash_bttmleft, __swash_topleft, Napostrophe, tittle [code: should-be-monospaced]
* :warning: **WARN** Double-width and/or zero-width glyphs were detected. These glyphs should be set to the same width as all others and then add GPOS single pos lookups that zeros/doubles the widths as needed: periodcentered.loclCAT.sc, uni200B, uni0308, uni0307, gravecomb, acutecomb, uni030B, uni0302, uni030C, uni0306, uni030A, tildecomb, uni0304, hookabovecomb, uni030F, uni0311, uni0312, uni031B, dotbelowcomb, uni0324, uni0326, uni0327, uni0328, uni032E, uni0331, uni0335, uni0338, gravecomb.asc, acutecomb.asc, gravecomb.case, acutecomb.case, uni030B.case, uni0302.case, uni030C.case, uni0306.case, hookabovecomb.case, uni030F.case, uni031B.case, uni0335.case, uni0336.case, uni030C.alt, uni0328.A, uni0328.E, uni0328.I, uni031B.O, uni0328.a, uni031B.o, uni0335.sc, uni0302.viet, uni0306.viet, tildecomb.viet, uni03060301, uni03060300, uni03060309, uni03060303, uni03020301, uni03020300, uni03020309, uni03020303, uni03060301.case, uni03060300.case, uni03060309.case, uni03060303.case, uni03020301.case, uni03020300.case, uni03020309.case, uni03020303.case [code: variable-monospaced]

</details>
<details>
<summary>:warning: <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/065](https://github.com/googlefonts/fontbakery/search?q=com.google.fonts/check/065)
* :warning: **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + f
	- f + i
	- i + f
	- f + l
	- l + f
	- i + l

   [code: lacks-kern-info]

</details>
<details>
<summary>:warning: <b>WARN:</b> Are there caret positions declared for every ligature?</summary>

* [com.google.fonts/check/064](https://github.com/googlefonts/fontbakery/search?q=com.google.fonts/check/064)
* :warning: **WARN** This font lacks caret position values for ligature glyphs on its GDEF table. [code: lacks-caret-pos]

</details>
<details>
<summary>:warning: <b>WARN:</b> Check for points out of bounds.</summary>

* [com.google.fonts/check/075](https://github.com/googlefonts/fontbakery/search?q=com.google.fonts/check/075)
* :warning: **WARN** The following glyphs have coordinates which are out of bounds:
[('imacron.sc', 324.38, 723.0)]
This happens a lot when points are not extremes, which is usually bad. However, fixing this alert by adding points on extremes may do more harm than good, especially with italics, calligraphic-script, handwriting, rounded and other fonts. So it is common to ignore this message

</details>
<br>
</details>
<details>
<summary><b>[11] WorkSans-Roman-VF.ttf</b></summary>
<details>
<summary>:broken_heart: <b>ERROR:</b> Fonts have equal glyph names?</summary>

* [com.google.fonts/check/012](https://github.com/googlefonts/fontbakery/search?q=com.google.fonts/check/012)
* :broken_heart: **ERROR** Failed with TypeError: sequence item 0: expected str instance, NoneType found

</details>
<details>
<summary>:fire: <b>FAIL:</b> Fonts have equal numbers of glyphs?</summary>

* [com.google.fonts/check/011](https://github.com/googlefonts/fontbakery/search?q=com.google.fonts/check/011)
* :fire: **FAIL** Italic-VF has 1266 glyphs while Roman-VF has 1410 glyphs. There are 150 different glyphs among them: uni1EAF.ss06, Odieresis.rvrn, Lacute.swsh, uniF8FF.001, Ncaron.swsh, c_t, Rcaron.swsh, Emacron.swsh.001, racute.swsh, agrave.ss06 (and more)

</details>
<details>
<summary>:fire: <b>FAIL:</b> Variable font weight coordinates must be multiples of 100.</summary>

* [com.google.fonts/check/varfont_weight_instances](https://github.com/googlefonts/fontbakery/search?q=com.google.fonts/check/varfont_weight_instances)
* :fire: **FAIL** Found an variable font instance with 'wght'=250.0. This should instead be a multiple of 100.
* :fire: **FAIL** Found an variable font instance with 'wght'=275.0. This should instead be a multiple of 100.

</details>
<details>
<summary>:fire: <b>FAIL:</b> Checking with fontTools.ttx</summary>

* [com.google.fonts/check/ttx-roundtrip](https://github.com/googlefonts/fontbakery/search?q=com.google.fonts/check/ttx-roundtrip)
* :fire: **FAIL** TTX had some problem parsing the generated XML file. This most likely mean there's some problem in the font. Please inspect the output of ttx in order to find more on what went wrong. A common problem is the presence of control characteres outside the accepted character range as defined in the XML spec. FontTools has got a bug which causes TTX to generate corrupt XML files in those cases. So, check the entries of the name table and remove any control chars that you find there. The full ttx error message was:
======
not well-formed (invalid token): line 25884, column 15
======

</details>
<details>
<summary>:fire: <b>FAIL:</b> Does the font have a DSIG table?</summary>

* [com.google.fonts/check/045](https://github.com/googlefonts/fontbakery/search?q=com.google.fonts/check/045)
* :fire: **FAIL** This font lacks a digital signature (DSIG table). Some applications may require one (even if only a dummy placeholder) in order to work properly.

</details>
<details>
<summary>:warning: <b>WARN:</b> Checking OS/2 achVendID.</summary>

* [com.google.fonts/check/018](https://github.com/googlefonts/fontbakery/search?q=com.google.fonts/check/018)
* :warning: **WARN** OS/2 VendorID value 'WEI ' is not a known registered id. You should set it to your own 4 character code, and register that code with Microsoft at https://www.microsoft.com/typography/links/vendorlist.aspx [code: unknown]

</details>
<details>
<summary>:warning: <b>WARN:</b> Stricter unitsPerEm criteria for Google Fonts. </summary>

* [com.google.fonts/check/116](https://github.com/googlefonts/fontbakery/search?q=com.google.fonts/check/116)
* :warning: **WARN** Even though unitsPerEm (1000) in this font is reasonable. It is strongly advised to consider changing it to 2000, since it will likely improve the quality of Variable Fonts by avoiding excessive rounding of coordinates on interpolations.

</details>
<details>
<summary>:warning: <b>WARN:</b> Monospace font has hhea.advanceWidthMax equal to each glyph's advanceWidth?</summary>

* [com.google.fonts/check/079](https://github.com/googlefonts/fontbakery/search?q=com.google.fonts/check/079)
* :warning: **WARN** This seems to be a monospaced font, so advanceWidth value should be the same across all glyphs, but 99.72% of them have a different value: A, Aacute, Abreve, uni1EAE, uni1EB6, uni1EB0, uni1EB2, uni1EB4, Acircumflex, uni1EA4, uni1EAC, uni1EA6, uni1EA8, uni1EAA, uni0200, Adieresis, uni1EA0, Agrave, uni1EA2, uni0202, Amacron, Aogonek, Aring, Aringacute, Atilde, AE, AEacute, B, C, Cacute, Ccaron, Ccedilla, uni1E08, Ccircumflex, Cdotaccent, D, Eth, Dcaron, Dcroat, uni1E0C, uni1E0E, uni01F2, uni01C5, E, Eacute, Ebreve, Ecaron, uni1E1C, Ecircumflex, uni1EBE, uni1EC6, uni1EC0, uni1EC2, uni1EC4, uni0204, Edieresis, Edotaccent, uni1EB8, Egrave, uni1EBA, uni0206, Emacron, uni1E16, uni1E14, Eogonek, uni1EBC, F, G, Gbreve, Gcaron, Gcircumflex, uni0122, Gdotaccent, uni1E20, H, Hbar, uni1E2A, Hcircumflex, uni1E24, I, IJ, Iacute, Ibreve, Icircumflex, uni0208, Idieresis, uni1E2E, Idotaccent, uni1ECA, Igrave, uni1EC8, uni020A, Imacron, Iogonek, Itilde, J, Jcircumflex, K, uni0136, L, uni01C7, Lacute, Lcaron, uni013B, Ldot, uni1E36, uni01C8, uni1E3A, Lslash, M, uni1E42, N, uni01CA, Nacute, Ncaron, uni0145, uni1E44, uni1E46, Eng, uni01CB, uni1E48, Ntilde, O, Oacute, Obreve, Ocircumflex, uni1ED0, uni1ED8, uni1ED2, uni1ED4, uni1ED6, uni020C, Odieresis, uni022A, uni0230, uni1ECC, Ograve, uni1ECE, Ohorn, uni1EDA, uni1EE2, uni1EDC, uni1EDE, uni1EE0, Ohungarumlaut, uni020E, Omacron, uni1E52, uni1E50, uni01EA, Oslash, Oslashacute, Otilde, uni1E4C, uni1E4E, uni022C, OE, P, Thorn, Q, R, Racute, Rcaron, uni0156, uni0210, uni1E5A, uni0212, uni1E5E, S, Sacute, uni1E64, Scaron, uni1E66, Scedilla, Scircumflex, uni0218, uni1E60, uni1E62, uni1E68, uni1E9E, uni018F, T, Tbar, Tcaron, uni0162, uni021A, uni1E6C, uni1E6E, U, Uacute, Ubreve, Ucircumflex, uni0214, Udieresis, uni1EE4, Ugrave, uni1EE6, Uhorn, uni1EE8, uni1EF0, uni1EEA, uni1EEC, uni1EEE, Uhungarumlaut, uni0216, Umacron, uni1E7A, Uogonek, Uring, Utilde, uni1E78, V, W, Wacute, Wcircumflex, Wdieresis, Wgrave, X, Y, Yacute, Ycircumflex, Ydieresis, uni1E8E, uni1EF4, Ygrave, uni1EF6, uni0232, uni1EF8, Z, Zacute, Zcaron, Zdotaccent, uni1E92, E.swsh.001, Eacute.swsh.001, Ecaron.swsh.001, Ecircumflex.swsh.001, Edieresis.swsh.001, Edotaccent.swsh.001, Egrave.swsh.001, Emacron.swsh.001, M.swsh.001, R.swsh.001, Racute.swsh.001, Rcaron.swsh.001, uni0156.swsh.001, Iacute_J.loclNLD, R.ss03, Racute.ss03, Rcaron.ss03, uni0156.ss03, uni0210.ss03, uni1E5A.ss03, uni0212.ss03, uni1E5E.ss03, G.ss04, Gbreve.ss04, Gcaron.ss04, Gcircumflex.ss04, uni0122.ss04, Gdotaccent.ss04, uni1E20.ss04, IJ.ss05, Iacute_J.loclNLD.ss05, A.swsh, Aacute.swsh, Abreve.swsh, Acircumflex.swsh, Adieresis.swsh, Agrave.swsh, Amacron.swsh, Aogonek.swsh, Atilde.swsh, E.swsh, Eacute.swsh, Ecaron.swsh, Ecircumflex.swsh, Edieresis.swsh, Edotaccent.swsh, Egrave.swsh, Emacron.swsh, Eogonek.swsh, F.swsh, L.swsh, Lacute.swsh, Lcaron.swsh, uni013B.swsh, Lslash.swsh, M.swsh, N.swsh, Nacute.swsh, Ncaron.swsh, uni0145.swsh, Ntilde.swsh, R.swsh, Racute.swsh, Rcaron.swsh, uni0156.swsh, S.swsh, Sacute.swsh, Scaron.swsh, Scedilla.swsh, uni0218.swsh, T.swsh, Tcaron.swsh, uni0162.swsh, uni021A.swsh, W.swsh, Adieresis.titl, Odieresis.titl, Udieresis.titl, Adieresis.rvrn, Odieresis.rvrn, Udieresis.rvrn, Adieresis.titl.rvrn, Odieresis.titl.rvrn, Udieresis.titl.rvrn, Ydieresis.titl, a, aacute, abreve, uni1EAF, uni1EB7, uni1EB1, uni1EB3, uni1EB5, acircumflex, uni1EA5, uni1EAD, uni1EA7, uni1EA9, uni1EAB, uni0201, adieresis, uni1EA1, agrave, uni1EA3, uni0203, amacron, aogonek, aring, aringacute, atilde, ae, aeacute, b, c, cacute, ccaron, ccedilla, uni1E09, ccircumflex, cdotaccent, d, eth, dcaron, dcroat, uni1E0D, uni1E0F, uni01F3, uni01C6, e, eacute, ebreve, ecaron, uni1E1D, ecircumflex, uni1EBF, uni1EC7, uni1EC1, uni1EC3, uni1EC5, uni0205, edieresis, edotaccent, uni1EB9, egrave, uni1EBB, uni0207, emacron, uni1E17, uni1E15, eogonek, uni1EBD, uni0259, f, g, gbreve, gcaron, gcircumflex, uni0123, gdotaccent, uni1E21, h, hbar, uni1E2B, hcircumflex, uni1E25, i, dotlessi, iacute, ibreve, icircumflex, uni0209, idieresis, uni1E2F, i.loclTRK, uni1ECB, igrave, uni1EC9, uni020B, ij, imacron, iogonek, itilde, j, uni0237, jcircumflex, k, uni0137, kgreenlandic, l, lacute, lcaron, uni013C, ldot, uni1E37, uni01C9, uni1E3B, lslash, m, uni1E43, n, nacute, ncaron, uni0146, uni1E45, uni1E47, eng, uni01CC, uni1E49, ntilde, o, oacute, obreve, ocircumflex, uni1ED1, uni1ED9, uni1ED3, uni1ED5, uni1ED7, uni020D, odieresis, uni022B, uni0231, uni1ECD, ograve, uni1ECF, ohorn, uni1EDB, uni1EE3, uni1EDD, uni1EDF, uni1EE1, ohungarumlaut, uni020F, omacron, uni1E53, uni1E51, uni01EB, oslash, oslashacute, otilde, uni1E4D, uni1E4F, uni022D, oe, p, thorn, q, r, racute, rcaron, uni0157, uni0211, uni1E5B, uni0213, uni1E5F, s, sacute, uni1E65, scaron, uni1E67, scedilla, scircumflex, uni0219, uni1E61, uni1E63, uni1E69, germandbls, longs, t, tbar, tcaron, uni0163, uni021B, uni1E97, uni1E6D, uni1E6F, u, uacute, ubreve, ucircumflex, uni0215, udieresis, uni1EE5, ugrave, uni1EE7, uhorn, uni1EE9, uni1EF1, uni1EEB, uni1EED, uni1EEF, uhungarumlaut, uni0217, umacron, uni1E7B, uogonek, uring, utilde, uni1E79, v, w, wacute, wcircumflex, wdieresis, wgrave, x, y, yacute, ycircumflex, ydieresis, uni1E8F, uni1EF5, ygrave, uni1EF7, uni0233, uni1EF9, z, zacute, zcaron, zdotaccent, uni1E93, iacute_j.loclNLD, j.short, uni0237.short, jcircumflex.short, g.ss01, gbreve.ss01, gcaron.ss01, gcircumflex.ss01, uni0123.ss01, gdotaccent.ss01, uni1E21.ss01, l.ss02, lacute.ss02, lcaron.ss02, uni013C.ss02, ldot.ss02, uni1E37.ss02, uni01C9.ss02, uni1E3B.ss02, lslash.ss02, a.ss06, aacute.ss06, abreve.ss06, uni1EAF.ss06, uni1EB7.ss06, uni1EB1.ss06, uni1EB3.ss06, uni1EB5.ss06, acircumflex.ss06, uni1EA5.ss06, uni1EAD.ss06, uni1EA7.ss06, uni1EA9.ss06, uni1EAB.ss06, uni0201.ss06, adieresis.ss06, uni1EA1.ss06, agrave.ss06, uni1EA3.ss06, uni0203.ss06, amacron.ss06, aogonek.ss06, aring.ss06, aringacute.ss06, atilde.ss06, n.swsh, nacute.swsh, ncaron.swsh, uni0146.swsh, ntilde.swsh, r.swsh, racute.swsh, rcaron.swsh, uni0157.swsh, t.swsh, tcaron.swsh, uni0163.swsh, uni021B.swsh, y.swsh, yacute.swsh, ydieresis.swsh, napostrophe, longs.component, ae.ss06, T_h, c_h, c_t, f_f, f_f_i, f_f_l, fi, fl, s_t, f_f_l.ss02, fl.ss02, Aogonek_j, Aogonek_y, aogonek_j, f_idieresis, g_idieresis, iogonek_j, longs_i, longs_l, longs_s, uogonek_j, f_t.liga, g_j.liga, j_j.liga, t_t.liga, longs_l.ss02, g.ss06_j, uni1E9E.sc, a.sc, aacute.sc, abreve.sc, uni1EAF.sc, uni1EB7.sc, uni1EB1.sc, uni1EB3.sc, uni1EB5.sc, acircumflex.sc, uni1EA5.sc, uni1EAD.sc, uni1EA7.sc, uni1EA9.sc, uni1EAB.sc, uni0201.sc, adieresis.sc, uni1EA1.sc, agrave.sc, uni1EA3.sc, uni0203.sc, amacron.sc, aogonek.sc, aring.sc, aringacute.sc, atilde.sc, ae.sc, aeacute.sc, b.sc, c.sc, cacute.sc, ccaron.sc, ccedilla.sc, uni1E09.sc, ccircumflex.sc, cdotaccent.sc, d.sc, eth.sc, dcaron.sc, dcroat.sc, uni1E0D.sc, uni1E0F.sc, uni01C6.sc, e.sc, eacute.sc, ebreve.sc, ecaron.sc, uni1E1D.sc, ecircumflex.sc, uni1EBF.sc, uni1EC7.sc, uni1EC1.sc, uni1EC3.sc, uni1EC5.sc, uni0205.sc, edieresis.sc, edotaccent.sc, uni1EB9.sc, egrave.sc, uni1EBB.sc, uni0207.sc, emacron.sc, uni1E17.sc, uni1E15.sc, eogonek.sc, uni1EBD.sc, uni0259.sc, f.sc, g.sc, gbreve.sc, gcaron.sc, gcircumflex.sc, uni0123.sc, gdotaccent.sc, uni1E21.sc, h.sc, hbar.sc, uni1E2B.sc, hcircumflex.sc, uni1E25.sc, i.sc, dotlessi.sc, iacute.sc, iacute_j.loclNLD.sc, ibreve.sc, icircumflex.sc, uni0209.sc, idieresis.sc, uni1E2F.sc, i.loclTRK.sc, uni1ECB.sc, igrave.sc, uni1EC9.sc, uni020B.sc, ij.sc, imacron.sc, iogonek.sc, itilde.sc, j.sc, jcircumflex.sc, k.sc, uni0137.sc, kgreenlandic.sc, l.sc, lacute.sc, lcaron.sc, uni013C.sc, ldot.sc, uni1E37.sc, uni01C9.sc, uni1E3B.sc, lslash.sc, m.sc, uni1E43.sc, n.sc, nacute.sc, ncaron.sc, uni0146.sc, uni1E45.sc, uni1E47.sc, eng.sc, uni01CC.sc, uni1E49.sc, ntilde.sc, o.sc, oacute.sc, obreve.sc, ocircumflex.sc, uni1ED1.sc, uni1ED9.sc, uni1ED3.sc, uni1ED5.sc, uni1ED7.sc, uni020D.sc, odieresis.sc, uni022B.sc, uni0231.sc, uni1ECD.sc, ograve.sc, uni1ECF.sc, ohorn.sc, uni1EDB.sc, uni1EE3.sc, uni1EDD.sc, uni1EDF.sc, uni1EE1.sc, ohungarumlaut.sc, uni020F.sc, omacron.sc, uni1E53.sc, uni1E51.sc, uni01EB.sc, oslash.sc, oslashacute.sc, otilde.sc, uni1E4D.sc, uni1E4F.sc, uni022D.sc, oe.sc, p.sc, thorn.sc, q.sc, r.sc, racute.sc, rcaron.sc, uni0157.sc, uni0211.sc, uni1E5B.sc, uni0213.sc, uni1E5F.sc, s.sc, sacute.sc, uni1E65.sc, scaron.sc, uni1E67.sc, scedilla.sc, scircumflex.sc, uni0219.sc, uni1E61.sc, uni1E63.sc, uni1E69.sc, germandbls.sc, t.sc, tbar.sc, tcaron.sc, uni0163.sc, uni021B.sc, uni1E97.sc, uni1E6D.sc, uni1E6F.sc, u.sc, uacute.sc, ubreve.sc, ucircumflex.sc, uni0215.sc, udieresis.sc, uni1EE5.sc, ugrave.sc, uhorn.sc, uni1EE9.sc, uni1EF1.sc, uni1EEB.sc, uni1EED.sc, uni1EEF.sc, uhungarumlaut.sc, uni0217.sc, umacron.sc, uni1E7B.sc, uogonek.sc, uring.sc, utilde.sc, uni1E79.sc, v.sc, w.sc, wacute.sc, wcircumflex.sc, wdieresis.sc, wgrave.sc, x.sc, y.sc, yacute.sc, ycircumflex.sc, ydieresis.sc, uni1E8F.sc, uni1EF5.sc, ygrave.sc, uni1EF7.sc, uni0233.sc, uni1EF9.sc, z.sc, zacute.sc, zcaron.sc, zdotaccent.sc, uni1E93.sc, r.sc.ss03, racute.sc.ss03, rcaron.sc.ss03, uni0157.sc.ss03, uni0211.sc.ss03, uni1E5B.sc.ss03, uni0213.sc.ss03, uni1E5F.sc.ss03, g.sc.ss04, gbreve.sc.ss04, gcaron.sc.ss04, gcircumflex.sc.ss04, uni0123.sc.ss04, gdotaccent.sc.ss04, uni1E21.sc.ss04, iacute_j.loclNLD.sc.ss05, ij.sc.ss05, napostrophe.sc, adieresis.titl.sc, odieresis.titl.sc, udieresis.titl.sc, ydieresis.titl.sc, ordfeminine, ordmasculine, uni03A9, uni03BC, pi, zero, one, two, three, four, five, six, seven, eight, nine, uni2780, uni2781, uni2782, uni2783, uni2784, uni2785, uni2786, uni2787, uni2788, zero.lf, one.lf, two.lf, three.lf, four.lf, five.lf, six.lf, seven.lf, eight.lf, nine.lf, zero.osf, one.osf, two.osf, three.osf, four.osf, five.osf, six.osf, seven.osf, eight.osf, nine.osf, zero.osf.zero, zero.tf, one.tf, two.tf, three.tf, four.tf, five.tf, six.tf, seven.tf, eight.tf, nine.tf, zero.tf.zero, zero.tosf, one.tosf, two.tosf, three.tosf, four.tosf, five.tosf, six.tosf, seven.tosf, eight.tosf, nine.tosf, zero.tosf.zero, zero.zero, zero.subs, one.subs, two.subs, uni2080, uni2081, uni2082, uni2083, uni2084, uni2085, uni2086, uni2087, uni2088, uni2089, three.subs, four.subs, five.subs, six.subs, seven.subs, eight.subs, nine.subs, zero.dnom, one.dnom, two.dnom, three.dnom, four.dnom, five.dnom, six.dnom, seven.dnom, eight.dnom, nine.dnom, zero.numr, one.numr, two.numr, three.numr, four.numr, five.numr, six.numr, seven.numr, eight.numr, nine.numr, uni2070, uni00B9, uni00B2, uni00B3, uni2074, uni2075, uni2076, uni2077, uni2078, uni2079, fraction, onehalf, uni2153, uni2154, onequarter, threequarters, oneeighth, threeeighths, fiveeighths, seveneighths, zero.sc, one.sc, two.sc, three.sc, four.sc, five.sc, six.sc, seven.sc, eight.sc, nine.sc, period, comma, colon, semicolon, ellipsis, exclam, exclamdown, question, questiondown, periodcentered, bullet, asterisk, numbersign, slash, backslash, exclamdown.case, questiondown.case, periodcentered.case, periodcentered.loclCAT.case, periodcentered.loclCAT, periodcentered.loclCAT.ss02, period.tf, comma.tf, colon.tf, semicolon.tf, numbersign.tf, uni208D, uni208E, parenleft, parenright, braceleft, braceright, bracketleft, bracketright, uni207D, uni207E, parenleft.case, parenright.case, braceleft.case, braceright.case, bracketleft.case, bracketright.case, hyphen, uni00AD, endash, emdash, figuredash, uni2015, uni2010, underscore, hyphen.case, uni00AD.case, endash.case, emdash.case, quotesinglbase, quotedblbase, quotedblleft, quotedblright, quoteleft, quoteright, guillemotleft, guillemotright, guilsinglleft, guilsinglright, quotedbl, quotesingle, guillemotleft.case, guillemotright.case, guilsinglleft.case, guilsinglright.case, exclam.sc, exclamdown.sc, question.sc, questiondown.sc, periodcentered.sc, quotedblleft.sc, quotedblright.sc, quoteleft.sc, quoteright.sc, periodcentered.loclCAT.sc, quotedbl.sc, quotesingle.sc, uni27E8, uni27E9, uni2007, uni200A, uni2008, space, uni00A0, uni2009, uni200B, space.tf, CR, uni20B5, cent, colonmonetary, currency, dollar, dong, Euro, florin, franc, uni20B2, uni20AD, lira, uni20BA, uni20BC, uni20A6, peseta, uni20B1, uni20BD, uni20B9, sterling, uni20A9, yen, cent.tf, currency.tf, dollar.tf, Euro.tf, florin.tf, uni20BA.tf, uni20BD.tf, sterling.tf, yen.tf, cent.001, dollar.001, Euro.part, sterling.part, uni20B5.rvrn, cent.rvrn, colonmonetary.rvrn, dollar.rvrn, uni20B2.rvrn, uni20A6.rvrn, peseta.rvrn, uni20B1.rvrn, cent.tf.rvrn, dollar.tf.rvrn, uni20A9.rvrn, Euro.part.tf, sterling.part.tf, uni2219, uni2052, uni2215, uni208C, uni207C, uni208B, uni207B, plus, minus, multiply, divide, equal, notequal, greater, less, greaterequal, lessequal, plusminus, approxequal, asciitilde, logicalnot, asciicircum, infinity, emptyset, integral, uni2126, uni2206, product, summation, radical, partialdiff, uni00B5, percent, perthousand, uni208A, uni207A, arrowup, uni2197, arrowright, uni2198, arrowdown, uni2199, arrowleft, uni2196, arrowboth, arrowupdn, uni21A9, uni21AA, uni21BA, uni21BB, uni25CF, circle, uni25C6, uni25C7, lozenge, filledbox, uni25A1, uni25AA, uni25AB, uni25FB, uni25FC, triagup, uni25B6, triagdn, uni25C0, uni25B3, uni25B7, uni25BD, uni25C1, uni26AA, uni26AB, uni275B, uni275C, uni275D, uni275E, uni2761, uniF8FF, at, ampersand, paragraph, section, copyright, registered, trademark, degree, minute, second, bar, brokenbar, uni2113, dagger, daggerdbl, estimated, uni2116, uni2B25, uni2B26, at.case, bar.case, uni2761.rvrn, uniF8FF.rvrn, paragraph.rvrn, ampersand.sc, uni02BC, uni02BB, uni02BA, uni02C9, uni02CB, uni02B9, uni02BF, uni02BE, uni02CA, uni02CC, uni02C8, uni0308, uni0307, gravecomb, acutecomb, uni030B, uni0302, uni030C, uni0306, uni030A, tildecomb, uni0304, hookabovecomb, uni030F, uni0311, uni0312, uni031B, dotbelowcomb, uni0324, uni0326, uni0327, uni0328, uni032E, uni0331, uni0335, uni0338, acute, breve, caron, cedilla, circumflex, dieresis, dotaccent, grave, hungarumlaut, macron, ogonek, ring, tilde, gravecomb.asc, acutecomb.asc, gravecomb.case, acutecomb.case, uni030B.case, uni0302.case, uni030C.case, uni0306.case, hookabovecomb.case, uni030F.case, uni031B.case, uni0335.case, uni0336.case, uni030C.alt, uni0328.A, uni0328.E, uni0328.I, uni031B.O, uni0328.a, ogonek.e, uni031B.o, uni0335.sc, uni0302.viet, uni0306.viet, tildecomb.viet, uni03060301, uni03060300, uni03060309, uni03060303, uni03020301, uni03020300, uni03020309, uni03020303, uni03060301.case, uni03060300.case, uni03060309.case, uni03060303.case, uni03020301.case, uni03020300.case, uni03020309.case, uni03020303.case, _part.swsh_bttmleft, _part.swsh_topleft, uniE0FF, uniEFFD, uniF000, spaceinferior, Hinferior, Hsuperior, Oinferior, Osuperior, hypheninferior, endashinferior, emdashinferior, bracketleftinferior, bracketrightinferior, periodinferior, commainferior, coloninferior, hyphensuperior, endashsuperior, emdashsuperior, bracketleftsuperior, bracketrightsuperior, periodsuperior, commasuperior, colonsuperior, spacesuperior, registeredsuperior, daggersuperior, daggerdblsuperior, indexring, gbase, Napostrophe, tittle [code: should-be-monospaced]
* :warning: **WARN** Double-width and/or zero-width glyphs were detected. These glyphs should be set to the same width as all others and then add GPOS single pos lookups that zeros/doubles the widths as needed: periodcentered.loclCAT.sc, uni200B, uni0308, uni0307, gravecomb, acutecomb, uni030B, uni0302, uni030C, uni0306, uni030A, tildecomb, uni0304, hookabovecomb, uni030F, uni0311, uni0312, uni031B, dotbelowcomb, uni0324, uni0326, uni0327, uni0328, uni032E, uni0331, uni0335, uni0338, gravecomb.asc, acutecomb.asc, gravecomb.case, acutecomb.case, uni030B.case, uni0302.case, uni030C.case, uni0306.case, hookabovecomb.case, uni030F.case, uni031B.case, uni0335.case, uni0336.case, uni030C.alt, uni0328.A, uni0328.E, uni0328.I, uni031B.O, uni0328.a, uni031B.o, uni0335.sc, uni0302.viet, uni0306.viet, tildecomb.viet, uni03060301, uni03060300, uni03060309, uni03060303, uni03020301, uni03020300, uni03020309, uni03020303, uni03060301.case, uni03060300.case, uni03060309.case, uni03060303.case, uni03020301.case, uni03020300.case, uni03020309.case, uni03020303.case [code: variable-monospaced]

</details>
<details>
<summary>:warning: <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/065](https://github.com/googlefonts/fontbakery/search?q=com.google.fonts/check/065)
* :warning: **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + f
	- f + i
	- i + f
	- f + l
	- l + f
	- i + l

   [code: lacks-kern-info]

</details>
<details>
<summary>:warning: <b>WARN:</b> Are there caret positions declared for every ligature?</summary>

* [com.google.fonts/check/064](https://github.com/googlefonts/fontbakery/search?q=com.google.fonts/check/064)
* :warning: **WARN** This font lacks caret position values for ligature glyphs on its GDEF table. [code: lacks-caret-pos]

</details>
<details>
<summary>:warning: <b>WARN:</b> Check for points out of bounds.</summary>

* [com.google.fonts/check/075](https://github.com/googlefonts/fontbakery/search?q=com.google.fonts/check/075)
* :warning: **WARN** The following glyphs have coordinates which are out of bounds:
[('uni1EBE', 597.3, 995.8000000000001), ('uni1EBF', 548.3, 835.8000000000001), ('uni1ED1', 557.3, 835.8000000000001), ('uni1EA5.ss06', 558.3, 835.8000000000001), ('uni1EBF.sc', 555.3, 895.8000000000001), ('uni03020301', 257.3, 835.8000000000001), ('uni03020301.case', 257.3, 995.8000000000001)]
This happens a lot when points are not extremes, which is usually bad. However, fixing this alert by adding points on extremes may do more harm than good, especially with italics, calligraphic-script, handwriting, rounded and other fonts. So it is common to ignore this message

</details>
<br>
</details>

### Summary

| :broken_heart: ERROR | :fire: FAIL | :warning: WARN | :zzz: SKIP | :information_source: INFO | :bread: PASS |
|:-----:|:----:|:----:|:----:|:----:|:----:|
| 2 | 8 | 12 | 105 | 13 | 120 |
| 1% | 3% | 5% | 40% | 5% | 46% |

**Note:** The following loglevels were omitted in this report:
* **SKIP**
* **INFO**
* **PASS**
