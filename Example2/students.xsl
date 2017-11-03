<?xml version = "1.0" encoding = "UTF-8"?>
<xsl:stylesheet version = "1.0"
   xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">

   <xsl:template match = "/">
      <html>
         <body>
            <h3>Root Element. Xpath expression  =  "/*"</h3>
            <p><xsl:value-of select = "name(/*)"/></p>
            <h3>Root Element. Xpath expression = "/class"</h3>
            <p> <xsl:value-of select = "name(/class)"/></p>
            <h3>Details of each Students. Xpath expression = "/class/*"</h3>

            <table border = "1">
               <tr bgcolor = "#9acd32">
                  <th>Roll No</th>
                  <th>First Name</th>
                  <th>Last Name</th>
                  <th>Nick Name</th>
                  <th>Marks</th>
               </tr>

               <xsl:for-each select = "/class/*">
                  <tr>
                     <td><xsl:value-of select = "@rollno"/></td>
                     <td><xsl:value-of select = "firstname"/></td>
                     <td><xsl:value-of select = "lastname"/></td>
                     <td><xsl:value-of select = "nickname"/></td>
                     <td><xsl:value-of select = "marks"/></td>
                  </tr>
               </xsl:for-each>
            </table>
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>
