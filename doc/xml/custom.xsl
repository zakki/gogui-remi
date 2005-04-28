<?xml version='1.0'?> 
<xsl:stylesheet
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  version="1.0"> 

<xsl:import href="chunk.xsl"/> 

<xsl:param name="admon.graphics" select="0"/>
<xsl:param name="chunk.quietly" select="1"/>
<xsl:param name="chunk.section.depth" select="0"/>
<xsl:param name="chunker.output.encoding" select="'UTF-8'"/> 
<xsl:param name="footer.rule" select="0"/>
<xsl:param name="generate.index" select="1"/>
<xsl:param name="header.rule" select="0"/>
<xsl:param name="html.cleanup" select="1"/>
<xsl:param name="html.stylesheet" select="'docbook.css'"/> 
<xsl:param name="make.valid.html" select="1"/>
<xsl:param name="navig.showtitles" select="1"/>
<xsl:param name="refentry.generate.name" select="0"/>
<xsl:param name="refentry.generate.title" select="1"/>
<xsl:param name="spacing.paras" select="0"/>
<xsl:param name="toc.section.depth" select="0"/>
<xsl:param name="use.id.as.filename" select="1"/>

<xsl:param name="html.stylesheet" select="'corpstyle.css'"/> 

<!-- Don't generate and body attributes -->
<xsl:template name="body.attributes">
</xsl:template>

<!-- Don't use header for abstract -->
<xsl:template match="abstract" mode="titlepage.mode">
  <div class="{name(.)}">
    <xsl:call-template name="anchor"/>
    <xsl:apply-templates mode="titlepage.mode"/>
  </div>
</xsl:template>

</xsl:stylesheet>
