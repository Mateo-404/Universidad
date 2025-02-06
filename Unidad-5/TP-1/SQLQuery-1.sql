USE DA_BD;
<<<<<<< HEAD
=======

>>>>>>> 9621c8e3ff1925d41310c3e9e406018866d27272
-- TP 1
-- <-- HOTELES -->
-- Consultas Simples
  -- a
  SELECT * FROM HOTEL;
  -- b
  SELECT * FROM HOTEL WHERE city = 'London';
  -- c
  SELECT guestaddress, guestname 
  FROM guest 
  WHERE guestaddress LIKE '%London'
  ORDER BY guestname ASC;
  -- d
  SELECT * 
  FROM room 
  WHERE (type = 'double' OR type = 'family') AND price < 40
  ORDER BY price DESC;
  -- e
  SELECT * FROM booking WHERE dateto IS NULL;
  
-- Funciones de Agregaci�n
  -- f
  SELECT COUNT(hotelno) FROM hotel;
  -- g
  SELECT AVG(price) FROM room;
  -- h
  SELECT SUM(price) FROM room WHERE type = 'double';
  -- i
  SELECT COUNT(DISTINCT guestno) AS unique_guests
  FROM booking
  WHERE MONTH(dateFrom) = 8;

-- Subconsultas y Agrupaciones
  -- j
  SELECT price, type FROM room NATURAL JOIN hotel WHERE hotelname = 'Grosvenor';
  -- k
  SELECT guest.*, dateto
  FROM guest
  NATURAL JOIN booking
  WHERE dateto >= '01-10-24';
  -- l (???)
  SELECT r.*, guest.guestname
  FROM booking b
  JOIN hotel h USING (hotelno)
  JOIN guest USING (guestno)
  JOIN room r USING (roomno)
  WHERE b.dateto > '04-10-24'
  AND h.hotelname = 'Grosvenor';
  -- m
  SELECT SUM(price) AS TOTAL
  FROM room
  NATURAL JOIN booking
  NATURAL JOIN hotel
  WHERE dateto > '04-10-24'
  AND hotelname = 'Grosvenor'
  GROUP BY hotelno;
  -- N (???)
  SELECT room.*
  FROM room
  JOIN booking USING (roomno)
  WHERE booking.guestno IS NULL;
  -- o (???)
  
-- Agrupamientos
  -- p
  SELECT hotel.hotelname, COUNT(DISTINCT room.roomno) AS NroHabitaciones
  FROM room
  JOIN booking ON room.roomno = booking.roomno
  JOIN hotel ON hotel.hotelno = booking.hotelno
  GROUP BY hotel.hotelno;
<<<<<<< HEAD
  -- q
	SELECT roomno, HOTEL.hotelname 
	FROM ROOM, HOTEL 
	WHERE HOTEL.city = 'London'
	AND HOTEL.hotelno = ROOM.hotelno;
	-- r
	SELECT COUNT(*), hotelname, BOOKING.hotelno
	FROM BOOKING JOIN HOTEL ON HOTEL.hotelno = BOOKING.hotelno
	WHERE datefrom < '2024-09-1' AND dateto < '2024-09-1' AND datefrom > '2024-07-31' AND dateto > '2024-07-31'
	GROUP BY hotelname, BOOKING.hotelno
	ORDER BY hotelname;
	-- s
	SELECT MAX(cuenta), type
	FROM (
		SELECT COUNT(b.roomno), roomno.type AS cuenta
		FROM BOOKING b
		GROUP BY b.hotelno, b.roomno
	);
-- Otras operaciones sobre tablas
	-- w
	INSERT INTO HOTEL VALUES (122, 'Infinito', 'Rafaela');
	INSERT INTO ROOM VALUES (1, 122, 'single', 133);
	INSERT INTO GUEST VALUES (1998, 'Mateo', 'Epa, no me voy a doxear');
	INSERT INTO BOOKING VALUES (122, 1998, '2024-10-07', '2024-10-10', 1);
	-- x
	UPDATE ROOM SET price = price*1.05

-- <-- Noticias -->
-- Creacion de Tabla y datos de Prueba
/*
-- Creaci�n de la tabla USUARIOS
CREATE TABLE USUARIOS (
    Usr VARCHAR(50) PRIMARY KEY,     -- Clave primaria
    Pwd VARCHAR(255) NOT NULL,       -- La contrase�a deber�a estar encriptada en la pr�ctica
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    DNI CHAR(8) NOT NULL,            -- Suponiendo que el DNI tiene un formato de 8 caracteres
    Activo BIT NOT NULL              -- Activo ser� 1 o 0 para representar el estado
);

-- Creaci�n de la tabla SECCIONES
CREATE TABLE SECCIONES (
    IdSeccion INT PRIMARY KEY IDENTITY(1,1),  -- Clave primaria con autoincremento
    NomSeccion VARCHAR(100) NOT NULL,
    Descripcion TEXT,
    UsrCarga VARCHAR(50) NOT NULL,            -- Relaci�n con la tabla USUARIOS
    CONSTRAINT FK_Secciones_UsrCarga FOREIGN KEY (UsrCarga) 
    REFERENCES USUARIOS(Usr)                  -- Clave for�nea hacia USUARIOS
);

-- Creaci�n de la tabla NOTICIAS
CREATE TABLE NOTICIAS (
    NroNoticia INT PRIMARY KEY IDENTITY(1,1),  -- Clave primaria con autoincremento
    Titulo VARCHAR(255) NOT NULL,
    Texto TEXT NOT NULL,
    FechaArticulo DATETIME NOT NULL DEFAULT GETDATE(),  -- Fecha actual por defecto
    UsrCarga VARCHAR(50) NOT NULL,                     -- Clave for�nea hacia USUARIOS
    EscritoPor VARCHAR(255),                           -- Nombre del autor del art�culo
    Fuente VARCHAR(255),                               -- Fuente de la noticia
    CONSTRAINT FK_Noticias_UsrCarga FOREIGN KEY (UsrCarga) 
    REFERENCES USUARIOS(Usr)                           -- Clave for�nea hacia USUARIOS
);

-- Creaci�n de la tabla NOTICIAS_SECCIONES
CREATE TABLE NOTICIAS_SECCIONES (
    NroNoticia INT NOT NULL,          -- Clave for�nea hacia NOTICIAS
    IdSeccion INT NOT NULL,           -- Clave for�nea hacia SECCIONES
    Destacada BIT NOT NULL,           -- Indica si la noticia es destacada en la secci�n
    PRIMARY KEY (NroNoticia, IdSeccion),  -- Clave primaria compuesta
    CONSTRAINT FK_NoticiasSecciones_Noticia FOREIGN KEY (NroNoticia) 
    REFERENCES NOTICIAS(NroNoticia),  -- Relaci�n con la tabla NOTICIAS
    CONSTRAINT FK_NoticiasSecciones_Seccion FOREIGN KEY (IdSeccion) 
    REFERENCES SECCIONES(IdSeccion)   -- Relaci�n con la tabla SECCIONES
);
-- Inserci�n de usuarios
INSERT INTO USUARIOS (Usr, Pwd, Nombre, Apellido, DNI, Activo) VALUES
('RAMON', 'rr7854sd', 'Ramon', 'Gomez', '27250001', 1),
('JFLORES', 'jflores123', 'Juan', 'Flores', '27845002', 0),
('MPEREZ', 'maria1234', 'Maria', 'Perez', '25555003', 1),
('LRODRIGUEZ', 'luisrodr', 'Luis', 'Rodriguez', '30000004', 1),
('CRISTINA', 'cris4567', 'Cristina', 'Perez', '24560005', 1),
('MBERTOLO', 'berto2021', 'Mario', 'Bertolo', '27222206', 1);

-- Inserci�n de secciones
INSERT INTO SECCIONES (NomSeccion, Descripcion, UsrCarga) VALUES
('Deportes', 'Noticias sobre deportes', 'RAMON'),
('Politica', 'Noticias pol�ticas', 'JFLORES'),
('Econom�a', 'Noticias econ�micas', 'MPEREZ'),
('Tecnolog�a', 'Noticias sobre tecnolog�a', 'RAMON'),
('Cultura', 'Noticias culturales', 'MBERTOLO'),
('Internacionales', 'Noticias internacionales', 'CRISTINA');

-- Inserci�n de noticias
INSERT INTO NOTICIAS (Titulo, Texto, FechaArticulo, UsrCarga, EscritoPor, Fuente) VALUES
('El marat�n de la ciudad', 'Evento deportivo de alto nivel...', '2022-07-26', 'RAMON', 'Luis Rodriguez', 'La Naci�n'),
('Nueva reforma pol�tica', 'Se discute una nueva reforma...', '2021-08-15', 'JFLORES', NULL, 'Clar�n'),
('Crisis econ�mica mundial', 'Los mercados caen...', '2022-08-01', 'MPEREZ', 'Maria Perez', 'El Pa�s'),
('Actualizaci�n de software', 'Nueva versi�n del sistema...', '2022-08-10', 'RAMON', 'Cristina Perez', 'Prensa Multimedia'),
('Festival cultural', 'El evento cultural del a�o...', '2022-07-20', 'MBERTOLO', NULL, 'PM'),
('Marat�n de software', 'Competencia de programaci�n...', '2022-07-26', 'RAMON', 'Luis Rodriguez', 'Prensa Multimedia');

-- Inserci�n de relaciones entre noticias y secciones
INSERT INTO NOTICIAS_SECCIONES (NroNoticia, IdSeccion, Destacada) VALUES
(1, 1, 1),  -- 'El marat�n de la ciudad' en Deportes
(2, 2, 0),  -- 'Nueva reforma pol�tica' en Pol�tica
(3, 3, 1),  -- 'Crisis econ�mica mundial' en Econom�a
(4, 4, 1),  -- 'Actualizaci�n de software' en Tecnolog�a
(5, 5, 0),  -- 'Festival cultural' en Cultura
(6, 1, 1),  -- 'Marat�n de software' en Deportes
(6, 4, 1);  -- 'Marat�n de software' en Tecnolog�a
*/
-- Consultas Simples
	-- a
	SELECT * 
	FROM NOTICIAS
	WHERE FechaArticulo = '2022-07-26';
	-- b
	SELECT * 
	FROM USUARIOS
	WHERE DNI > 27000000
	ORDER BY DNI;
	-- c
	SELECT NomSeccion, IdSeccion
	FROM SECCIONES
	WHERE IdSeccion IN (2,4,7,11);
	-- d
	SELECT *
	FROM NOTICIAS
	WHERE Titulo LIKE '%marat�n%'
	ORDER BY FechaArticulo DESC, titulo;
	-- e
	select *
	from SECCIONES s
	where s.NomSeccion = '%s%';
	-- f Exhibir el campo **Activo** del registro del usuario que tiene nombre de usuario �RAMON� y contrase�a �rr7854sd�
	SELECT u.Activo
	FROM USUARIOS u
	WHERE u.Nombre = 'RAMON'
	AND u.Pwd = 'rr7854sd';
	-- g
	SELECT *
	FROM NOTICIAS_SECCIONES n
	WHERE n.IdSeccion = 5;
	-- (...)

-- CONSULTAS MAS COMPLEJAS
	-- m Recuperar el nombre y apellido de aquellos usuarios activos que hayan cargado al menos una noticia.
	SELECT DISTINCT Nombre, Apellido 
	FROM USUARIOS u
	JOIN NOTICIAS n ON u.Usr = n.EscritoPor;
	/*
- n. De los usuarios que cargaron noticias, recuperar nombre de usuario y la cantidad de noticias cargadas.
- o. Recuperar la cantidad de noticias cargadas por usuario y por d�a.
- p. Devolver el primero y el �ltimo n�mero de noticia cargada el 10/08/2022.
- q. Generar un listado de la cantidad de noticias por Secci�n.
- r. Recuperar Nombre de secciones con menos de 10 noticias asignadas.
- s. Recuperar n�mero, t�tulo y texto de aquellas noticias que est�n asignadas en por lo menos 3 secciones.
- t. Mostrar t�tulo y fecha de actualizaci�n de todas las noticias escritas por �Cristina Perez�, 
entre los a�os 2013 y 2015 (ambos inclusive) y que no correspondan a la secci�n 5.
- u. Listar los nombres de usuarios que cargaron m�s de 2 noticias en la secci�n 7.
- v. Mostrar el nombre de todas las secciones y la cantidad de noticias, de todas aquellas secciones que tienen al menos 3 noticias.
- w. �Cu�l es la secci�n con mayor n�mero de noticias publicadas? Mostrar su c�digo y su nombre.
- x. Devolver el nombre de la secci�n que tiene m�s noticias destacadas.
- y. Listar nombre y apellido de los usuarios que han creado al menos una noticia pero que no han creado ninguna secci�n.
- z. Generar un listado que muestre la fecha de Art�culo m�s antigua (la menor) por cada secci�n, exhibiendo el nombre de la secci�n, su descripci�n, la fecha del primer art�culo y su t�tulo.
	*/
	-- n
	SELECT COUNT(NroNoticia) AS Cantidad, MAX(Nombre) as Nombre, MAX(Apellido) as Apellido
	FROM USUARIOS u
	JOIN NOTICIAS N on u.Usr = N.UsrCarga
	GROUP BY Nombre, Apellido;
	-- o
	SELECT  N.FechaArticulo, COUNT(NroNoticia) AS Cantidad, MAX(Nombre) as Nombre, MAX(Apellido) as Apellido
	FROM USUARIOS u
	JOIN NOTICIAS N on u.Usr = N.UsrCarga
	GROUP BY Nombre, Apellido, N.FechaArticulo;
	-- p
	SELECT MAX(NroNoticia) AS UltimaNoticia, MIN(NroNoticia) AS PrimerNoticia
	FROM NOTICIAS
	WHERE FechaArticulo = '2022-08-10'
	GROUP BY NroNoticia
	ORDER BY NroNoticia DESC;
	-- q
	SELECT IdSeccion, COUNT(NroNoticia) AS CantidadNoticias
	FROM NOTICIAS_SECCIONES
	GROUP BY IdSeccion;
	-- s
	SELECT ns.NroNoticia, MAX(n.Titulo), MAX(n.Texto)
	FROM NOTICIAS_SECCIONES ns
	JOIN NOTICIAS n ON n.NroNoticia = ns.NroNoticia
	GROUP BY ns.NroNoticia, IdSeccion
	HAVING COUNT(ns.NroNoticia) > 3;
	-- t
	SELECT n.Titulo, n.FechaArticulo
	FROM NOTICIAS n
	JOIN USUARIOS u ON u.Usr = n.UsrCarga
	JOIN NOTICIAS_SECCIONES ns ON ns.NroNoticia = n.NroNoticia
	WHERE u.Nombre = 'Cristina' 
	AND u.Apellido = 'Perez'
	AND (YEAR(n.FechaArticulo) = '2013' OR YEAR(n.FechaArticulo) = '2015')
	AND NOT(ns.IdSeccion = 5);
	-- u
	SELECT u.Nombre, ns.IdSeccion
	FROM USUARIOS u
	JOIN NOTICIAS n ON n.UsrCarga = u.Usr
	JOIN NOTICIAS_SECCIONES ns ON ns.NroNoticia = n.NroNoticia
	WHERE ns.IdSeccion = 7
	GROUP BY u.Nombre, ns.IdSeccion
	HAVING COUNT(u.Nombre) > 2; 
	-- v
=======
  -- u
  SELECT MIN(r.price) AS MINIMO, MAX(r.price) AS MAXIMO, h.hotelno
  FROM ROOM r
  JOIN HOTEL h ON h.hotelno = r.hotelno
  WHERE h.hotelname = 'London Park'
  GROUP BY h.hotelno;
  -- v
  SELECT h.hotelname, AVG(r.price), r.type
  FROM HOTEL h JOIN ROOM r ON h.hotelno = r.hotelno
  WHERE h.city = 'London'
  GROUP BY h.hotelname, r.type
  ORDER BY h.hotelname, r.type; 

>>>>>>> 9621c8e3ff1925d41310c3e9e406018866d27272
