<?php

include("conexion.php");

session_start();

$concepto = $_GET['concepto'];
$definicion = $_GET['definicion'];
$bibliografia = $_GET['bibliografia'];
$tema = $_GET['tema'];

$consulta = "DELETE FROM tab_concepto WHERE concepto='$concepto' AND definicion='$definicion' AND bibliografia='$bibliografia' AND tema='$tema';";

$resultado = pg_query($consulta);

pg_close($dbconn);

echo"

<html>
	<head>
		<meta http-equiv='REFRESH' content='0;url=home.php'>
	</head>
</html>

";

?>
