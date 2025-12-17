<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns="http://www.w3.org/1999/xhtml"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:cbml="http://www.cbml.org/ns/1.0"
    >
   
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" 
        include-content-type="no" indent="yes"/>
    
    <xsl:template match="/">
        <html>
            
            <head>
                
                <title>
                    Anime
                    <h1>  <xsl:apply-templates select="descendant::title"/></h1>
                    
                </title>
                <link rel="stylesheet" href="style.css"/>
                <link rel="stylesheet" href="ep3.css"/>
                
            </head>
            
            <body>
                
              
                
                <div/>
                
                
                <xsl:apply-templates/> 
          
                
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="title">
        <h1>
            <xsl:apply-templates></xsl:apply-templates>
        </h1>
    </xsl:template>
    
    <xsl:template match="cbml:balloon">
        <div class="balloon {@who}">
            <span class="who">
                <xsl:value-of select="@who"/>
            </span>
            <span class="text">
                <xsl:apply-templates/>
            </span>
        </div>
    </xsl:template>
    
    
    
    
    
    
    
    
    
</xsl:stylesheet>


