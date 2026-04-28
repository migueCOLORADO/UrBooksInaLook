CREATE DATABASE UrBookInALook
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

USE UrBookInALook;

-- Crear Tablas | Aqui pasamos las Relaciones del Modelo Relacional como Tablas con las restricciones para preservar la integridad de los datso

CREATE TABLE Usuario (
    idUsuario        INT          NOT NULL AUTO_INCREMENT,
    nombreCompleto   VARCHAR(100) NOT NULL,
    email            VARCHAR(150) NOT NULL,
    contrasena       VARCHAR(255) NOT NULL,
    ciudad           VARCHAR(100),
    fechaRegistro    DATE         NOT NULL,
    cuentaVerificada TINYINT(1)   NOT NULL DEFAULT 0,
    CONSTRAINT pk_usuario PRIMARY KEY (idUsuario),
    CONSTRAINT uq_usuario_email UNIQUE (email)
);

CREATE TABLE Autor (
    idAutor   INT          NOT NULL AUTO_INCREMENT,
    nombre    VARCHAR(150) NOT NULL,
    biografia TEXT,
    CONSTRAINT pk_autor PRIMARY KEY (idAutor)
);

CREATE TABLE Editorial (
    idEditorial     INT          NOT NULL AUTO_INCREMENT,
    nombre          VARCHAR(150) NOT NULL,
    numeroContacto  VARCHAR(50),
    email           VARCHAR(150),
    ubicacionCiudad VARCHAR(100),
    ubicacionDir    VARCHAR(200),
    CONSTRAINT pk_editorial PRIMARY KEY (idEditorial),
    CONSTRAINT uq_editorial_email UNIQUE (email)
);

CREATE TABLE GeneroLiterario (
    idGenero INT          NOT NULL AUTO_INCREMENT,
    nombre   VARCHAR(100) NOT NULL,
    tipo     VARCHAR(100),
    CONSTRAINT pk_genero PRIMARY KEY (idGenero)
);

CREATE TABLE Libro (
    ISBN    VARCHAR(20)  NOT NULL,
    titulo  VARCHAR(200) NOT NULL,
    resumen TEXT,
    CONSTRAINT pk_libro PRIMARY KEY (ISBN)
);

CREATE TABLE ClubLectura (
    idClub          INT          NOT NULL AUTO_INCREMENT,
    nombre          VARCHAR(150) NOT NULL,
    fechaCreacion   DATE         NOT NULL,
    estado          VARCHAR(50)  NOT NULL DEFAULT 'activo',
    ubicacionCiudad VARCHAR(100),
    ubicacionDir    VARCHAR(200),
    CONSTRAINT pk_club PRIMARY KEY (idClub),
    CONSTRAINT chk_club_estado CHECK (estado IN ('activo','inactivo'))
);

CREATE TABLE Ejemplar (
    idEjemplar            INT         NOT NULL AUTO_INCREMENT,
    estadoFisico          VARCHAR(50) NOT NULL,
    fechaAdquisicion      DATE,
    disponibleVenta       TINYINT(1)  NOT NULL DEFAULT 0,
    disponibleIntercambio TINYINT(1)  NOT NULL DEFAULT 0,
    ISBN                  VARCHAR(20) NOT NULL,
    idUsuario             INT         NOT NULL,
    CONSTRAINT pk_ejemplar          PRIMARY KEY (idEjemplar),
    CONSTRAINT fk_ejemplar_libro    FOREIGN KEY (ISBN)      REFERENCES Libro(ISBN)        ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_ejemplar_usuario  FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario)  ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT chk_ejemplar_estado  CHECK (estadoFisico IN ('nuevo','usado','deteriorado'))
);

CREATE TABLE Catalogo (
    idCatalogo           INT            NOT NULL AUTO_INCREMENT,
    modalidadPublicacion VARCHAR(50)    NOT NULL,
    precioPublicacion    DECIMAL(10,2),
    fechaPublicacion     DATE           NOT NULL,
    idEjemplar           INT            NOT NULL,
    CONSTRAINT pk_catalogo            PRIMARY KEY (idCatalogo),
    CONSTRAINT fk_catalogo_ejemplar   FOREIGN KEY (idEjemplar) REFERENCES Ejemplar(idEjemplar) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT chk_catalogo_modalidad CHECK (modalidadPublicacion IN ('visualizacion','venta','intercambio'))
);

CREATE TABLE Resena (
    idResena         INT         NOT NULL AUTO_INCREMENT,
    calificacion     INT         NOT NULL,
    comentario       TEXT,
    fechaPublicacion DATE        NOT NULL,
    ISBN             VARCHAR(20) NOT NULL,
    idUsuario        INT         NOT NULL,
    CONSTRAINT pk_resena                PRIMARY KEY (idResena),
    CONSTRAINT fk_resena_libro          FOREIGN KEY (ISBN)      REFERENCES Libro(ISBN)        ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_resena_usuario        FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario)  ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT uq_resena_usuario_libro  UNIQUE (idUsuario, ISBN),
    CONSTRAINT chk_resena_calificacion  CHECK (calificacion BETWEEN 1 AND 5)
);

CREATE TABLE OrdenCompra (
    idOrden          INT            NOT NULL AUTO_INCREMENT,
    fechaTransaccion DATE           NOT NULL,
    estado           VARCHAR(50)    NOT NULL DEFAULT 'pedido',
    total            DECIMAL(10,2)  NOT NULL,
    idUsuario        INT            NOT NULL,
    CONSTRAINT pk_orden         PRIMARY KEY (idOrden),
    CONSTRAINT fk_orden_usuario FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT chk_orden_estado CHECK (estado IN ('pedido','pagado','cancelado','enviado','recibido'))
);

CREATE TABLE Intercambio (
    idIntercambio      INT         NOT NULL AUTO_INCREMENT,
    fechaSolicitud     DATE        NOT NULL,
    estado             VARCHAR(50) NOT NULL DEFAULT 'pendiente',
    idUsuarioSolicita  INT         NOT NULL,
    idUsuarioRecibe    INT         NOT NULL,
    idEjemplarSolicita INT         NOT NULL,
    idEjemplarRecibe   INT         NOT NULL,
    CONSTRAINT pk_intercambio               PRIMARY KEY (idIntercambio),
    CONSTRAINT fk_intercambio_usuario_s     FOREIGN KEY (idUsuarioSolicita)  REFERENCES Usuario(idUsuario)   ON DELETE RESTRICT,
    CONSTRAINT fk_intercambio_usuario_r     FOREIGN KEY (idUsuarioRecibe)    REFERENCES Usuario(idUsuario)   ON DELETE RESTRICT,
    CONSTRAINT fk_intercambio_ejemplar_s    FOREIGN KEY (idEjemplarSolicita) REFERENCES Ejemplar(idEjemplar) ON DELETE RESTRICT,
    CONSTRAINT fk_intercambio_ejemplar_r    FOREIGN KEY (idEjemplarRecibe)   REFERENCES Ejemplar(idEjemplar) ON DELETE RESTRICT,
    CONSTRAINT chk_intercambio_estado       CHECK (estado IN ('pendiente','aceptado','rechazado')),
    CONSTRAINT chk_intercambio_usuarios     CHECK (idUsuarioSolicita <> idUsuarioRecibe),
    CONSTRAINT chk_intercambio_ejemplares   CHECK (idEjemplarSolicita <> idEjemplarRecibe)
);

CREATE TABLE Escribir (
    ISBN    VARCHAR(20) NOT NULL,
    idAutor INT         NOT NULL,
    CONSTRAINT pk_escribir      PRIMARY KEY (ISBN, idAutor),
    CONSTRAINT fk_escribir_libro FOREIGN KEY (ISBN)    REFERENCES Libro(ISBN)    ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_escribir_autor FOREIGN KEY (idAutor) REFERENCES Autor(idAutor) ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE Publicar (
    ISBN        VARCHAR(20) NOT NULL,
    idEditorial INT         NOT NULL,
    CONSTRAINT pk_publicar           PRIMARY KEY (ISBN, idEditorial),
    CONSTRAINT fk_publicar_libro     FOREIGN KEY (ISBN)        REFERENCES Libro(ISBN)           ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_publicar_editorial FOREIGN KEY (idEditorial) REFERENCES Editorial(idEditorial) ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE Pertenecer (
    ISBN     VARCHAR(20) NOT NULL,
    idGenero INT         NOT NULL,
    CONSTRAINT pk_pertenecer         PRIMARY KEY (ISBN, idGenero),
    CONSTRAINT fk_pertenecer_libro   FOREIGN KEY (ISBN)     REFERENCES Libro(ISBN)              ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_pertenecer_genero  FOREIGN KEY (idGenero) REFERENCES GeneroLiterario(idGenero) ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE Participar (
    idUsuario INT NOT NULL,
    idClub    INT NOT NULL,
    CONSTRAINT pk_participar         PRIMARY KEY (idUsuario, idClub),
    CONSTRAINT fk_participar_usuario FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario)    ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_participar_club    FOREIGN KEY (idClub)    REFERENCES ClubLectura(idClub)   ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE Seleccionar (
    idClub         INT         NOT NULL,
    ISBN           VARCHAR(20) NOT NULL,
    fechaSeleccion DATE        NOT NULL,
    CONSTRAINT pk_seleccionar        PRIMARY KEY (idClub, ISBN),
    CONSTRAINT fk_seleccionar_club   FOREIGN KEY (idClub) REFERENCES ClubLectura(idClub) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_seleccionar_libro  FOREIGN KEY (ISBN)   REFERENCES Libro(ISBN)         ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE Incluir (
    idOrden        INT            NOT NULL,
    idCatalogo     INT            NOT NULL,
    precioUnitario DECIMAL(10,2)  NOT NULL,
    CONSTRAINT pk_incluir          PRIMARY KEY (idOrden, idCatalogo),
    CONSTRAINT fk_incluir_orden    FOREIGN KEY (idOrden)    REFERENCES OrdenCompra(idOrden)  ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_incluir_catalogo FOREIGN KEY (idCatalogo) REFERENCES Catalogo(idCatalogo)  ON UPDATE CASCADE ON DELETE RESTRICT
);
