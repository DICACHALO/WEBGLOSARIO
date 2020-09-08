
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
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

<link href="css/tabla.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
<h1><center>GLOSARIO ADSI</center></h1>

<?php
include("conexion.php");
//ESTABLECER una consulta
$consulta = 'SELECT concepto,definicion,bibliografia,tema FROM tab_concepto ORDER BY 1,4';

//Ejecutar la consulta
$resultado = pg_query($consulta)or die ('Error. Intente de nuevo'. pg_last_error());
//Imprimir la consulta
echo "

<section id='main' class='wrapper'>
<div class='inner'>
<table class='alt' summary='Tabla que genera todo el contenido del vocabulario ingresado en el glosario.'>
<tr>
<th>CONCEPTO</th>
<th>DEFINICION</th>
<th>BIBLIOGRAFIA</th>
<th>TEMA</th>
</tr>
";

while ($fila = pg_fetch_array($resultado)){
echo "<tr><td>".$fila['concepto']."</td>
		  <td>".$fila['definicion']."</td>
		  <td>".$fila['bibliografia']."</td>
		  <td>".$fila['tema'].
		  "</td>";
}

echo "</table>";
echo "</div>";
echo "</section>";
pg_close($dbconn);
?>

</body>
</html>