<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:foo="http://www.foo.org/" xmlns:bar="http://www.bar.org">
<xsl:template match="/">
  <html>
  <head>
<style>
  table {
    width:100%;
  }
  table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
  }
  th, td {
    padding: 15px;
    text-align: left;
  }
  table#t01 tr:nth-child(even) {
    background-color: #eee;
  }
  table#t01 tr:nth-child(odd) {
   background-color: #fff;
  }
  table#t01 th {
    background-color: "Grey";
    color: "white";
  }
</style>
</head>
  <body>
  <h2>Dun Atilan Tweet'ler</h2>
    <table	>
      <tr>
        <th>kullanici_adi</th>
        <th>kullanici_takipci_sayisi</th>
        <th>tweet</th>
      </tr>
      <xsl:for-each select="main/NiFi_SelectHiveQL_Record">
      <tr>
        <td><xsl:value-of select="kullanici_adi"/></td>
        <td><xsl:value-of select="kullanici_takipci_sayisi"/></td>
        <td><xsl:value-of select="tweet"/></td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>