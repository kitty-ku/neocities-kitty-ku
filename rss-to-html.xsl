<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
	<html>
		<head>
			<link href="rss.css" rel="stylesheet" type="text/css" media="all"></link>
			<link rel="icon" type="image/x-icon" href="favicon.png"></link>
		</head>
		<body>
			<xsl:apply-templates/>
		</body>
	</html>
</xsl:template>

<xsl:template match="channel">
	<xsl:for-each select="item">
		<h3><a>
			<xsl:attribute name="href">
				<xsl:value-of select="link"/>
			</xsl:attribute>
			<xsl:attribute name="target">
				_parent
			</xsl:attribute>
			<!-- FIXME: Wtf is wrong with XSLT??? This span can't be displayed: none dynamically -->
			<!-- <span class="unread-marker" style="display: inline-block;">[!]</span> -->
			<xsl:value-of select="title"/>
		</a></h3>
		<p><xsl:value-of select="description"/></p>
	</xsl:for-each>
</xsl:template>

<xsl:template match="item">

</xsl:template>

</xsl:stylesheet>