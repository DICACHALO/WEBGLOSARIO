<!DOCTYPE html>
<html>
	<head>
	    <meta charset="utf-8">
	    <title>REGISTRO DE NUEVO USUARIO</title>
	    <link rel="stylesheet" href="assets/css/formulario.css"/>
	</head>
	<body>
		<?php
		include ("conexion.php");
		$sql="INSERT INTO tab_usuario (correo_electronico,contrasena,nombre) 
		values('$_REQUEST[Email]','$_REQUEST[contrasena]','$_REQUEST[Nombre]');";
		$respuesta=pg_query($sql)or die('Error. Intente de nuevo'.pg_last_error());
		pg_close($dbconn);
		echo "El registro se ha realizado con éxito.";
		?>
	</body>
</html>