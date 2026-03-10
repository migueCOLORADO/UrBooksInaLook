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

El sistema deberá permitir registrar usuarios, quienes podrán crear una cuenta dentro de la plataforma proporcionando información como un identificador único de usuario, nombre completo, correo electrónico, contraseña de acceso, ciudad de residencia y fecha de registro en el sistema.

Cada usuario podrá registrar los libros que posee dentro de su biblioteca personal. Cada libro deberá almacenarse con información bibliográfica relevante como su ISBN, título, resumen o descripción, estado dentro de la plataforma (disponible, vendido o disponible para intercambio) y la fecha en la que fue publicado en el catálogo del sistema.

Además, cada libro deberá estar asociado a uno o varios autores, identificados mediante un identificador único de autor y su nombre, permitiendo que una obra tenga múltiples autores cuando sea necesario. De igual forma, cada libro deberá estar vinculado a una editorial, la cual se identificará mediante un identificador de editorial y su nombre, representando la organización responsable de la publicación de la obra.

Para facilitar la clasificación y búsqueda de libros, cada obra también deberá pertenecer a uno o varios géneros literarios, tales como novela, cómic, texto académico o divulgación científica. Cada género literario contará con un identificador único y un nombre que permita su clasificación dentro del sistema.

Los usuarios podrán publicar algunos de sus libros dentro de un catálogo, el cual permitirá definir la modalidad de publicación del libro, indicando si el libro se encuentra disponible únicamente para visualización, para intercambio con otros usuarios o para venta. En el caso de que un libro se publique en modalidad de venta, el sistema deberá registrar el precio asociado a dicha publicación y la fecha en la que el libro fue publicado dentro del catálogo.

Adicionalmente, el sistema permitirá la creación de clubes de lectura, los cuales estarán identificados mediante un identificador único del club, un nombre y una fecha de creación, además de un estado que indique si el club se encuentra activo o inactivo. Los usuarios podrán participar en diferentes clubes de lectura, en los cuales se seleccionarán libros para ser leídos durante un periodo determinado.

Los usuarios también podrán publicar reseñas sobre los libros que han leído. Cada reseña deberá registrar un identificador único, una calificación numérica, un comentario textual y la fecha en la que fue publicada, permitiendo que otros lectores puedan conocer opiniones sobre los libros disponibles en la plataforma.

Finalmente, el sistema deberá soportar interacciones entre usuarios mediante procesos de compra o intercambio de libros. Para ello se registrarán órdenes de compra, identificadas mediante un identificador único de orden, la fecha de la transacción, el estado de la orden (pedido, pagado, cancelado, enviado o recibido) y el valor total de la compra.

Asimismo, el sistema permitirá gestionar solicitudes de intercambio de libros entre usuarios, registrando un identificador único de intercambio, la fecha en la que se realiza la solicitud y el estado del intercambio (pendiente, aceptado o rechazado), permitiendo que los usuarios negocien directamente el intercambio de sus libros.

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


