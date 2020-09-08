<?php
include("conexion.php");
session_start();

//Crear variables
$addconcepto = $_POST['concepto'];
$adddefinicion = $_POST['definicion'];
$addbibliografia = $_POST['bibliografia'];
$addtema = $_POST['tema'];
//Consulta

$consulta ="INSERT INTO tab_concepto(concepto,definicion,bibliografia,tema) VALUES ('$addconcepto', '$adddefinicion', '$addbibliografia', '$addtema');";
$respuesta= pg_query($consulta) or die ('Error. Intente de nuevo'.pg_last_error($dbconn));
pg_close($dbconn);		
echo "El registro se ha realizado con éxito.";


//Y vuelvo

echo "
<html>
	<head>
		<meta http-equiv='REFRESH' content='0;url=home.php'>
	</head>
</html>
";
?>
