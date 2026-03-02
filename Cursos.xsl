<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html>
<head>
    <title>Semana de Ingenierías</title>
</head>

<body>

    <h1>
        <xsl:value-of select="evento/@nombre"/>
    </h1>

    <h2>
        Carrera: <xsl:value-of select="evento/@carrera"/>
    </h2>

    <h3>Lista de Cursos:</h3>

    <ol>
        <xsl:for-each select="evento/curso">
            <li>
                <b><xsl:value-of select="nombre"/></b><br/>
                Ponente: <xsl:value-of select="ponente"/><br/>
                Duración: <xsl:value-of select="duracion"/> horas<br/>
                Modalidad: <xsl:value-of select="modalidad"/><br/>
                Día: <xsl:value-of select="dia"/>
            </li>
            <br/>
        </xsl:for-each>
    </ol>

</body>
</html>

</xsl:template>
</xsl:stylesheet>