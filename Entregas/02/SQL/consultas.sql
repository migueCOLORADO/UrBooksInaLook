USE UrBookInALook;		

-- Consulta #1 ¿Cuáles son los libros que tienen más de una reseña, junto con su calificación promedio y el número de reseñas recibidas, ordenados de mayor a menor calificación promedio?

SELECT
    l.ISBN,
    l.titulo,
    COUNT(r.idResena)        AS total_resenas,
    ROUND(AVG(r.calificacion), 2) AS calificacion_promedio
FROM Libro l
JOIN Resena r ON l.ISBN = r.ISBN
GROUP BY l.ISBN, l.titulo
HAVING COUNT(r.idResena) > 1
ORDER BY calificacion_promedio DESC;


-- Consulta #2 | ¿Qué usuarios han realizado al menos una orden de compra y cuánto han gastado en total, considerando solo las órdenes que no fueron canceladas?

SELECT
    u.idUsuario,
    u.nombreCompleto,
    COUNT(o.idOrden)      AS total_ordenes,
    SUM(o.total)          AS gasto_total
FROM Usuario u
JOIN OrdenCompra o ON u.idUsuario = o.idUsuario
WHERE o.estado <> 'cancelado'
GROUP BY u.idUsuario, u.nombreCompleto
ORDER BY gasto_total DESC;

-- Consulta #3 | ¿Cuáles son los libros disponibles en el catálogo para venta, junto con el nombre del usuario que los publica y el estado físico del ejemplar, filtrando solo los ejemplares en buen estado (nuevo o usado)?

SELECT
    l.titulo,
    a_nombres.nombres_autores,
    u.nombreCompleto    AS publicado_por,
    e.estadoFisico,
    c.precioPublicacion
FROM Catalogo c
JOIN Ejemplar e  ON c.idEjemplar = e.idEjemplar
JOIN Libro l     ON e.ISBN = l.ISBN
JOIN Usuario u   ON e.idUsuario = u.idUsuario
JOIN (
    SELECT
        es.ISBN,
        GROUP_CONCAT(a.nombre ORDER BY a.nombre SEPARATOR ', ') AS nombres_autores
    FROM Escribir es
    JOIN Autor a ON es.idAutor = a.idAutor
    GROUP BY es.ISBN
) a_nombres ON l.ISBN = a_nombres.ISBN
WHERE c.modalidadPublicacion = 'venta'
  AND e.estadoFisico IN ('nuevo', 'usado')
ORDER BY c.precioPublicacion ASC;

-- Consulta #4 | ¿Cuáles son los clubes de lectura activos que han seleccionado más de un libro, junto con la cantidad de libros seleccionados y el número de miembros que participan en cada club?

SELECT
    cl.idClub,
    cl.nombre                        AS club,
    COUNT(DISTINCT s.ISBN)           AS libros_seleccionados,
    COUNT(DISTINCT p.idUsuario)      AS total_miembros
FROM ClubLectura cl
JOIN Seleccionar s  ON cl.idClub = s.idClub
JOIN Participar p   ON cl.idClub = p.idClub
WHERE cl.estado = 'activo'
GROUP BY cl.idClub, cl.nombre
HAVING COUNT(DISTINCT s.ISBN) > 1
ORDER BY libros_seleccionados DESC;

-- Consulta #5 | ¿Cuáles son los usuarios que tienen ejemplares disponibles para intercambio pero que aún no han solicitado ni recibido ningún intercambio?

SELECT
    u.idUsuario,
    u.nombreCompleto,
    u.ciudad,
    COUNT(e.idEjemplar) AS ejemplares_disponibles
FROM Usuario u
JOIN Ejemplar e ON u.idUsuario = e.idUsuario
WHERE e.disponibleIntercambio = 1
  AND u.idUsuario NOT IN (
      SELECT idUsuarioSolicita FROM Intercambio
      UNION
      SELECT idUsuarioRecibe   FROM Intercambio
  )
GROUP BY u.idUsuario, u.nombreCompleto, u.ciudad
ORDER BY ejemplares_disponibles DESC;
