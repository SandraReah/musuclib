<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/music">
    <html>
      <head>
        <title>Music Library</title>
      </head>
      <body>
        <h1>Music Library</h1>
        <div class="music-grid">
          <xsl:for-each select="song">
            <div class="music-item">
              <strong class="{translate(artist,' ()','')}-title"><xsl:value-of select="songTitle"/> - <xsl:value-of select="artist"/> (<xsl:value-of select="debutYear"/>)</strong>
              <br/>
              Albums:
              <ul>
                <xsl:for-each select="albums/album">
                  <li><xsl:value-of select="."/></li>
                </xsl:for-each>
              </ul>
            </div>
          </xsl:for-each>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>