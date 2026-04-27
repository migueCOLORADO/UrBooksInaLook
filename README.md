# Proyecto Final | Personal Library Management

## Tabla de Contenidos
1. [Introducción](#introducción)
2. [Presentación del Problema](#presentación-del-problema)
3. [Diagramas](#diagramas)
    1. [Modelo Conceptual](#modelo-conceptual--er)
    2. [Modelo Relacional](#modelo-relacional)
        - [Sin Normalizar](#sin-normalizar--preview)
        - [Normalizado](#normalizado--preview)
4. [Autores](#autores)
5. [Información del Curso](#información-del-curso)

<div style = "text-align: justify;">

## Introducción

En este documento, junto con mi equipo, presentaremos el desarrollo del primer entregable para el Proyecto Final del curso de Sistemas de Gestión de Bases de Datos, en el que se nos ha pedido modelar y describir el diagrama ER y sus componentes para un sistema de gestión, compra, venta e intercambio de libros personales.


## Presentación del Problema

En la Universidad EAFIT, en conjunto con la decana de la Escuela de Administración y Finanzas, un grupo de estudiantes de Economía y Derecho pertenecientes a la iniciativa estudiantil Nexos realizaron una investigación sobre el nivel de interés de la comunidad eafitense en la lectura.

Los resultados del estudio mostraron que aproximadamente el 70% de los estudiantes de pregrado afirmaban leer muy poco, con un promedio de un libro leído a lo largo de toda su carrera universitaria. Muchos de ellos manifestaron que preferían dedicar su tiempo a otras actividades, ya que adquirir libros, alquilarlos, intercambiarlos o participar en grupos de lectura resultaba un proceso engorroso. 

Entre las principales dificultades identificadas se encontraban la necesidad de invertir tiempo desplazándose a librerías o bibliotecas, hacer largas filas de espera, buscar obras en páginas o aplicaciones de procedencia poco confiable y organizar manualmente sus colecciones personales o los grupos de lectura en los que participaban.

La investigación también evidenció que estas dificultades afectaban la organización de bibliotecas personales, la participación en comunidades de lectura y la posibilidad de realizar intercambios o ventas de libros entre estudiantes. Como consecuencia, muchos estudiantes terminaban desmotivándose frente a la lectura.

Con el propósito de aumentar el interés por la lectura dentro de la comunidad universitaria, la decana y el grupo Nexos solicitaron asesoría al equipo de Nodo EAFIT para diseñar un sistema de información que permita gestionar bibliotecas personales de libros, así como facilitar la interacción entre lectores a través de clubes de lectura, reseñas y transacciones de compra o intercambio.

El sistema deberá permitir registrar usuarios, quienes podrán crear una cuenta dentro de la plataforma proporcionando información como un identificador único, nombre completo, correo electrónico, contraseña de acceso, ciudad de residencia y fecha de registro.

Dentro del sistema existirán libros, que representan las obras bibliográficas como tal, identificadas de manera única mediante su ISBN. Cada libro almacenará información como su título y un resumen o descripción del contenido. Cada libro deberá estar asociado a uno o varios autores, identificados por un código único y su nombre completo, permitiendo registrar obras con múltiples autores. De igual forma, cada libro estará vinculado a una o varias editoriales, identificadas por un código único, nombre, número de contacto y correo electrónico. Para facilitar su clasificación y búsqueda, cada libro podrá pertenecer a uno o varios géneros literarios, identificados por un código único y un nombre.

Cada usuario podrá registrar dentro de su biblioteca personal los ejemplares que posee, entendiendo un ejemplar como la copia física concreta de un libro. Cada ejemplar almacenará su estado físico (nuevo, usado o deteriorado), la fecha en que fue adquirido, y si está disponible para venta o intercambio.

Los usuarios podrán publicar sus ejemplares dentro de un catálogo, definiendo la modalidad de publicación: si el ejemplar se encuentra disponible únicamente para visualización, para intercambio con otros usuarios, o para venta. 

En caso de publicarse en modalidad de venta, se registrará el precio de la publicación y la fecha en que fue publicado en el catálogo. Es importante destacar que lo que se publica en el catálogo es siempre un ejemplar específico, no el libro como obra abstracta.

Los usuarios cuya cuenta haya sido verificada mediante la confirmación de su correo electrónico podrán escribir reseñas sobre cualquier libro registrado en la plataforma. Cada reseña registrará un identificador único, una calificación numérica, un comentario textual y la fecha de publicación, además de una referencia al libro reseñado y al usuario que la escribió. Con el fin de garantizar la autenticidad de las opiniones, un usuario solo podrá publicar una reseña por libro. 

Adicionalmente, el sistema permitirá la creación de clubes de lectura, identificados por un código único, nombre, fecha de creación y estado (activo o inactivo). Los usuarios podrán participar en diferentes clubes, y cada club podrá seleccionar libros para ser leídos durante un periodo determinado, registrando la fecha en que cada libro fue seleccionado para lectura dentro del club.

Finalmente, el sistema soportará dos tipos de interacciones transaccionales entre usuarios. Las órdenes de compra se identificarán por un código único, fecha de transacción, estado (pedido, pagado, cancelado, enviado o recibido) y monto total. Una orden podrá incluir varios ejemplares publicados en el catálogo, registrando para cada uno el precio al que fue adquirido en el momento de la transacción. 

Asimismo las solicitudes de intercambio se identificarán por un código único, fecha de solicitud y estado (pendiente, aceptado o rechazado). Dado que un intercambio implica que dos usuarios se ceden mutuamente un ejemplar, cada solicitud deberá registrar tanto el ejemplar que ofrece el usuario solicitante como el ejemplar que ofrece el usuario receptor.

## Diagramas

### Modelo Conceptual | ER
![Diagrama | ER](/Entregas/01/Diagramas/eR.png)

### Modelo Relacional

#### Sin Normalizar | Preview
![Diagrama | Modelo Relacional | Sin Normalizar](/Entregas/01/Diagramas/modeloRelacional.png)

#### Normalizado | Preview
**| WARNING | En construccion...**


## Autores

**Miguel Ángel Colorado Castaño**  
**Alejandro Soto Bermeo** <br>

## Información del Curso
**Curso |** Sistemas de Gestión de Datos - C2661-SI2003-4826 <br>
**Asignación |** Proyecto Final | Entregable- 01 <br>
**Universidad |** Universidad EAFIT <br>
**Año |** 2026-1

</div>


