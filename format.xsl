<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <style>
          table { width: 100%; border-collapse: collapse; font-family: Arial, sans-serif; }
          th { background-color: #333; color: white; padding: 10px; text-align: left; }
          td { border: 1px solid #ccc; padding: 10px; }
          tr:nth-child(even) { background-color: #eee; }
          h2 { border-bottom: 2px solid #333; padding-bottom: 10px; }
        </style>
      </head>
      <body>
        <h2>Business Organization: Employee List</h2>
        <table>
          <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Role</th>
            <th>Department</th>
            <th>Salary</th>
          </tr>
          <xsl:for-each select="Organization/Employee">
            <tr>
              <td><xsl:value-of select="@id"/></td>
              <td><xsl:value-of select="Name"/></td>
              <td><xsl:value-of select="Role"/></td>
              <td><xsl:value-of select="Department"/></td>
              <td><xsl:value-of select="Salary"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>