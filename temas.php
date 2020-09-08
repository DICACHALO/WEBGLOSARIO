
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
</head>
<body>

<?php
include("conexion.php");
//ESTABLECER una consulta

$consulta = 'SELECT concepto,definicion,bibliografia,tema FROM tab_concepto';

//Ejecutar la consulta
$resultado = pg_query($consulta)or die ('Error. Intente de nuevo'. pg_last_error());
//Imprimir la consulta
echo "
<table border=1 width=100%>
<tr>
<td>CONCEPTO</td>
<td>DEFINICION</td>
<td>BIBLIOGRAFIA</td>
<td>TEMA</td>
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

pg_close($dbconn);
?>


<?php
$i="Diana";
switch ($i) {
    case "manzana":
        echo "i es una manzana";
        break;
    case "barra":
        echo "i es una barra";
        break;
    case "pastel":
        echo "i es un pastel";
        break;
}
?>

<?php
include ('conexion.php');
$consultaBasesdedatos="SELECT concepto FROM tab_concepto WHERE tema='Bases de datos'";
$resultado = pg_query($consultaBasesdedatos)or die ('Error. Intente de nuevo'. pg_last_error());
while ($fila = pg_fetch_array($resultado)){
echo "<tr><td>".$fila['concepto']."</td>";
}
?>

</body>
</html>