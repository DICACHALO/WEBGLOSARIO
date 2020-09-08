<?php
$usr = $_POST["Email"]; //Correo electronico
$pwd = $_POST["contrasena"]; //Contraseña
include("conexion.php");
 $sql = pg_query("SELECT correo_electronico, contrasena FROM tab_usuario WHERE correo_electronico ='$usr' AND contrasena ='$pwd';")
 or die("Error. No es posible la conexión". pg_last_error());
 if (pg_fetch_array($sql))
  {
  session_start();
  $_SESSION['usuario']=$usr;
  $_SESSION['contrasena']=$pwd;
  session_set_cookie_params(0, "/", $_SERVER["HTTP_HOST"], 0); 
   header("Location: home.php");
  }
  else
   echo "USUARIO NO REGISTRADO";
  pg_close();
?>