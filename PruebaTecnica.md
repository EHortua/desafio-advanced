1.1. ¿Qué	es	html,	css	y	javascript?
### HTML es lenguaje de marcado de hipertexto que permite maquetar la estructura de una página web.
CSS son hojas de estilo en cascada, que permiten darle un diseño personalizado a las páginas web que estamos creando.
Javascript es un lenguaje de programación que se suele usar para darle interacción a las páginas web ya
que es interpretado facilmente por los navegadores, pero también se puede usar hoy día para formar la 
estructura interna de una aplicación, -el servidor- gracias a otras herramientas y complementos.  

1.2. ¿Para	maquetar	un	email	utilizaría	divs	o	utilizaría	tablas	y	por	qué?
Utilizaría tablas porque en los email algunas propiedad de CSS pueden fallar, así que las tablas
funcionan mejor en este caso.

1.3. ¿Son	las	etiquetas	<br>	la	única	manera	de	separar	secciones	de	texto?
Para separar secciones de texto también podemos usar <p> o incluso <section> y <article> si se 
desean separar de acuerdo a características en común.

1.4. ¿Cuántos	tipos	de	CSS	existen?
El CSS se puede implementar dentro del html dentro de las etiquetas, dentro del HTML en el head 
o en un archivo separado propio enlazado a las páginas en las que se quiera usar. 
Así que serían tres tipos.

1.5. El	posicionamiento	absoluto nos	permite	colocar	un	elemento	en	un	punto	exacto,	
y	se	quede ahí	aunque	desplacemos	la	página.	La	anterior	afirmación	es	verdadera	
o	falsa,	argumente	su	respuesta.
Verdadera, el punto exacto puede ser el inicial de la página o si especificamos los lados se puede
mover ese punto de referencia al que va a estar fijado. 

1.6. ¿Qué	propiedad	CSS	nos	permite	ocultar	las	viñetas	de	una	lista?
list-style-type: none;

1.7. ¿Qué	es	‘float’	en	CSS? Explíquelo	con	sus	palabras.
Float hace que un elemento salga del conjunto de elementos en donde está y se ubique en otra posición,
haciendo que los demás elementos no perciban que este está ahí y se distribuyan 'ignorando' al elemento flotante.

1.8. ¿Qué	 recogen	 los	 selectores	 CSS	 ‘clase’	 y	 ‘ID’	 cuando	 se	 emiten? ¿Cómo	 los	
identificas	en	css?
El selector clase puede asignar a varios elementos del HTML con un solo class, en cambio el ID solo permite identificar
a un elemento por vez.
Class se identifica como .nombreclass {}
ID se identifica como #nombreID {} 

1.9. Utilizando	Sass	explique o	escriba	la	estructura	de cómo le	daría	estilos	al	siguiente	
bloque	de	código:
No lo sé.

1.10. ¿Qué	significa	la	palabra	clave	'this'	en	JavaScript?
Es la forma de invocar a la propiedad o método de un objeto. 

1.11. ¿Cómo	se	puede	cambiar	el	estilo/clase	de	un	elemento en	JavaScript?
No lo sé.

1.12. ¿Qué	es	un	callback?
Es una función que al ser ejecutada llama a otro función usando el argumento recibido en la primera función.

1.13. ¿Qué	es	una	API?
Es un conjunto de código y protocolos que permite la comunicación entre dos aplicaciones.

1.14. ¿Qué	beneficios	existen	de	JSON	sobre	XML?
Es más ligero y rápido

1.15. ¿Qué	protocolo	utilizan	los	servicios	web	RESTful?
HTTP

1.16. ¿Debería	almacenarse	los	token	de	acceso	JWT	en	el	servidor	o	la	base	de	datos?
¿Por	qué?
No lo sé

1.17. ¿Cuáles	son	las	diferencias	entre	los	comandos	‘delete’	y	‘truncate’?
Delete borra un registro si le especificamos un where, si no especificamos un where elimina toda la tabla,
Pero dejando la estructura de la tabla (el nombre de los atributos)
Truncate elimina toda la tabla

1.18. Explique	el	uso	de	la	palabra	clave	Join	y	sus	distintos	tipos
Permite usar rows de distintas tablas y mostrarlos, se le puede poner una condición.
Inner Join devuelve los valores comunes de dos tablas,
Right Join devuelve todos los valores de la tabla derecha y los comunes de la izquierda.
Left Join como rght join pero cambia la orientación.
Full Join devuelve los valores de las dos tablas usadas.

1.19. ¿Cuál	es	la	diferencia	entre	las	cláusulas	having	y	where?
Where se puede usar con las funciones de grupo como SUM, para estos casos se usa Having.

1.20. Explique	el	uso	de	la	palabra	clave	Group	by	y	nombre	con	cuales	funciones	se	
usa	más a	menudo.
Permite agrupar rows de acuerdo a los valores repetidos,
se usa a menudo con funciones de grupo como SUM y con having.
