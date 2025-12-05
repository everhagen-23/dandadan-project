<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:cbml="http://www.cbml.org/ns/1.0"
    xmlns="http://www.w3.org/1999/xhtml">
    
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" 
        include-content-type="no" indent="yes"/>
    
    
    <xsl:template match="/">
        <html>
            
            <head>
                
                <title>
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
    
    
    
    
    <xsl:template match="div">
        <section class="{@type}">
            <xsl:apply-templates/>
        </section>
        
    </xsl:template>
    
    
    <xsl:template match="speaker">
        <h2>
            <xsl:apply-templates/>
        </h2>
    </xsl:template>
    
    <xsl:template match="sp">
        
          <h2 class="{speaker}">
              <xsl:value-of select="speaker"/>
              <xsl:text>:</xsl:text>
          </h2>
            
           <p> <xsl:value-of select="normalize-space(p)"/>
        </p>
    </xsl:template>
    
    
    
</xsl:stylesheet>