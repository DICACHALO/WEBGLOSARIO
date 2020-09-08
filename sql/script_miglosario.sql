-- *******************************************************
-- INSTRUCCIONES PARA BORRAR LAS TABLAS                  *
-- *******************************************************
DROP TABLE tab_concepto;
DROP TABLE tab_usuario;


-- *******************************************************
-- INSTRUCCIONES PARA CREAR LAS TABLAS DEL SISTEMA ACTUAL*
-- *******************************************************

CREATE TABLE tab_usuario --Esta tabla es para almacenar los datos de los usuarios registrados
(
  correo_electronico		VARCHAR(40)					NOT NULL,	 --Correo electronico
  contrasena				VARCHAR(10)					NOT NULL, 	 --Contraseña
  nombre 					VARCHAR(40)					NOT NULL,	 --Nombre del nuevo usuario
  permisos					INTEGER							NULL,
  PRIMARY KEY (correo_electronico)
);


CREATE TABLE tab_concepto
(
  concepto     				VARCHAR(100)   				NOT NULL,	--Nombre asignado por usuario para el concepto
  definicion				VARCHAR(500)				NOT NULL, 	--Nombre asignado por usuario para la definición
  bibliografia				VARCHAR(500),
  imagen					VARCHAR(100),
  tema			     		VARCHAR(40)    				NOT NULL,	--
  correo_electronico		VARCHAR(40),	--Correo electronico
  PRIMARY KEY (concepto)
  );
