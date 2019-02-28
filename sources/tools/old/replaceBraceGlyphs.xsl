<?xml version="1.0"?>
<!-- 
     Transform a ttFont file Target.ttx by replacing some glyphs
     with copies from Source.ttx.  If replacenames is not empty,
     then replace only glyphs whose name is in replacenames
     (and is in both Target.ttx and Source.ttx). 
     Replacing a glyph replaces the whole TTGlyph element
     and/or the whole glyphVariations element.

     author: grammal at freelancer.com
 -->
<xsl:transform version="1.0" 
               xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <!-- File to transform is a ttFont ttx xml document -->

  <!-- replacements: source of replacement glyphs (filepath to ttx xml) -->
  <xsl:param name="replacements"/>

  <!-- replacenames: glyphs to replace (comma separated string without space)-->
  <xsl:param name="replacenames"/>

  <xsl:variable name="replacementsDoc" select="document($replacements)"/>
  <xsl:variable name="replacementsGlyf" select="$replacementsDoc/ttFont/glyf"/>
  <xsl:variable name="replacementsGvar" select="$replacementsDoc/ttFont/gvar"/>
  <xsl:variable name="replacenamesBookended" select="concat(',',$replacenames,',')"/>

  <!-- 
       Replace TTGlpyph with a copy from replacements,
       if replacenames is empty or TTYGlyph name is in replacenames.
       Otherwise copy the existing TTGlyph from the target file.
       (Log if replaced, or if name matches but not found in replacements.)
  -->
  <xsl:template match="TTGlyph">
    <xsl:variable name="name" select="@name"/>
    <xsl:choose>
      <xsl:when test="(not($replacenames) or string-length($replacenames)=0 or 
                       contains($replacenamesBookended, concat(',',$name,',')))
                      and $replacementsGlyf/TTGlyph[@name=$name]">
        <xsl:copy-of select="$replacementsGlyf/TTGlyph[@name=$name]"/>
        <xsl:message>&lt;TTYGlyph name="<xsl:value-of select="$name"/>"&gt; replaced</xsl:message>
      </xsl:when>
      <xsl:otherwise>
        <xsl:copy-of select="."/>
        <xsl:if test="contains($replacenamesBookended, concat(',',$name,','))">
          <xsl:message>&lt;TTYGlyph name="<xsl:value-of select="$name"/>"&gt; not in <xsl:value-of select="$replacements"/></xsl:message>
        </xsl:if>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- 
       Replace glyphVariations with a copy from replacements,
       if replacenames is empty or glyphVariations glyph is in replacenames.
       Otherwise copy the existing glyphVariations from the target file.
       (Log if replaced, or if name matches but not found in replacements.)
  -->
  <xsl:template match="glyphVariations">
    <xsl:variable name="glyph" select="@glyph"/>
    <xsl:choose>
      <xsl:when test="(not($replacenames) or string-length($replacenames)=0 or
                       contains($replacenamesBookended, concat(',',$glyph,',')))
                      and $replacementsGvar/glyphVariations[@glyph=$glyph]">
        <xsl:copy-of select="$replacementsGvar/glyphVariations[@glyph=$glyph]"/>
        <xsl:message>&lt;glyphVariations name="<xsl:value-of select="$glyph"/>"&gt; replaced</xsl:message>
      </xsl:when>
      <xsl:otherwise>
        <xsl:copy-of select="."/>
        <xsl:if test="contains($replacenamesBookended, concat(',',$glyph,','))">
          <xsl:message>&lt;glyphVariations name="<xsl:value-of select="$glyph"/>"&gt; not in <xsl:value-of select="$replacements"/></xsl:message>
        </xsl:if>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="@*|node()|comment()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>

</xsl:transform>
