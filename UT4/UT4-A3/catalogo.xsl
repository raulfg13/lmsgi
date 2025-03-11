<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Catálogo de Productos</title>
            </head>
            <body>
                <h2>Catálogo de Productos</h2>
                <table border="1">
                    <tr>
                        <th>Nombre</th>
                        <th>Descripción</th>
                        <th>Precio</th>
                    </tr>
                    <xsl:apply-templates select="catalogo/producto"/>
                </table>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="producto">
        <tr>
            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="descripcion"/></td>
            <td><xsl:value-of select="precio"/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>