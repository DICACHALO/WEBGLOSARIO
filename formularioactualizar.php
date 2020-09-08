<!DOCTYPE HTML>
<html>
<head>
<title>MI GLOSARIO ADSI</title>
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

<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Kreon:300,400,700' rel='stylesheet' type='text/css'>
</head>
<body>

<?php

include("conexion.php");
session_start();
//Recupero variables
$usuario = $_SESSION['usuario'];
$contrasena = $_SESSION['contrasena'];

$concepto = $_GET['concepto'];
$definicion = $_GET['definicion'];
$bibliografia = $_GET['bibliografia'];
$tema = $_GET['tema'];

$consulta = "SELECT concepto,definicion,bibliografia,tema FROM tab_concepto WHERE concepto='$concepto' AND definicion='$definicion' AND bibliografia='$bibliografia' AND tema='$tema';";

$resultado = pg_query($consulta)or die ('Error. Intente de nuevo'. pg_last_error());

echo"<h1>ACTUALIZAR CONCEPTO</h1>";

echo "
<table class='alt' border=1>
<tr>
<td>CONCEPTO</td>
<td>DEFINICIÓN</td>
<td>BIBLIOGRAFÍA</td>
<td>TEMA</td>
<td></td>
</tr>
";

while ($fila = pg_fetch_array($resultado)){
echo "
<form action='actualizarconcepto.php' method='post'><tr>
		<td><input type='text' name='concepto' value='".$fila['concepto']."'></td>
		<td><textarea rows='4' cols='40' name='definicion'>$definicion</textarea></td> 
		<td><textarea rows='4' cols='40' name='bibliografia'>$bibliografia</textarea></td>
		<td><select name='tema'>
		<option size='40'>$tema</option>
		<option value='Bases de datos'>Bases de datos</option>
		<option value='Buenas Prácticas'>Buenas Prácticas</option>
		<option value='Formulación de proyectos'>Formulación de proyectos</option>
		<option value='Fundamentación'>Fundamentación</option>
		<option value='Herramientas'>Herramientas</option>
		<option value='Diseño Web'>Diseño Web</option>
		<option value='Lenguajes de programación'>Lenguajes de programación</option>
		<option value='Sistemas Operativos'>Sistemas Operativos</option>
		<option value='Seguridad Informática'>Seguridad Informática</option>
	</select>
	</td><td><input type='submit' value=Guardar></td></tr>";
}

echo "</table></form>";

$_SESSION['concepto'] = $concepto;

pg_close($dbconn);

?>

</body>
</html>