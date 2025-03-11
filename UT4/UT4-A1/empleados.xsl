<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Lista de Empleados</title>
            </head>
            <body>
                <h2>Lista de Empleados Ordenada por Salario (Descendente)</h2>
                <table border="1">
                    <tr>
                        <th>Nombre</th>
                        <th>Salario</th>
                    </tr>
                    <xsl:apply-templates select="empleados/empleado">
                        <xsl:sort select="salario" data-type="number" order="descending"/>
                    </xsl:apply-templates>
                </table>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="empleado">
        <tr>
            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="salario"/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
