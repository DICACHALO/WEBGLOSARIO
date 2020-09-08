<?php

include("conexion.php");
session_start();

$concepto2 = $_SESSION['concepto'];
$usuario = $_SESSION['usuario'];
$contrasena = $_SESSION['contrasena'];

$concepto =$_POST['concepto'];
$definicion =$_POST['definicion'];
$bibliografia =$_POST['bibliografia'];
$tema =$_POST['tema'];

$consulta = "UPDATE tab_concepto SET concepto='$concepto', 
definicion='$definicion', 
bibliografia='$bibliografia', 
tema='$tema' 
WHERE concepto='$concepto2';";

$resultado = pg_query($consulta) or die ('Error. Intente de nuevo'. pg_last_error());

pg_close($dbconn);

echo'
<html>
	<head>
		<meta http-equiv="REFRESH" content="0;url=home.php">
	</head>
</html>
';

?>
