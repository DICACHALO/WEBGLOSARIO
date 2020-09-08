
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
<meta charset="utf-8"/>

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
		});</script>
<!--font-Awesome-->
   	<link rel="stylesheet" href="fonts/web/css/font-awesome.min.css">
<!--font-Awesome-->

<!--start header -->
</head>
<body>
<div class="header_bg" id="home">
	<div class="container">
		<div class="row header text-center specials">
			<div class="h_logo">
				<a href="index.html"><img src="images/logo.png" alt="" class="responsive"/></a>
			</div>
				<nav class="top-nav">
					<ul class="top-nav nav_list">
						<li class="page-scroll"><a href="registro.html">REGISTRO</a></li>
						<li class="page-scroll"><a href="login.html">INGRESO USUARIOS</a></li><li class="logo page-scroll"><a title="hexa" href="index.php"><img src="images/logo.png" alt="" class="responsive"/></a></li>
					    <li class="page-scroll"><a href="#profundizacion">PROFUNDIZACIÓN</a></li>
						<li class="page-scroll"><a href="#about">CONTACTO </a></li>
					</ul>
					<a href="#" id="pull"><img src="images/nav-icon.png" title="menu" /></a>
				</nav>
			<div class="clearfix"></div>
			</div>
		</div>
</div>

<!-- finish header -->

	<div class="blog"><!-- start main -->
		<div class="container">
			<div class="main row">
				<div class="col-md-8 blog_left">
					<h2 class="style">MI GLOSARIO DE ADSI</h2>
					<div class="blog_main">
						<div class="clearfix"></div>
						<p class="para">En esta web se encuentra el vocabulario aprendido en la Tecnología de Análisis y Desarrollo de Sistemas de Información del SENA.</p>
						<p class="para">"Del latín glossarium, el glosario es un catálogo de palabras de una misma disciplina o de un campo de estudio, que aparece definidas, explicadas o comentadas (...) Los glosarios son elaborados por especialistas pero apuntan a un público más amplio, es decir, su objetivo es trascender el círculo de personas especializadas en una materia". (http://definicion.de/glosario/#ixzz47Mqyq0z2)</p>

						<p class="para">Es importante dominar el vocabulario en el cual nos especializamos con el fin de expresarnos con precisión y propiedad, lo cual demuestra que realmente estamos capacitados para los diferentes retos académicos y profesionales. Es por esto que esta aplicación constituye una excelente herramienta para gestionar la información pertinente en la materia de una forma amigable con los usuarios.</p>
						<br> <br>

							<div class="read_more btm">
								<a href="all.php">VER TODO EL GLOSARIO</a>
								<a href="imprimir.php">VERSIÓN PARA IMPRIMIR</a>
							</div>
				<!-- Muestra el total de términos ingresados hasta el momento -->
				<?php
				include("conexion.php");
				//ESTABLECER una consulta
				$sql= 'SELECT COUNT(concepto) AS CANTIDAD FROM tab_concepto';
				$resultado = pg_query($sql)or die ('Error. Intente de nuevo'. pg_last_error());
				$contados = pg_fetch_result($resultado,0,0);
				echo "<h4>*** Actualmente hay ".$contados." términos ingresados. ***</h4>"; 
				pg_close($dbconn);
				?>
				<!-- Finaliza mostrar el total de términos ingresados hasta el momento -->
						
					</div>
				</div>
				
								
	<div class="col-md-4 blog_right">
		<ul class="tag_nav list-unstyled">
			<h4>temas</h4>
				<li><a href="#">Bases de datos</a></li>
				<li><a href="#">Buenas Prácticas</a></li>
				<li><a href="#">Formulación de proyectos</a></li>
				<li><a href="#">Fundamentación</a></li>
				<li><a href="#">Herramientas</a></li>
				<li><a href="#">HTML5</a></li>
				<li><a href="#">Lenguajes de programación</a></li>
				<li><a href="#">PHP</a></li>				
				<li><a href="#">Requerimientos</a></li>
				<li><a href="#">Seguridad informática</a></li>
				<div class="clearfix"></div>
		</ul>
	
<!--Inicia bloque novedades-->	

		
<div class="novedades"><br><br>
				<h4>Novedades</h4>
					<!--funcion para sacar los últimos conceptos ingresados-->	
					<?php
						function ultimosconceptos(){
						include("conexion.php");
						$consulta = 'SELECT concepto,definicion FROM tab_concepto ORDER BY concepto DESC LIMIT 2';
						$resultado = pg_query($consulta)or die ('Error. Intente de nuevo'. pg_last_error());
						echo "
						<table class='novedades' border='1'>
						<tr>
						<th><center>CONCEPTO</center></th>
						<th><center>DEFINICION</center></th>
						</tr>
						";
							while ($fila = pg_fetch_array($resultado)){
							echo "<tr><td>".$fila['concepto']."</td>
								  <td>".$fila['definicion']."</td>";}	
							echo "</table><br><hr>";
							pg_close();
							}
						ultimosconceptos();
					?> <!--termina funcion para sacar los últimos conceptos ingresados-->	
				</div>
			</div>
 <!--termina bloque NOVEDADES-->

	</div>
  </div>
  </div>
 


<!-- end main -->

<div class="main_bg"><!-- start about us -->
	<div class="container">
		<h4 class="style">BUSCAR POR ALFABETO</h4>
		<hr>
		<h4><a href="abc.php"><font color="white"><style type="text/css">   
		a:link   
		{   
		 text-decoration:none;   
		}   
		</style>*  A </font></a>   <a href="abc.php"><font color="white"> * B  </font> </a>    <a href="#about"><font color="white"> * C</font> </a>    <a href="#about"><font color="white"> * D</font> </a>    <a href="#about"><font color="white"> * E </font></a>    <a href="#about"><font color="white">* F</font></a>    <a href="#about"><font color="white"> * G </font></a>    <a href="#about"><font color="white"> * H</font> </a>    <a href="#about"><font color="white">* I</font></a>    <a href="#about"><font color="white">* J</font></a>    <a href="#about"><font color="white">* K </font></a>    <a href="#about"><font color="white">* L </font></a>    <a href="#about"><font color="white">* M </font></a>    <a href="#about"><font color="white">* N </font></a>    <a href="#about"><font color="white">* O </font></a>    <a href="#about"><font color="white">* P </font></a>    <a href="#about"><font color="white">* Q </font></a><a href="#about"><font color="white">* R</font></a>    <a href="#about"><font color="white">* S</font></a>   <a href="#about"><font color="white">* T </font></a>    <a href="#about"><font color="white">* U</font></a>    <a href="#about"><font color="white">* V</font></a>    <a href="#about"><font color="white">* W </font></a>    <a href="#about"><font color="white"> * X </font></a>    <a href="#about"><font color="white">* Y</font></a>    <a href="#about"><font color="white">* Z *</font></a> </h4><br>
	</div>
</div>
</div>
 </div>
	<div class="container" ><!-- start main -->
		<div class="main row" id="profundizacion">
	 	 	<h2 class="style">TEMAS DE PROFUNDIZACIÓN</h2>
		 	 <div class="grids_of_4 row">
					<div class="col-md-3 images_1_of_4">
						<div class="fancyDemo">
							<a rel="group" title="" href="images/pic1.png"><img src="images/pic1.png" alt="Diseño Web"class="img-responsive"/></a>
						</div>
							 <h3><a href="diseñoweb.html">TIPS DISEÑO WEB</a></h3>
							 <p class="para">Aquí se incluyen recomendaciones importantes para diseñar adecuadamente una página web</p>
							 <h4><a href="diseñoweb.html">Ver más...</a> </h4>
					</div>
			</div>
		</div>
	</div>
</div>
</div>
<!-- end main -->



<div class="footer_bg" id="about"><!-- start footer -->
	<div class="container">
		<div class="row footer">
			<div class="col-md-8 contact_left">
			<br><h3>diana carolina chacón lópez</h3>
				<p>Analista y desarrolladora de sistemas de información.</p><hr>
				<p>Llena este formulario para cualquier inquietud o sugerencia:</p>
				<form method="post" action="contact-post.html">
					<input type="text" value="Nombre (Requerido)" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}">
					<input type="text" value="Email (Requerido)" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}">
					<input type="text" value="Asunto" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Subject';}">
					<textarea onfocus="if(this.value == 'Your Message here....') this.value='';" onblur="if(this.value == '') this.value='Your Message here....;" >Tu mensaje....</textarea>
					<span class="pull-right"><input type="submit" value="Enviar Mensaje"></span>
				</form>
			</div>
		</div>
	</div>
</div>
</div>
<div class="footer1_bg" ><!-- start footer1 -->
	<div class="container">
		<div class="row  footer">
			<div class="copy text-center">
				<p class="link"><span>&#169; 2016 - All rights reserved | Powered by&nbsp;<a href="http://w3layouts.com/"> W3Layouts</a></span></p>
				<a href="#home" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"> </span></a>
			</div>
		</div>
		<script type="text/javascript">
				$(function() {
				  $('a[href*=#]:not([href=#])').click(function() {
				    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
			
				      var target = $(this.hash);
				      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
				      if (target.length) {
				        $('html,body').animate({
				          scrollTop: target.offset().top
				        }, 1000);
				        return false;
				      }
				    }
				  });
				});
		</script>
		<!---- start-smoth-scrolling---->		
	</div>
</div>

</body>
</html>