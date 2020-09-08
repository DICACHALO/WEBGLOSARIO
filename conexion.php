<?php
$dbconn = pg_connect("host=localhost
					  port=5432 
					  dbname=miglosario
					  user=postgres 
					  password=postgresql")
or die('No se ha podido conectar: ' . pg_last_error());
?>