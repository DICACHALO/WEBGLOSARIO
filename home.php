
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>EDICIÓN DE MI GLOSARIO</title>
<meta charset="UTF-8">

<!-- favicon para todas las plataformas, descargado en:http://www.favicon-generator.org/ -->
<link rel="apple-touch-icon" sizes="57x57" href="images/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60" href="images/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72" href="images/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76" href="images/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114" href="images/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120" href="images/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144" href="images/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152" href="images/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180" href="images/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192"  href="images/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32" href="images/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96" href="images/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16" href="images/favicon-16x16.png">
<link rel="manifest" href="images/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">
<!-- termina bloque favicon -->

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!--[if lt IE 9]>
     <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
     <script src="https://oss.maxcdn.com/libs/respond.web/js/1.4.2/respond.min.js"></script>
<![endif]-->
<link href='http://fonts.googleapis.com/css?family=Kreon:300,400,700' rel='stylesheet' type='text/css'>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

<!-- start plugins -->
<script type="text/javascript" src="js/jquery.min.js"></script>
	<script>
		$(function() {
			var pull 		= $('#pull');
				menu 		= $('nav ul');
				menuHeight	= menu.height();
			$(pull).on('click', function(e) {
				e.preventDefault();
				menu.slideToggle();
			});
			$(window).resize(function(){
        		var w = $(window).width();
        		if(w > 320 && menu.is(':hidden')) {
        			menu.removeAttr('style');
        		}
    		});
		});
	</script>
<!--font-Awesome-->
   	<link rel="stylesheet" href="fonts/web/css/font-awesome.min.css">
<!--font-Awesome-->
</head>
<body>
<div class="header_bg" id="home"><!-- start header -->
<div class="container">
	<div class="row header text-center specials">
		<div class="h_logo">
			<a href="home.php"><img src="images/logo.png" alt="" class="responsive"/></a>
		</div>
		<nav class="top-nav">
			<ul class="top-nav nav_list">
				<li class="page-scroll"><a href="">CONFIGURACIÓN +</a></li>
				<li class="logo page-scroll"><a title="hexa" href="index.php"><img src="images/logo.png" alt="" class="responsive"/></a></li>
				<li class="page-scroll"><a href="unlog.php">SALIR DEL PROGRAMA</a></li>
			</ul>
			<a href="#" id="pull"><img src="images/nav-icon.png" title="menu" /></a>
		</nav>
		<div class="clearfix"></div>
	</div>
</div>
</div>

<?php
include("conexion.php");
session_start();
echo "<br>";
echo "<br>";
echo "<h1>BIENVENID@ ".$_SESSION['usuario']."</h1>";

//ESTABLECER una consulta

$consulta = 'SELECT concepto,definicion,bibliografia,tema FROM tab_concepto ORDER BY 1,2';

//Ejecutar la consulta
$resultado = pg_query($consulta)or die ('Error. Intente de nuevo'. pg_last_error());
//Imprimir la consulta
echo "
<table class='alt' border='1'>
<tr>
<th><center>CONCEPTO</center></th>
<th><center>DEFINICION</center></th>
<th><center>BIBLIOGRAFIA</center></th>
<th><center>TEMA</center></th>
<td></td>
<td></td>
</tr>
";

//Añadir un registro

echo "
<tr>
	<form action='crearconcepto.php' method='POST'>
	<td><textarea rows='4' cols='21' name='concepto'></textarea></td>
	<td><textarea rows='4' cols='40' name='definicion'></textarea></td>
	<td><textarea rows='4' cols='40' name='bibliografia'></textarea></td>
	<td><select name='tema'>
		<option value='Bases de datos'>Bases de datos</option>
		<option value='Buenas Prácticas'>Buenas Prácticas</option>
		<option value='Formulación de proyectos'>Formulación de proyectos</option>
		<option value='Fundamentación'>Fundamentación</option>
		<option value='Herramientas'>Herramientas</option>
		<option value='Diseño Web'>Diseño Web</option>
		<option value='Lenguajes de programación'>Lenguajes de programación</option>
		<option value='Sistemas Operativos'>Sistemas Operativos</option>
		<option value='Seguridad Informática'>Seguridad Informática</option>
	</td>
	<td><input type='submit' value='ENVIAR'></td><td></td>
</tr>
</form>
";

while ($fila = pg_fetch_array($resultado)){
echo "<tr><td>".$fila['concepto']."</td>
		  <td>".$fila['definicion']."</td>
		  <td>".$fila['bibliografia']."</td>
		  <td>".$fila['tema'].
		  "</td><td><a href='eliminarconcepto.php?concepto=".$fila['concepto']
		  		."&definicion=".$fila['definicion']
		  		."&bibliografia=".$fila['bibliografia']
		  		."&tema=".$fila['tema']."'>
		  Eliminar</a></td>
		  <td><a href='formularioactualizar.php?concepto=".$fila['concepto']
		         ."&definicion=".$fila['definicion']
		         ."&bibliografia=".$fila['bibliografia']
		         ."&tema=".$fila['tema']."'>
		         Actualizar</a></td></tr>";
}

echo "</table>";
echo "<br><hr>";

pg_close($dbconn);
?>

</body>
</html>