<?xml version="1.0"?>

<xsl:stylesheet version="1.0" type="text/xsl"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="text"/>


<xsl:template match="Node">
	<xsl:apply-templates select="node()"/>
</xsl:template>


<xsl:template match="IsGreater">
	<xsl:apply-templates select="*[1]"/> > <xsl:apply-templates select="*[2]"/>
</xsl:template>

<xsl:template match="Addition">(<xsl:apply-templates select="*[1]"/> + <xsl:apply-templates select="*[2]"/>)</xsl:template>

<xsl:template match="Subtraction">(<xsl:apply-templates select="*[1]"/> - <xsl:apply-templates select="*[2]"/>)</xsl:template>

<xsl:template match="Division">(<xsl:apply-templates select="*[1]"/> / <xsl:apply-templates select="*[2]"/>)</xsl:template>

<xsl:template match="int"><xsl:value-of select="text()"/></xsl:template>

</xsl:stylesheet>
