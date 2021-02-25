<?xml version="1.0" encoding="WINDOWS-1251" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/TR/WD-xsl">
   <table border="1">
   <tr bgcolor="#CCCCCC">
   <td align="center"><strong>Name</strong></td>
   <td align="center"><strong>Labs count</strong></td>
   <td align="center"><strong>Mark</strong></td>
   <td align="center"><strong>Gorups</strong></td>
   </tr>
      <xsl:for-each select="subjects/subject">
         <tr bgcolor="#F5F5F5">
         <td><xsl:value-of select="name"/></td>
         <td><xsl:value-of select="labscount"/></td>
         <td><xsl:value-of select="mark"/></td>
         <td>
         <xsl:for-each select="subjects/subject/groups/group">
            <xsl:value-of select="group"/>
         </xsl:for-each>
         </td>
         </tr>
      </xsl:for-each>
   </table>
</xsl:template>
</xsl:stylesheet>