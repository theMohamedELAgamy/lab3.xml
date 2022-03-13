<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
<xsl:template match="/">
  <html>
  <body>
        <center><h2>My Contacts</h2>
            <table border="1">
        <tr bgcolor="#9acd32">
                <th align="left">Name</th>
                <th align="left">Phone</th>
                <th align="left">Type</th>
                <th align="left">street</th>
                  <th align="left">building</th>
                <th align="left">number</th>
                <th align="left">city</th>
                <th align="left">country</th>
                <th align="left">region</th>
                <th align="left">email</th>
                    
            </tr>
            <xsl:for-each select="contacts/employee">
                <tr>
                  <td><xsl:value-of select="name"/></td>
                  <td><xsl:value-of select="phones/phone"/></td>
                  <td><xsl:value-of select="phones//phone/@phonetype"/></td>
                  <td><xsl:value-of select="addresses/street"/></td>
                  <td><xsl:value-of select="addresses/building"/></td>
                  <td><xsl:value-of select="addresses/number"/></td>
                  <td><xsl:value-of select="addresses/city"/></td>
                  <td><xsl:value-of select="addresses/country"/></td>
                  <td><xsl:value-of select="addresses/region"/></td>
                  <td><xsl:value-of select="email"/></td>

                </tr>
            </xsl:for-each>

          
          </table>
        </center>
</body>
  </html>
</xsl:template>
</xsl:stylesheet>
