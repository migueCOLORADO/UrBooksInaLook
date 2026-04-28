USE UrBookInALook; -- Seleccionamos una BD de datos en memoria

-- Aqui insertamos los 8 registros para cauna de las tablas que conforman a la BD.
-- Tabla | Usuario

INSERT INTO Usuario (nombreCompleto, email, contrasena, ciudad, fechaRegistro, cuentaVerificada) VALUES
('Miguel Ángel Colorado',  'macolorad@eafit.edu.co', 'hash_mc2025', 'Medellín',  '2025-01-15', 1),
('Alejandro Soto Bermeo',  'asotob@eafit.edu.co',   'hash_as2025', 'Medellín',  '2025-01-18', 1),
('María Camila Restrepo',  'mcrestrepo@eafit.edu.co','hash_mr2025', 'Envigado',  '2025-02-02', 1),
('Sebastián Gómez Pérez',  'sgomezp@eafit.edu.co',  'hash_sg2025', 'Medellín',  '2025-02-10', 1),
('Valentina Ramírez Lara', 'vramirezl@eafit.edu.co','hash_vr2025', 'Bello',     '2025-02-20', 0),
('Daniel Mejía Cardona',   'dmejiac@eafit.edu.co',  'hash_dm2025', 'Itagüí',    '2025-03-01', 1),
('Laura Sofía Ortiz',      'lsortiz@eafit.edu.co',  'hash_lo2025', 'Sabaneta',  '2025-03-12', 1),
('Juan Pablo Henao',       'jphenao@eafit.edu.co',  'hash_jh2025', 'Medellín',  '2025-03-25', 0);

-- Tabla | Autor 
INSERT INTO Autor (nombre, biografia) VALUES
('Gabriel García Márquez',   'Escritor colombiano (1927-2014), Premio Nobel de Literatura 1982. Máximo exponente del realismo mágico.'),
('Isabel Allende',           'Escritora chilena nacida en 1942. Conocida por novelas con elementos de realismo mágico y memoria histórica.'),
('Mario Vargas Llosa',       'Escritor peruano nacido en 1936. Premio Nobel de Literatura 2010. Figura central del Boom latinoamericano.'),
('Jorge Luis Borges',        'Escritor argentino (1899-1986). Reconocido por sus relatos breves y ensayos de profundidad filosófica.'),
('Julio Cortázar',           'Escritor argentino (1914-1984). Autor de Rayuela, novela emblemática de la literatura experimental.'),
('Laura Restrepo',           'Escritora y periodista colombiana nacida en 1950. Autora de Delirio, ganadora del Premio Alfaguara 2004.'),
('Héctor Abad Faciolince',   'Escritor colombiano nacido en 1958. Autor de El olvido que seremos, novela autobiográfica de gran impacto.'),
('Piedad Bonnett',           'Poeta y novelista colombiana nacida en 1951. Reconocida por su obra Lo que no tiene nombre.');

-- Tabla | Editorial
INSERT INTO Editorial (nombre, numeroContacto, email, ubicacionCiudad, ubicacionDir) VALUES
('Editorial Planeta',     '+57 601 7430700', 'contacto@planeta.com.co',     'Bogotá',    'Calle 73 # 7-60'),
('Penguin Random House',  '+57 601 7434000', 'info@penguinrandomhouse.co',  'Bogotá',    'Carrera 5 # 34A-09'),
('Alfaguara',             '+57 601 7430800', 'editorial@alfaguara.com.co',  'Bogotá',    'Calle 73 # 7-60'),
('Tusquets Editores',     '+34 933 067040',  'tusquets@tusquets.com',       'Barcelona', 'Avenida Diagonal 662-664'),
('Anagrama',              '+34 932 017360',  'anagrama@anagrama-ed.es',     'Barcelona', 'Pedró de la Creu 58'),
('Sudamericana',          '+54 114 5566000', 'info@sudamericana.com.ar',    'Buenos Aires', 'Humberto I 555'),
('Editorial UEAFIT',      '+57 604 2619500', 'editorial@eafit.edu.co',      'Medellín',  'Carrera 49 # 7 Sur-50'),
('Norma',                 '+57 601 4046800', 'servicio@editorialnorma.com', 'Bogotá',    'Avenida El Dorado # 90-10');

-- Tabla | GeneroLiterario
INSERT INTO GeneroLiterario (nombre, tipo) VALUES
('Realismo Mágico',     'Narrativa'),
('Novela Histórica',    'Narrativa'),
('Cuento',              'Narrativa'),
('Poesía',              'Lírica'),
('Ensayo',              'No ficción'),
('Ciencia Ficción',     'Narrativa'),
('Biografía',           'No ficción'),
('Literatura Infantil', 'Narrativa');

-- Tabla | Libro
INSERT INTO Libro (ISBN, titulo, resumen) VALUES
('978-84-376-0494-7', 'Cien años de soledad',     'Saga de la familia Buendía a lo largo de siete generaciones en el mítico pueblo de Macondo.'),
('978-84-204-2244-1', 'La casa de los espíritus', 'Crónica generacional de la familia Trueba en un país latinoamericano marcado por el realismo mágico.'),
('978-84-204-8307-7', 'La ciudad y los perros',   'Novela ambientada en el Colegio Militar Leoncio Prado de Lima que retrata la violencia y la masculinidad.'),
('978-84-206-3327-4', 'Ficciones',                'Colección de cuentos que exploran laberintos, espejos y bibliotecas infinitas.'),
('978-84-376-0496-1', 'Rayuela',                  'Novela experimental que puede leerse en múltiples órdenes, ambientada entre París y Buenos Aires.'),
('978-958-704-689-3', 'Delirio',                  'Aurora Restrepo regresa a su casa y encuentra a su esposa en un brote psicótico en un hotel de Bogotá.'),
('978-958-42-1839-5', 'El olvido que seremos',    'Memorias del autor sobre su padre, médico y activista de derechos humanos asesinado en Medellín.'),
('978-958-42-3651-1', 'Lo que no tiene nombre',   'Testimonio íntimo sobre el suicidio del hijo de la autora y el duelo posterior.');

-- Tabla | ClubLectura
INSERT INTO ClubLectura (nombre, fechaCreacion, estado, ubicacionCiudad, ubicacionDir) VALUES
('Lectores Macondo',         '2025-02-01', 'activo',   'Medellín', 'Bloque 38 - Universidad EAFIT'),
('Boom Latinoamericano',     '2025-02-15', 'activo',   'Medellín', 'Bloque 19 - Universidad EAFIT'),
('Letras del Sur',           '2025-02-20', 'activo',   'Envigado', 'Biblioteca Pública Envigado'),
('Voces Femeninas',          '2025-03-01', 'activo',   'Medellín', 'Café Pergamino - Provenza'),
('Cuentos y Ensayos',        '2025-03-10', 'activo',   'Medellín', 'Bloque 38 - Universidad EAFIT'),
('Literatura Antioqueña',    '2025-03-15', 'activo',   'Medellín', 'Parque Biblioteca León de Greiff'),
('Club de Poesía Eafitense', '2025-03-22', 'inactivo', 'Medellín', 'Bloque 29 - Universidad EAFIT'),
('Lectores Nocturnos',       '2025-04-01', 'activo',   'Bello',    'Café Velvet - Bello');

-- Tabla | Ejemplar 
INSERT INTO Ejemplar (estadoFisico, fechaAdquisicion, disponibleVenta, disponibleIntercambio, ISBN, idUsuario) VALUES
('nuevo',       '2025-01-20', 1, 0, '978-84-376-0494-7', 1),  -- idEjemplar=1, Miguel - Cien años
('usado',       '2025-01-25', 0, 1, '978-84-204-2244-1', 2),  -- idEjemplar=2, Alejo - Casa espíritus
('nuevo',       '2025-02-05', 1, 1, '978-84-204-8307-7', 3),  -- idEjemplar=3, María - Ciudad y perros
('usado',       '2025-02-15', 0, 1, '978-84-206-3327-4', 4),  -- idEjemplar=4, Sebastián - Ficciones
('deteriorado', '2025-02-22', 0, 0, '978-84-376-0496-1', 5),  -- idEjemplar=5, Valentina - Rayuela
('usado',       '2025-03-05', 1, 1, '978-958-704-689-3', 6),  -- idEjemplar=6, Daniel - Delirio
('nuevo',       '2025-03-15', 1, 0, '978-958-42-1839-5', 7),  -- idEjemplar=7, Laura - El olvido
('usado',       '2025-03-28', 0, 1, '978-958-42-3651-1', 8);  -- idEjemplar=8, Juan - Lo que no tiene nombre

-- Tabla | Catalogo
INSERT INTO Catalogo (modalidadPublicacion, precioPublicacion, fechaPublicacion, idEjemplar) VALUES
('venta',          45000.00, '2025-02-01', 1),  -- idCatalogo=1
('intercambio',    NULL,     '2025-02-10', 2),  -- idCatalogo=2
('venta',          38000.00, '2025-02-20', 3),  -- idCatalogo=3
('intercambio',    NULL,     '2025-03-01', 4),  -- idCatalogo=4
('visualizacion',  NULL,     '2025-03-08', 5),  -- idCatalogo=5
('venta',          32000.00, '2025-03-12', 6),  -- idCatalogo=6
('venta',          50000.00, '2025-03-20', 7),  -- idCatalogo=7
('intercambio',    NULL,     '2025-04-02', 8);  -- idCatalogo=8

-- Tabla | Resena
INSERT INTO Resena (calificacion, comentario, fechaPublicacion, ISBN, idUsuario) VALUES
(5, 'Una obra maestra absoluta. La construcción del universo de Macondo es deslumbrante.',     '2025-02-15', '978-84-376-0494-7', 1),
(4, 'Allende construye una saga conmovedora con personajes femeninos memorables.',             '2025-02-20', '978-84-204-2244-1', 3),
(4, 'Vargas Llosa muestra con crudeza el ambiente militar. Lectura intensa y necesaria.',      '2025-03-01', '978-84-204-8307-7', 2),
(5, 'Borges en su máxima expresión. Cada cuento abre una puerta a un universo distinto.',      '2025-03-10', '978-84-206-3327-4', 4),
(3, 'Rayuela exige paciencia. Más experimento que novela, pero recompensa al lector dedicado.', '2025-03-18', '978-84-376-0496-1', 6),
(5, 'Restrepo logra un retrato profundo de la locura y la familia. Imperdible.',               '2025-03-25', '978-958-704-689-3', 5),
(5, 'Un homenaje íntimo y conmovedor. Imposible no llorar con las últimas páginas.',           '2025-04-05', '978-958-42-1839-5', 7),
(4, 'Bonnett escribe el dolor con una honestidad que estremece.',                              '2025-04-10', '978-958-42-3651-1', 8),
-- Aqui creamos reseñas adicionales | Mismo libro, distinto usuario  para enriquecer las consultas
(5, 'Releerlo a los 30 cambia la perspectiva. Sigue siendo el libro de mi vida.',              '2025-04-12', '978-84-376-0494-7', 3),
(4, 'Magnífica novela, aunque algunas partes se sienten lentas. Vale cada página.',            '2025-04-15', '978-84-376-0494-7', 5),
(2, 'Me costó mucho entrar. La estructura me terminó perdiendo a la mitad.',                    '2025-04-18', '978-84-376-0496-1', 1),
(5, 'Abad Faciolince transforma el dolor en literatura de la más alta calidad.',                '2025-04-20', '978-958-42-1839-5', 2);


-- Tabla | OrdenCompra 
INSERT INTO OrdenCompra (fechaTransaccion, estado, total, idUsuario) VALUES
('2025-02-12', 'recibido',  45000.00, 3),  -- idOrden=1
('2025-02-25', 'recibido',  38000.00, 1),  -- idOrden=2
('2025-03-02', 'enviado',   32000.00, 4),  -- idOrden=3
('2025-03-15', 'pagado',    95000.00, 6),  -- idOrden=4 (combinada)
('2025-03-25', 'pedido',    50000.00, 7),  -- idOrden=5
('2025-04-01', 'cancelado', 45000.00, 8),  -- idOrden=6
('2025-04-08', 'recibido',  83000.00, 2),  -- idOrden=7 (combinada)
('2025-04-15', 'enviado',   77000.00, 5);  -- idOrden=8 (combinada)

-- Tabla | Intercambio | Aqui hay que considerar que los ejemplares deben pertenecer a los usuarios respectivos
-- 
INSERT INTO Intercambio (fechaSolicitud, estado, idUsuarioSolicita, idUsuarioRecibe, idEjemplarSolicita, idEjemplarRecibe) VALUES
('2025-02-18', 'aceptado',  2, 3, 2, 3),  -- Alejo (ej.2) <-> María (ej.3)
('2025-02-28', 'rechazado', 4, 6, 4, 6),  -- Sebastián (ej.4) <-> Daniel (ej.6)
('2025-03-08', 'pendiente', 3, 4, 3, 4),  -- María (ej.3) <-> Sebastián (ej.4)
('2025-03-18', 'aceptado',  6, 8, 6, 8),  -- Daniel (ej.6) <-> Juan (ej.8)
('2025-03-28', 'pendiente', 8, 2, 8, 2),  -- Juan (ej.8) <-> Alejo (ej.2)
('2025-04-02', 'aceptado',  4, 8, 4, 8),  -- Sebastián (ej.4) <-> Juan (ej.8)
('2025-04-10', 'pendiente', 2, 6, 2, 6),  -- Alejo (ej.2) <-> Daniel (ej.6)
('2025-04-18', 'rechazado', 3, 8, 3, 8);  -- María (ej.3) <-> Juan (ej.8)

-- Tabla | Escribir
INSERT INTO Escribir (ISBN, idAutor) VALUES
('978-84-376-0494-7', 1),  -- Cien años - García Márquez
('978-84-204-2244-1', 2),  -- Casa de los espíritus - Allende
('978-84-204-8307-7', 3),  -- Ciudad y perros - Vargas Llosa
('978-84-206-3327-4', 4),  -- Ficciones - Borges
('978-84-376-0496-1', 5),  -- Rayuela - Cortázar
('978-958-704-689-3', 6),  -- Delirio - Laura Restrepo
('978-958-42-1839-5', 7),  -- El olvido - Abad Faciolince
('978-958-42-3651-1', 8);  -- Lo que no tiene nombre - Bonnett

-- Tabla | Publicar
INSERT INTO Publicar (ISBN, idEditorial) VALUES
('978-84-376-0494-7', 3),  -- Cien años - Alfaguara
('978-84-204-2244-1', 3),  -- Casa espíritus - Alfaguara
('978-84-204-8307-7', 4),  -- Ciudad perros - Tusquets
('978-84-206-3327-4', 5),  -- Ficciones - Anagrama
('978-84-376-0496-1', 6),  -- Rayuela - Sudamericana
('978-958-704-689-3', 1),  -- Delirio - Planeta
('978-958-42-1839-5', 2),  -- El olvido - Penguin Random House
('978-958-42-3651-1', 1);  -- Lo que no tiene nombre - Planeta

-- Tabla | Pertenecer
INSERT INTO Pertenecer (ISBN, idGenero) VALUES
('978-84-376-0494-7', 1),  -- Cien años - Realismo Mágico
('978-84-204-2244-1', 1),  -- Casa espíritus - Realismo Mágico
('978-84-204-2244-1', 2),  -- Casa espíritus - Novela Histórica (multi-género)
('978-84-204-8307-7', 2),  -- Ciudad perros - Novela Histórica
('978-84-206-3327-4', 3),  -- Ficciones - Cuento
('978-84-376-0496-1', 3),  -- Rayuela - Cuento (experimental)
('978-958-704-689-3', 2),  -- Delirio - Novela Histórica
('978-958-42-1839-5', 7);  -- El olvido - Biografía

-- Tabla | Participar
INSERT INTO Participar (idUsuario, idClub) VALUES
(1, 1),  -- Miguel - Lectores Macondo
(1, 2),  -- Miguel - Boom Latinoamericano
(2, 1),  -- Alejo - Lectores Macondo
(3, 4),  -- María - Voces Femeninas
(4, 2),  -- Sebastián - Boom Latinoamericano
(5, 5),  -- Valentina - Cuentos y Ensayos
(6, 6),  -- Daniel - Literatura Antioqueña
(7, 6);  -- Laura - Literatura Antioqueña

-- Tabla | Seleccionar
INSERT INTO Seleccionar (idClub, ISBN, fechaSeleccion) VALUES
(1, '978-84-376-0494-7', '2025-02-05'),  -- Macondo - Cien años
(1, '978-84-204-2244-1', '2025-03-05'),  -- Macondo - Casa espíritus
(2, '978-84-204-8307-7', '2025-02-20'),  -- Boom - Ciudad perros
(2, '978-84-376-0496-1', '2025-03-15'),  -- Boom - Rayuela
(4, '978-958-704-689-3', '2025-03-10'),  -- Voces Femeninas - Delirio
(4, '978-958-42-3651-1', '2025-04-05'),  -- Voces Femeninas - Lo que no tiene nombre
(5, '978-84-206-3327-4', '2025-03-15'),  -- Cuentos y Ensayos - Ficciones
(6, '978-958-42-1839-5', '2025-03-25');  -- Literatura Antioqueña - El olvido

-- Tabla | Incluir 
INSERT INTO Incluir (idOrden, idCatalogo, precioUnitario) VALUES
(1, 1, 45000.00),  -- Orden 1: Cien años (total: 45.000)
(2, 3, 38000.00),  -- Orden 2: Ciudad y los perros (total: 38.000)
(3, 6, 32000.00),  -- Orden 3: Delirio (total: 32.000)
(4, 1, 45000.00),  -- Orden 4 combinada: Cien años
(4, 7, 50000.00),  -- Orden 4 combinada: El olvido (total: 95.000)
(5, 7, 50000.00),  -- Orden 5: El olvido (total: 50.000)
(6, 1, 45000.00),  -- Orden 6 (cancelada): Cien años (total: 45.000)
(7, 3, 38000.00),  -- Orden 7 combinada: Ciudad y los perros
(7, 1, 45000.00),  -- Orden 7 combinada: Cien años (total: 83.000)
(8, 7, 50000.00),  -- Orden 8 combinada: El olvido
(8, 6, 27000.00);  -- Orden 8 combinada: Delirio (total: 77.000)