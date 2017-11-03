<?xml version = "1.0" encoding = "UTF-8"?>
<xsl:stylesheet version = "1.0"
   xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">

   <xsl:template match = "/">
       <html>
         <body>
            <h3>Details of each Students. Xpath expression = "/class/student"</h3>

            <table border = "1">
               <tr bgcolor = "#9acd32">
                  <th>Roll No</th>
                  <th>First Name</th>
                  <th>Last Name</th>
                  <th>Nick Name</th>
                  <th>Marks</th>
               </tr>

               <xsl:for-each select = "/class/student">
                  <tr>
                     <td><xsl:value-of select = "@rollno"/></td>
                     <td><xsl:value-of select = "firstname"/></td>
                     <td><xsl:value-of select = "lastname"/></td>
                     <td><xsl:value-of select = "nickname"/></td>
                     <td><xsl:value-of select = "marks"/></td>
                  </tr>
               </xsl:for-each>
            </table>

            <h3>Details of each Students whose marks are greater than 85.
               Xpath expression = "marks > 85"</h3>

            <table border = "1">
               <tr bgcolor = "#9acd32">
                  <th>Roll No</th>
                  <th>First Name</th>
                  <th>Last Name</th>
                  <th>Nick Name</th>
                  <th>Marks</th>
               </tr>

               <xsl:for-each select = "//student">
                  <xsl:if test = "marks > 85">
                     <tr>
                        <td><xsl:value-of select = "@rollno"/></td>
                        <td><xsl:value-of select = "firstname"/></td>
                        <td><xsl:value-of select = "lastname"/></td>
                        <td><xsl:value-of select = "nickname"/></td>
                        <td><xsl:value-of select = "marks"/></td>
                     </tr>
                  </xsl:if>
               </xsl:for-each>
            </table>
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>
