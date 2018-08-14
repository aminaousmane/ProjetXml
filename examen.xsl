<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="examen">
  <html>
    <head>
      <title> Examen </title>
      <style type="text/css">
        body
        {
          background-color : #FBA0FE;
          color : black;
          padding : 5px;
          margin : 50px;
        }
      </style>
    </head>
    <body>
        <center><h1> <xsl:value-of select="titre"/> </h1></center>
        <hr/>
        <br/>
        <hr/>
        <br/>
        <hr/>
        <xsl:for-each select="questions/question">
          <xsl:for-each select="./partie">
            <h2> Question <xsl:value-of select="@id" /> </h2>
            <!-- affiche le contenu des parties -->
            <xsl:value-of select="."/>
          <hr/>
          </xsl:for-each>
         </xsl:for-each>
    </body>
  </html>
  </xsl:template>
</xsl:stylesheet>
