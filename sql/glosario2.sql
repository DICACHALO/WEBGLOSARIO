--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.4
-- Dumped by pg_dump version 9.4.4
-- Started on 2016-05-18 15:29:47

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 173 (class 1259 OID 124961)
-- Name: tab_concepto; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tab_concepto (
    id_concepto bigint NOT NULL,
    concepto text NOT NULL,
    definicion character varying(500) NOT NULL,
    bibliografia character varying(500),
    imagen character varying(100),
    tema character varying(40) NOT NULL,
    correo_electronico character varying(40)
);


ALTER TABLE tab_concepto OWNER TO postgres;

--
-- TOC entry 1995 (class 0 OID 124961)
-- Dependencies: 173
-- Data for Name: tab_concepto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tab_concepto (id_concepto, concepto, definicion, bibliografia, imagen, tema, correo_electronico) FROM stdin;
55	Computación en la nube o Cloud Computing	Consiste en los servicios ofrecidos a traves de la red tales como correo electrónico, almacenamiento, uso de aplicaciones, etc., los cuales son normalmente accesibles\r\nmediante un navegador web. Al utilizar estos\r\nservicios, la información utilizada y almacenada,\r\nasí como la mayoría de las aplicaciones requeridas, son procesadas y ejecutadas por un servidor en Internet.	http://www.izt.uam.mx/newpage/contactos/anterior/n80ne/nube.pdf	\N	Diseño Web	\N
70	TCP	Protocolo de control de transmisión.		\N	Fundamentación	\N
71	IP	Protocolo de Internet.		\N	Diseño Web	\N
19	PÁGINA PRINCIPAL	Una página web a la que los usuarios entran directamente.	Páginas Web Para Dummies, Bud E. Smith, Arthur Bebak ISBN: 978-0-7645-4098-1 364 pages July 2003.	\N	Diseño Web	\N
20	SITIO WEB	Una página principal que además contiene otras páginas. A estas páginas adicionales por lo general se llega a partir de la página principal.	Páginas Web Para Dummies, Bud E. Smith, Arthur Bebak ISBN: 978-0-7645-4098-1 364 pages July 2003.	\N	Diseño Web	\N
21	EXPLORADOR	Programa que se utiliza para ver documentos del Worl Wide Web.	Páginas Web Para Dummies, Bud E. Smith, Arthur Bebak ISBN: 978-0-7645-4098-1 364 pages July 2003.	\N	Diseño Web	\N
22	MOTOR DE BÚSQUEDA	Servicio con base en la Web que ayuda a encontrar información.	Páginas Web Para Dummies, Bud E. Smith, Arthur Bebak ISBN: 978-0-7645-4098-1 364 pages July 2003.	\N	Diseño Web	\N
23	ETIQUETAS	Cadenas de caracteres especiales. Rótulos que se colocan dentro del texto y que dan instrucciones para mostrar algún elemento.	Páginas Web Para Dummies, Bud E. Smith, Arthur Bebak ISBN: 978-0-7645-4098-1 364 pages July 2003.	\N	Diseño Web	\N
25	VÍNCULO	Conexión con otro documento	Páginas Web Para Dummies, Bud E. Smith, Arthur Bebak ISBN: 978-0-7645-4098-1 364 pages July 2003.	\N	Diseño Web	\N
26	LENGUAJE DESCRIPTOR	Forma de colocar información acerca de un documento. Es una manera específica de utilizar etiquetas para proveer información acerca de un documento.	Páginas Web Para Dummies, Bud E. Smith, Arthur Bebak ISBN: 978-0-7645-4098-1 364 pages July 2003.	\N	Diseño Web	\N
27	AUTÓMATA FINITO	Máquina o procedimiento que lee una instrucción, utiliza esa instrucción para tomar un decisión, ejecuta esa decisión y luego lee otras instrucciones.	Páginas Web Para Dummies, Bud E. Smith, Arthur Bebak ISBN: 978-0-7645-4098-1 364 pages July 2003.	\N	Fundamentación	\N
28	ANCLA	Comienzo de un vínculo.	Páginas Web Para Dummies, Bud E. Smith, Arthur Bebak ISBN: 978-0-7645-4098-1 364 pages July 2003.	\N	Diseño Web	\N
29	HREF	HYPERTEXT REFERENCE. Referencia de hipertexto.	HTML5	\N	Diseño Web	\N
2	FTP	Protocolo de transferencia de archivos.	SENA	\N	Bases de datos	\N
30	MAPA DE IMÁGEN	Imagen gráfica que contiene zonas activas. Puede servir como mapa o guía sobre diferentes partes de la Web.	Páginas Web Para Dummies, Bud E. Smith, Arthur Bebak ISBN: 978-0-7645-4098-1 364 pages July 2003.	\N	Diseño Web	\N
1	INTERNET	Gigantesca red de computadores que conecta entre sí a otras redes de computadores.	Páginas Web Para Dummies, Bud E. Smith, Arthur Bebak ISBN: 978-0-7645-4098-1 364 pages July 2003.	\N	Diseño Web	\N
4	GOPHER	Es uno de los sistemas de Internet para recuperar información que precedió a la World Wide Web. Fue creado en 1991 en la Universidad de Minesota y fue el primer sistema que permitió pasar de un sitio a otro seleccionando una opción en el menú de una página.	http://www.nodo50.org/manuales/internet/6.htm	\N	Diseño Web	\N
5	GOPHERSAPCE	Engloba los 5000 o más servidores de Gopher existentes.	http://www.nodo50.org/manuales/internet/6.htm	\N	Diseño Web	\N
6	PROTOCOLO	Nombre del  lenguaje de comunicación que utiliza el URL.	Páginas Web Para Dummies, Bud E. Smith, Arthur Bebak ISBN: 978-0-7645-4098-1 364 pages July 2003.	\N	Diseño Web	\N
7	HTTP	Protocolo de transferencia de hipertexto.	Páginas Web Para Dummies, Bud E. Smith, Arthur Bebak ISBN: 978-0-7645-4098-1 364 pages July 2003.	\N	Diseño Web	\N
8	NOMBRE DE DOMINIO	Nombre lógico del servidor en donde se encuentra el archivo.	Páginas Web Para Dummies, Bud E. Smith, Arthur Bebak ISBN: 978-0-7645-4098-1 364 pages July 2003.	\N	Diseño Web	\N
9	RUTA DE ACCESO	Indica cómo encontrar el archivo que se quiere recuperar.	Páginas Web Para Dummies, Bud E. Smith, Arthur Bebak ISBN: 978-0-7645-4098-1 364 pages July 2003.	\N	Diseño Web	\N
10	FIREWALL	Combinación de hardware y software cuyo propósito es impedir que terceros ingresen a una red privada conectada a internet.	Páginas Web Para Dummies, Bud E. Smith, Arthur Bebak ISBN: 978-0-7645-4098-1 364 pages July 2003.	\N	Diseño Web	\N
11	INTRANET	Red privada.	Páginas Web Para Dummies, Bud E. Smith, Arthur Bebak ISBN: 978-0-7645-4098-1 364 pages July 2003.	\N	Diseño Web	\N
18	PÁGINA WEB	Documento de texto en la Web que incluye información sobre formato y enlaces a archivos gráficos, archivos multimedia y otras páginas web.	Páginas Web Para Dummies, Bud E. Smith, Arthur Bebak ISBN: 978-0-7645-4098-1 364 pages July 2003.	\N	Diseño Web	\N
31	ZONA ACTIVA	Área dentro de una imagen gráfica que actúa como un vínculo a otra dirección URL, lo cual hace que el usuario vaya a una página diferente.	Páginas Web Para Dummies, Bud E. Smith, Arthur Bebak ISBN: 978-0-7645-4098-1 364 pages July 2003.	\N	Diseño Web	\N
32	MARCOS	Permiten dividir una página web en secciones que se pueden controlar de manera independiente.	Páginas Web Para Dummies, Bud E. Smith, Arthur Bebak ISBN: 978-0-7645-4098-1 364 pages July 2003.	\N	Diseño Web	\N
33	FORMULARIO	Lugar donde el usuario puede introducir información. Contiene elementos para introducir datos y para escoger en una lista de opciones predeterminadas.	Páginas Web Para Dummies, Bud E. Smith, Arthur Bebak ISBN: 978-0-7645-4098-1 364 pages July 2003	\N	Diseño Web	\N
34	CERN	CENTRO EUROPEO DE INVESTIGACIÓN FÍSICA DE PARTÍCULAS.		\N	Fundamentación	\N
35	OBSTÁCULOS DE LA WEB	- Diferencias en los exploradores.\r\n- Conexiones lentas.\r\n- Tamaño del servidor.\r\n- Configuración personalizada del navegador por parte de los usuarios.	Páginas Web Para Dummies, Bud E. Smith, Arthur Bebak ISBN: 978-0-7645-4098-1 364 pages July 2003	\N	Diseño Web	\N
36	EDITOR DE TEXTO	Programa que permite introducir texto y guardarlo, pero sin formatos visibles como negrita o subrayado o códigos de formato incrustados en el archivo.	Páginas Web Para Dummies, Bud E. Smith, Arthur Bebak ISBN: 978-0-7645-4098-1 364 pages July 2003.	\N	Herramientas	\N
37	GIF ANIMADO	Un elemento gráfico GIF que incluye varias imágenes ligeramente diferentes en secuencia.	Páginas Web Para Dummies, Bud E. Smith, Arthur Bebak ISBN: 978-0-7645-4098-1 364 pages July 2003.	\N	Diseño Web	\N
38	ATRIBUTO	Serie de caracteres después de la primera serie dentro de una etiqueta HTML. Modifica el propósito de la etiqueta.	Páginas Web Para Dummies, Bud E. Smith, Arthur Bebak ISBN: 978-0-7645-4098-1 364 pages July 2003.	\N	Diseño Web	\N
39	DIRECCIÓN ABSOLUTA	Una descripción de la ubicación de un archivo que comienza con el nombre de la máquina o el nombre del disco en donde se encuentra el archivo.	Páginas Web Para Dummies, Bud E. Smith, Arthur Bebak ISBN: 978-0-7645-4098-1 364 pages July 2003.	\N	Diseño Web	\N
40	DIRECCIÓN RELATIVA	La ruta desde un documento base, como un documento HTML, hasta otro documento en el mismo computador, como otra página web en el mismo sitio.	Páginas Web Para Dummies, Bud E. Smith, Arthur Bebak ISBN: 978-0-7645-4098-1 364 pages July 2003.	\N	Diseño Web	\N
41	ELEMENTO	Primer caracter o serie de caracteres dentro de una etiqueta que especifica el propósito de la etiqueta.	Páginas Web Para Dummies, Bud E. Smith, Arthur Bebak ISBN: 978-0-7645-4098-1 364 pages July 2003.	\N	Diseño Web	\N
42	GIF ENTRELAZADO	Un gráfico GIF que va apareciendo gradualmente mostrando primero cada cuarta línea, luego las siguientes cuartas líneas y así sucesivamente hasta que se ve la imagen completa.	Páginas Web Para Dummies, Bud E. Smith, Arthur Bebak ISBN: 978-0-7645-4098-1 364 pages July 2003.	\N	Diseño Web	\N
43	GIF TRANSPARENTE	Un archivo guardado en formato de intercambio de gráficas y modificado de manera que al área alrededor de los objetos de interés se le asigne el color "transparente". Esta capacidad hace que el marco rectangular  que rodea los objetos dé la impresión de desaparecer y el gráfico parezca "flotar" sobre la página en la que aparece.	Páginas Web Para Dummies, Bud E. Smith, Arthur Bebak ISBN: 978-0-7645-4098-1 364 pages July 2003.	\N	Diseño Web	\N
44	HEXADECIMAL	Una manera de contar que utiliza 16 dígitos: 0-9 más A-F, en vez de los 10 dígitos que emplea la numeración decimal corriente. Se utilizan para describir valores almacenados dentro de un computador.	Páginas Web Para Dummies, Bud E. Smith, Arthur Bebak ISBN: 978-0-7645-4098-1 364 pages July 2003.	\N	Diseño Web	\N
45	LISTA DE DEFINICIONES	Un tipo de lista HTML en donde los términos ocupan una columna al lado izquierdo de la pantalla y las definiciones ocupan una columna más amplia al lado derecho.	Páginas Web Para Dummies, Bud E. Smith, Arthur Bebak ISBN: 978-0-7645-4098-1 364 pages July 2003.	\N	Bases de datos	\N
46	LISTA NO NUMERADA	Un tipo de lista HTML en la cual cada elemento aparece al lado de un símbolo.	Páginas Web Para Dummies, Bud E. Smith, Arthur Bebak ISBN: 978-0-7645-4098-1 364 pages July 2003.	\N	Diseño Web	\N
47	LISTA NUMERADA	Un  tipo de lista HTML en la que a cada elemento se le asigna un número secuencial cuando se muestra la lista.	Páginas Web Para Dummies, Bud E. Smith, Arthur Bebak ISBN: 978-0-7645-4098-1 364 pages July 2003.	\N	Diseño Web	\N
48	PLUG-IN	Un pequeño programa que funciona con un explorador de la Web para permitir mostrar archivos de multimedia en una página web, o que de alguna otra manera extiende las capacidades del explorador.	Páginas Web Para Dummies, Bud E. Smith, Arthur Bebak ISBN: 978-0-7645-4098-1 364 pages July 2003.	\N	Diseño Web	\N
49	SINTAXIS	Es el ordenamiento de los elementos en un lenguaje o protocolo.	Páginas Web Para Dummies, Bud E. Smith, Arthur Bebak ISBN: 978-0-7645-4098-1 364 pages July 2003.	\N	Lenguajes de programación	\N
50	TECNOLOGÍA PUSH	Un nuevo uso de Internet en el que su computador revisa automáticamente otros sitios Web en busca de nuevos datos; si existe información nueva, le notifica al usuario y en algunos casos los nuevos datos son enviados (empujados) automáticamente a su computador.	Páginas Web Para Dummies, Bud E. Smith, Arthur Bebak ISBN: 978-0-7645-4098-1 364 pages July 2003.	\N	Diseño Web	\N
51	VRML- VIRTUAL REALITY MODELING LANGUAGE	El lenguaje de creación de modelos de realidad virtual es una serie de estándares para mostrar datos tridimensionales en la Web. 	Páginas Web Para Dummies, Bud E. Smith, Arthur Bebak ISBN: 978-0-7645-4098-1 364 pages July 2003.	\N	Diseño Web	\N
53	JSON	Medio para crear objetos en JavaScript.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Diseño Web	\N
54	BUENAS PRÁCTICAS DE PROGRAMACIÓN	Llaman la atención hacia técnicas que le ayudarán a producir programas más claros, comprensibles y fáciles de mantener.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Buenas Prácticas	\N
56	CRM	Customer Relationship Management. Son programas de gestión de clientes.	http://www.emprendedores.es/gestion/recursos-de-software-libre-para-pymes/crm-gratuito-para-pymes	\N	Formulación de proyectos	\N
57	GPS	Sistema de Posicionamiento Global. Global Positioning System. Es un servicio propiedad de los EE.UU. que proporciona a los usuarios información sobre posicionamiento, navegación y cronometría. Está constituido por tres segmentos: el segmento espacial, el segmento de control y el segmento del usuario.	http://www.gps.gov/systems/gps/spanish.php	\N	Fundamentación	\N
62	ECMA	European Computer Manufacturers Association. La Asociación Europea de Fabricantes de Ordenadores es una asociación fundada en 1961 dedicada a la normalización de sistemas de información y comunicación. Posteriormente se llamó ECMA INTERNATIONAL.	http://biblioteca.uoc.edu/es/recursos/recurso/ecma-international	\N	Fundamentación	\N
58	IM - INSTANT MESSAGING	Mensajería instantánea. Es un servicio de comunicación de tiempo real entre dispositivos como computadoras, tabletas, celulares, etc. 	http://aprenderinternet.about.com/od/ChatsForosEtc/a/Que-Es-Im-O-Mensajeria-Instantanea-Y-Como-Funciona.htm	\N	Diseño Web	\N
59	WWDC	Worldwide Developers Conference. Conferencia Mundial de Desarrolladores	https://developer.apple.com/wwdc/	\N	Diseño Web	\N
60	XHTML	Lenguaje de marcado de hipertexto extensible.		\N	Diseño Web	\N
24	HTML	HYPERTEXT MARKUP LANGUAGE. Lenguaje de Marcado de Hipertexto. Usado para especificar la estructura y el contenido de un documento.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Diseño Web	\N
52	CSS	Hojas de estilo en cascada. Usado para la presentación o el estilo de los elementos de una página Web.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Diseño Web	\N
61	JAVASCRIPT	Lenguaje para crear páginas Web dinámicas, es decir, que pueden modificarse al instante en respuesta a ciertos eventos, como la entrada del usuario, cambios en el tiempo, etc.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Diseño Web	\N
64	JQUERY	Biblioteca gratuita de Javascript, cuyo objetivo principal es simplificar las tareas de creación de páginas web responsivas, acordes a lo estipulado en la Web 2.0, la cuál funciona en todos los navegadores modernos.	http://www.mexired.com/blog/que-es-jquery	\N	Diseño Web	\N
63	ECMAScript	Es una especificación de lenguaje de programación publicada por ECMA International. Define un lenguaje de tipos dinámicos ligeramente inspirado en Java y otros lenguajes del estilo de C. Soporta algunas características de la programación orientada a objetos mediante objetos basados en prototipos y pseudoclases.	https://es.wikipedia.org/wiki/ECMAScript	\N	Lenguajes de programación	\N
65	GUI	Es una interfaz de usuario en la que una persona interactúa con la información digital a través de un entorno gráfico de simulación.	http://www.fundeu.es/escribireninternet/interfaz-grafica-de-usuario-gui/	\N	Diseño Web	\N
67	ARPA	Agencia para Proyectos de Investigación Avanzada.		\N	Fundamentación	\N
68	BIT	Abreviación de "dígito binario". Es el elemento de datos más pequeño en una computadora; puede asumir el valor 0 o 1.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Fundamentación	\N
69	PROTOCOLO	Conjunto de reglas, para comunicarse a través de Internet.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Diseño Web	\N
66	ARPANET	Fue una red de computadoras creada por encargo del Departamento de Defensa de los Estados Unidos para utilizarla como medio de comunicación entre las diferentes instituciones académicas y estatales.	<a href="https://es.wikipedia.org/wiki/ARPANET"> https://es.wikipedia.org/wiki/ARPANET </a>	\N	Fundamentación	\N
72	TCP/IP	Conjunto combinado de protocolos.		\N	Fundamentación	\N
73	IPV4	Protocolo de Internet Versión 4.		\N	Diseño Web	\N
74	IPV6	Protocolo de Internet Versión 6.		\N	Diseño Web	\N
75	NCSA	Centro Nacional de Aplicaciones de Supercomputacion. 		\N	Fundamentación	\N
76	URI	Identificadores Uniformes de Recursos.		\N	Diseño Web	\N
3	URL	Localizador Uniforme de Recursos. Contiene información que dirige a un navegador hacia el recurso que el usuario desea utilizar.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Diseño Web	\N
77	DNS	Servidor del sistema de nombres de dominio.		\N	Diseño Web	\N
78	GET	Método de HTTP que indica que el cliente desea obtener un recurso del servidor.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Diseño Web	\N
79	MIME	Extensiones multipropósito de correo Internet. Es un estándar que especifica formatos de datos que los programas pueden usar para interpretar los datos en forma correcta.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Diseño Web	\N
80	POST	Solicitud HTTP que publica o envía datos en/a un servidor. Se usa generalmente para enviar formas de datos o documentos a un servidor.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Diseño Web	\N
81	APLICACIONES MULTINIVEL	También denominadas aplicaciones de n niveles. Dividen la funcionalidad en niveles, es decir, agrupamientos lógicos de funcionalidad.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Diseño Web	\N
82	RDBMS	Sistema de administración de bases de datos relacional.		\N	Bases de datos	\N
83	EXTENSIONES ISAPI	Interfaz de programación de aplicaciones de Servidor de Internet.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Diseño Web	\N
84	WEB 2.0	Plataforma para crear sitios colaborativos basados en comunidades: redes sociales, blogs y wikis. Arquitectura de participación, es decir, Involucra a los usuarios. Su diseño fomenta la interacción del usuario y las contribuciones comunitarias.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Diseño Web	\N
85	RIA	Aplicaciones enriquecidas de Internet.		\N	Diseño Web	\N
86	INTELIGENCIA COLECTIVA	Forma de inteligencia universalmente distribuida, constantemente realzada, coordinada en tiempo real, y resultando en la movilización efectiva de habilidades.	http://innovationforsocialchange.org/que-es-la-inteligencia-colectiva-i-respuesta-y-libro-online-de-pierre-levy/	\N	Fundamentación	\N
87	WEB SEMÁNTICA	Web extendida, dotada de mayor significado en la que cualquier usuario en Internet podrá encontrar respuestas a sus preguntas de forma más rápida y sencilla gracias a una información mejor definida.	http://www.w3c.es/Divulgacion/GuiasBreves/WebSemantica	\N	Diseño Web	\N
89	DOM	Modelo de Objetos de Documento.		\N	Fundamentación	\N
90	KERNEL	Software que contiene los componentes básicos del sistema operativo.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Sistemas Operativos	\N
91	OPP	Programación Orientada a Objetos.		\N	Lenguajes de programación	\N
92	LENGUAJE DE MÁQUINA	Lenguaje comprendido directamente por la computadora.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Lenguajes de programación	\N
93	LENGUAJE ENSAMBLADOR	Programa traductor para convertir a lenguaje máquina.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Lenguajes de programación	\N
94	LENGUAJE DE ALTO NIVEL	Se pueden escribir instrucciones individuales para realizar considerables tareas.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Lenguajes de programación	\N
95	COMPILADOR	Convierte los programas de alto nivel a lenguaje máquina.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Fundamentación	\N
96	PROGRAMA INTÉRPRETE	Ejecuta de manera directa los programas en lenguaje de alto nivel.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Lenguajes de programación	\N
97	UTF-8	Esquema de codificación de caracteres.		\N	Diseño Web	\N
98	ATRIBUTO	Proporciona información adicional sobre un elemento, el cual utilizan los navegadores para determinar cómo procesar ese elemento. Cada atributo tiene un nombre y un valor separados por un signo de igual. Es una buena práctica usar minúsculas al momento de codificar los atributos.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Lenguajes de programación	\N
99	TITTLE	Describe la página Web. Aparece en la barra de tìtulo. Los motores de bùsqueda lo usan para fines de indexación y para mostrar resultados.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Lenguajes de programación	\N
101	ENCABEZADO (HTML)	Usados para especificar la importancia relativa de la información. H1 es el más significativo, hasta llegar a H6.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Lenguajes de programación	\N
102	ELEMENTO STRONG (HTML)	Indica que el contenido tiene alta importancia. El navegador usualmente lo convierte a negrita.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Lenguajes de programación	\N
103	PNG	Gráficos portables de red.		\N	Fundamentación	\N
104	ELEMENTO IMG (HTML)	Usado para incluir una imagen en el documento.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Lenguajes de programación	\N
88	AJAX	Ayuda a que las aplicaciones basadas en Internet se desempeñen como aplicaciones de escritorio.		\N	Diseño Web	\N
139	BOTÓN DE OPCIÓN RADIO	En HTML es un botón que solo permite seleccionar una opción.		\N	Lenguajes de programación	\N
105	ATRIBUTO SRC	Origen. Se especifica la ubicación del archivo de la imagen.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Lenguajes de programación	\N
106	WIDTH (HTML)	Especifica la anchura de la imagen. Se puede usar para escalar una imagen, aumentando o reduciendo sus valores.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Lenguajes de programación	\N
107	HEIGHT	Especifica la altura de la imagen. Se puede usar para escalar una imagen, aumentando o reduciendo sus valores.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Lenguajes de programación	\N
108	PÍXELES	Elementos de imagen, que representan puntos de color en la pantalla.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Lenguajes de programación	\N
109	ATRIBUTO ALT (HTML)	Describe el contenido de la imagen. Usado por accesibilidad para el sintetizador de voz.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Lenguajes de programación	\N
110	ELEMENTOS VACIOS (HTML)	Solo contienen atributos y no marcan texto, es decir, no se coloca texto entre una etiqueta de inicio y otra de fin.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Lenguajes de programación	\N
111	REGLA HORIZONTAL <HR> (HTML)	Línea horizontal con espacio adicional por encima y por debajo de ella.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Lenguajes de programación	\N
112	CÓDIGO HEREDADO	Código antiguo.		\N	Lenguajes de programación	\N
113	TEXTO SUBRAYADO <DEL>	Usado en HTML para indicar revisiones de documentos.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Lenguajes de programación	\N
114	SUP - SUB	Superíndice - Subíndice.		\N	Lenguajes de programación	\N
115	BORDER	Especifica que el navegador debe colocar bordes alrededor de la tabla y alrededor de sus celdas.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Lenguajes de programación	\N
116	CAPTION	Título de una tabla en HTML.		\N	Lenguajes de programación	\N
117	SUMMARY	Atributo para incluir una descripción general de la información de una tabla en HTML.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Lenguajes de programación	\N
118	TBODY	Cuerpo de una tabla en HTML. En el cuerpo cada elemento tr especifica una fila.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Sistemas Operativos	\N
119	TFOOT	Pie de una tabla en HTML. Usado para resultados de cálculos y notas al pie.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Lenguajes de programación	\N
120	COLSPAN	Aumenta la anchura de una celda en HTML.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Lenguajes de programación	\N
121	METHOD	En HTML especifica la forma en que se envían los datos del formulario al servidor Web.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Lenguajes de programación	\N
122	ACTION	En HTML especifica el URL de una secuencia de comandos en el servidor Web que se invocará para procesar los datos del formulario.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Lenguajes de programación	\N
123	INPUT	En HTML especifican los datos que se van a proporcionar a la secuencia de comandos que procesará el formulario.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Lenguajes de programación	\N
124	HIDDEN	Almacenan cualquier dato que especifiquemos, como direcciones de correo electrónico y nombres de archivos de documentos de HTML5 que actúan como vínculos.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Diseño Web	\N
125	NAME	En HTML identifica el elemento INPUT.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Lenguajes de programación	\N
127	INPUT TEXT	Inserta un campo de texto en el formulario.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Lenguajes de programación	\N
128	LABEL	En un formulario HTML provee a los usuarios información sobre el propósito del elemento INPUT.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Lenguajes de programación	\N
129	SIZE	En HTML especifica el número de caracteres visibles en el campo texto.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Lenguajes de programación	\N
130	MAXLENGTH	En HTML limita el número de caracteres introducidos en el campo de texto.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Lenguajes de programación	\N
131	SUBMIT	Cuando se presiona el botón SUBMIT, los datos del formulario se envían a la ubicación especificada en el atributo ACTION del formulario.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet & World Wide Web. 5ed. México: Pearson, 2014.	\N	Lenguajes de programación	\N
133	RESET	En HTML permite a un usuario restablecer todos los elementos del formulario a sus valores predeterminados.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet y World Wide Web. 5ed. México: Pearson, 2014.	\N	Lenguajes de programación	\N
132	VALUE	En HTML establece el texto que muestra el botón.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet y World Wide Web. 5ed. México: Pearson, 2014.	\N	Lenguajes de programación	\N
134	TEXTAREA	En HTML inserta un área de texto mixtilínea en el formulario.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet y World Wide Web. 5ed. México: Pearson, 2014.	\N	Lenguajes de programación	\N
135	ROWS	Especifica el número de filas.		\N	Lenguajes de programación	\N
136	COLS	Especifica el número de columnas.		\N	Lenguajes de programación	\N
137	INPUT PASSWORD	Inserta un cuadro de contraseña.		\N	Lenguajes de programación	\N
138	CHECKBOX	En HTML permite a los usuarios seleccionar una opción.		\N	Lenguajes de programación	\N
141	SELECT	En HTML corresponde a una lista desplegable de la que el usuario puede seleccionar un elemento.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet y World Wide Web. 5ed. México: Pearson, 2014.	\N	Lenguajes de programación	\N
142	SELECTED	En HTML especifica cuál elemento se mostrará al principio como el elemento seleccionado en el elemento SELECT.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet y World Wide Web. 5ed. México: Pearson, 2014.	\N	Lenguajes de programación	\N
143	VINCULACIÓN INTERNA	Mecanismo que permite al usuario saltar entre ubicaciones del mismo documento.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet y World Wide Web. 5ed. México: Pearson, 2014.	\N	Lenguajes de programación	\N
144	SPIDER (WEB CRAWLER O WEB ROBOT)	Programa que recorre la WWW y recoge páginas web, visitando los enlaces que tiene de forma automática. Suelen utilizarlo los grandes buscadores para dar de alta (indexar) las páginas y luego poder buscar en ellas. Es un tipo de agente de software; cada spider provee su propio user-agent. Existen spider con propósitos ilegales como los spambots. Otros nombres: rastreador web, Robot-Web, araña, bot, web crawler.	http://www.alegsa.com.ar/Dic/spider.php	\N	Diseño Web	\N
145	CRAWLER	Pequeña pieza de software que va por Internet siguiendo enlaces de las distintas páginas web con el propósito de tomar información y llevarla a un servidor.	<a href="http://seoafeira.com/que-es-un-crawler/">http://seoafeira.com/que-es-un-crawler/</a>	\N	Diseño Web	\N
140	CHECKED	Cuando el valor del atributo type es checkbox, la presencia de este atributo booleano indica que el control se selecciona de forma predeterminada; de lo contrario, se ignora.	<a href="https://developer.mozilla.org/es/docs/Web/HTML/Elemento/input/checkbox">https://developer.mozilla.org/es/docs/Web/HTML/Elemento/input/checkbox</a>	\N	Lenguajes de programación	\N
146	ELEMENTO PÁRRAFO (p)	Ayudan a definir la estructura de un documento. Cuando un navegador despliega un párrafo, coloca espacio adicional por encima y debajo del texto del párrafo.	DEITEL, Paul, DEITEL, Harvey y DEITEL, Abbey. Como programar: Internet y World Wide Web. 5ed. México: Pearson, 2014.	\N	Lenguajes de programación	\N
147	PHP	Acrónimo recursivo de PHP: Hypertext Preprocessor. Es un lenguaje de código abierto muy popular, especialmente adecuado para el desarrollo web y que puede ser incrustado en HTML.	The PHP Group.  (www.php.net)	\N	Lenguajes de programación	\N
148	COMENTARIOS	Son una herramienta que permite al desarrollador poner texto que solo será visto en el código fuente y que no va a salir impreso en el navegador, se usan para explicar rutinas complicadas o para dar\r\ninformación sobre la función de variables.	SENA. Desarrollo Web con PHP.	\N	Lenguajes de programación	\N
\.


--
-- TOC entry 1884 (class 2606 OID 124968)
-- Name: tab_concepto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tab_concepto
    ADD CONSTRAINT tab_concepto_pkey PRIMARY KEY (id_concepto);


--
-- TOC entry 1885 (class 2620 OID 124970)
-- Name: tri_id_concepto; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER tri_id_concepto BEFORE INSERT ON tab_concepto FOR EACH ROW EXECUTE PROCEDURE fun_id_concepto();


-- Completed on 2016-05-18 15:29:47

--
-- PostgreSQL database dump complete
--

