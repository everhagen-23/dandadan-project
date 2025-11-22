<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns="http://www.w3.org/1999/xhtml">
    
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" 
        include-content-type="no" indent="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>
                    <xsl:apply-templates select="descendant::title"/>
                </title>
                <link rel="stylesheet" href="ep1-test.css"/>
            </head>
            <body>
                
                <p>
                    <xsl:apply-templates select="descendant::body"/></p>
                
            </body>
            
        </html></xsl:template>    

    <xsl:template match="body">
        <section>
            <xsl:apply-templates/>
        </section>
    </xsl:template>
    
    <xsl:template match="sp">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
    <xsl:template match="div">
        <section class="main">
            <xsl:apply-templates/>
        </section>
    </xsl:template>

<xsl:template match="speaker">
    <span class="speaker">
        <xsl:apply-templates/>:
    </span>
</xsl:template>
    
    
</xsl:stylesheet>
