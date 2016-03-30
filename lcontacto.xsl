<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8"/>
    <xsl:template match="/">
		<html>
        	<head>
        		<title>Lista de Contactos</title>
            </head>
			<style>
				table,th,td {
					border: 1px solid black;
					border-collapse: collapse;
					text-align: center;
				}

				th,td {
					padding: 5px;
				}

				table th {
					background-color: #4CAF50;
				}

				table tr:hover {
					background-color: #ddd;
				}
				
				body {
					background-color:#EEEEEE;
				}
				
				ul {
					list-style-type: none;
					margin: 0px;
					padding: 0px;
					text-align: center;
				}
			</style>
			<body>
				<h2 align= "center">Mi Lista de Contactos</h2>
				<table border="1" align="center">
					<tr bgcolor="#9acd32">
                    	<th>Cedula</th>
						<th>Nombre</th>
						<th>Apellido</th>
						<th>Edad</th>
						<th>Genero</th>
						<th>Telefono</th>
						<th>Correo</th>
						<th>Estado Civil</th>
						<th>Direccion</th>
						<th>Profesion</th>
						<th>Ocupasion</th>
					</tr>
					<xsl:for-each select="lcontacto/contacto">
					<xsl:sort select="@cedula"/>
					<tr>
                    	<td><xsl:value-of select="@cedula"/></td>
						<td><xsl:value-of select="nombre"/></td>
						<td><xsl:value-of select="apellido"/></td>
						<td><xsl:value-of select="edad"/></td>
						<td><xsl:value-of select="genero"/></td>
						<td>
                        	<ul>
                            	<xsl:for-each select='telefono'>
                            		<li><xsl:value-of select='.' /></li>
                            	</xsl:for-each>
                            </ul>
                        </td>
						<td>
                        	<ul>
                            	<xsl:for-each select='correo'>
                            		<li><xsl:value-of select='.' /></li>
                            	</xsl:for-each>
                            </ul>
                        </td>
						<td><xsl:value-of select="estadoCivil"/></td>
						<td><xsl:value-of select="direccion"/></td>
						<td><xsl:value-of select="profesion"/></td>
						<td><xsl:value-of select="ocupacion"/></td>
					</tr>
					</xsl:for-each>
				</table>
			</body>
        </html>
    </xsl:template>

</xsl:stylesheet>