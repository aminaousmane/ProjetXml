<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="restaurant">
  <html>
    <head>
      <title>Restaurants</title>
      <meta charset="utf8" />
      <link rel="stylesheet" href="restaurant.css"/>
    </head>
    <body >
      <h1 class ="title"> <span><xsl:value-of select="coordonnees/nom" /></span> </h1>
      <div class ="coord">
      <h2>Coordonnees</h2>
      <p> <xsl:value-of select="coordonnees/nomRestaurateur" />  </p>
     <p> <xsl:value-of select="coordonnees/description" />  </p>
      <p> <xsl:value-of select="coordonnees/adresse" />  </p>
      <p class="flotte">
      <img>
    <xsl:attribute name="src">
      <xsl:value-of select="coordonnees/images/@url"/>
    </xsl:attribute>
  </img>
  </p></div>
      <h2>Carte</h2>
      <div class ="coord1">
      <table id="customers">
        <th>Plat</th>
        <th>Prix</th> 
        <th>Type</th>
        <xsl:for-each select="carte/plat">
        <tr >
          <td><xsl:value-of select="@nomPlat" /></td>
          <td><xsl:value-of select="prix" /><xsl:value-of select="prix/@devise"/></td>
          <td><xsl:value-of select="@partieRepas" /></td>
        </tr>
        </xsl:for-each>
      </table></div>
      <div class ="menu">
      <xsl:for-each select="menus/menu">
      <h2><p> <xsl:value-of select="@titre"/> </p></h2>
      <ul>
        
          <li>
          <p> <xsl:value-of select="id(listePlats/@idPlats)/@nomPlat" />  </p>
     <p> <xsl:value-of select="prix" /><xsl:value-of select="prix/@devise" />  </p>
        </li>
    
      </ul></xsl:for-each></div>
    </body>
  </html>
</xsl:template>
</xsl:stylesheet>
