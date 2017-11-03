<?xml version = "1.0" encoding = "UTF-8"?>
<xsl:stylesheet version = "1.0"
   xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">

   <xsl:template match = "/">
      <html>
         <body>
            <h3>Comment(). Xpath expression = "/class/student/preceding-sibling::comment()"</h3>

            <xsl:value-of select = "/class/student/preceding-sibling::comment()"/>
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>
