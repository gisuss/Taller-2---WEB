<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8"/>

	<xsl:template match='/'>
        <html>
        	<head>
        		<title>Lista de Contactos</title>
            </head>
            <xsl:apply-templates/>
        </html>
	</xsl:template>
    
    <xsl:template match='lcontacto'>
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
				color: #fff;
				background-color: #009688;
				font-size: 24px;
			}

			table tr:hover {
				background-color: #ddd;
			}
				
			body {
				background-color:#EEEEEE;
			}
				
			ul, p {
				list-style-type: none;
				margin: 0px;
				padding: 0px;
				text-align: center;
			}
			
			p {
				display: inline;
			}
			
			#titulo {
				text-decoration: underline;
				font-size: 17px;
				font-weight: bold;
				color: #603;
			}
			
			.cajacontenedoraTitulo {
				font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
				font-size: 20px;
				text-align: center;
				padding: 0.01em 16px;
				border-top-left-radius: 8px;
				border-top-right-radius: 8px;
				background-image: url("images/medio-ambiente.jpg");
				background-repeat: repeat;
				background-size: cover;
			}
			
			.cajacontenedoraPie {
				font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
				text-align: right;
				display: block;
				clear: both;
				padding: 0.01em 16px;
				margin-top: 30px;
				border-bottom-left-radius: 8px;
				border-bottom-right-radius: 8px;
			}
			
			.Tealcolor {
				color: #fff;
				background-color: #009688;
			}
			
			.flotantearriba {
				position: fixed;
				bottom: 175px;
				right: 0px;
			}
			
			.flotanteabajo {
				position: fixed;
				bottom: 115px;
				right: 0px;
			}
			
			.img-boton-flotante {
				width: 60px;
				height: 60px;
				border: 0;
			}
		</style>
    	<body>
        	<header class="cajacontenedoraTitulo Tealcolor" id="inicio">
				<h1>Mi Lista de Contactos</h1>
			</header><br />
            
			<table border="1" align="center">
            	<tr>
                    <th>Perfil</th>
					<th>Información</th>
				</tr>
                <xsl:apply-templates select='contacto'/>
            </table>
            
            <div class="flotantearriba">
                <a href="#inicio"><img src="images/boton-subir.png" alt="arriba" title="arriba" class="img-boton-flotante"/></a>
            </div>
            
            <div class="flotanteabajo">
                <a href="#fin"><img src="images/boton-bajar.png" alt="abajo" title="abajo" class="img-boton-flotante"/></a>
            </div>
            
            <footer class="cajacontenedoraPie Tealcolor" id="fin">
                <br />
                <address>Desarrollado por:</address>
                <address><b>Jesús Romero</b> - C.I.: 20.753.800</address>
                <address><b>Yessica Ríos</b> - C.I.: 20.786.743</address><br />
			</footer>
        </body>    
    </xsl:template>
    
    <xsl:template match='contacto'>
        <tr>
        	<td>
                <img>
                    <xsl:attribute name="src">
                        <xsl:value-of select="imagen"/>
                    </xsl:attribute>
                </img>
        	</td>
            <td>
            	<ul>
                	<p id="titulo">Cedula: </p><p><xsl:value-of select="@cedula"/></p><br />
					<p id="titulo">Nombre: </p><p><xsl:value-of select="nombre"/></p><br />
					<p id="titulo">Apellido: </p><p><xsl:value-of select="apellido"/></p><br />
					<p id="titulo">Edad: </p><p><xsl:value-of select="edad"/></p><br />
					<p id="titulo">Genero: </p><p><xsl:value-of select="genero"/></p><br />
                    <p id="titulo">Telefonos:</p><br />
                    <ul>
                    	<xsl:for-each select='telefono'>
                            <li><xsl:value-of select='.' /></li>
                        </xsl:for-each>
                    </ul>
                    <p id="titulo">Correos Electronicos:</p><br />
                    <ul>
                    	<xsl:for-each select='correo'>
                            <li><xsl:value-of select='.' /></li>
                        </xsl:for-each>
                    </ul>
					<p id="titulo">Estado Civil: </p><p><xsl:value-of select="estadoCivil"/></p><br />
					<p id="titulo">Direccion: </p><p><xsl:value-of select="direccion"/></p><br />
					<p id="titulo">Profesion: </p><p><xsl:value-of select="profesion"/></p><br />
					<p id="titulo">Ocupacion: </p><p><xsl:value-of select="ocupacion"/></p><br />
                </ul>
            </td>
        </tr>
    </xsl:template>

</xsl:stylesheet>