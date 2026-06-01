-- Directores
INSERT INTO Directores (nombre, apellido) VALUES
('Steven', 'Spielberg'),
('Christopher', 'Nolan'),
('Quentin', 'Tarantino'),
('James', 'Cameron'),
('Martin', 'Scorsese');

-- Clasificacion
INSERT INTO Clasificacion (clasificacion_nombre) VALUES
('G'), ('PG'), ('PG-13'), ('R'), ('NC-17');

-- Usuarios
INSERT INTO Usuarios (nombre, apellido, correo, telefono) VALUES
('Juan','Perez','juan1@gmail.com','3000000001'),
('Maria','Gomez','maria2@gmail.com','3000000002'),
('Carlos','Lopez','carlos3@gmail.com','3000000003'),
('Ana','Martinez','ana4@gmail.com','3000000004'),
('Luis','Rodriguez','luis5@gmail.com','3000000005'),
('Sofia','Hernandez','sofia6@gmail.com','3000000006'),
('Pedro','Diaz','pedro7@gmail.com','3000000007'),
('Laura','Torres','laura8@gmail.com','3000000008'),
('Jorge','Ramirez','jorge9@gmail.com','3000000009'),
('Camila','Flores','camila10@gmail.com','3000000010'),

('Diego','Morales','diego11@gmail.com','3000000011'),
('Valentina','Ortiz','valentina12@gmail.com','3000000012'),
('Andres','Castro','andres13@gmail.com','3000000013'),
('Paula','Vargas','paula14@gmail.com','3000000014'),
('Felipe','Rojas','felipe15@gmail.com','3000000015'),
('Daniela','Mendoza','daniela16@gmail.com','3000000016'),
('Miguel','Guerrero','miguel17@gmail.com','3000000017'),
('Sara','Cruz','sara18@gmail.com','3000000018'),
('David','Reyes','david19@gmail.com','3000000019'),
('Natalia','Herrera','natalia20@gmail.com','3000000020'),

('Kevin','Suarez','kevin21@gmail.com','3000000021'),
('Luisa','Jimenez','luisa22@gmail.com','3000000022'),
('Oscar','Pineda','oscar23@gmail.com','3000000023'),
('Tatiana','Navarro','tatiana24@gmail.com','3000000024'),
('Ricardo','Arias','ricardo25@gmail.com','3000000025'),
('Juliana','Peña','juliana26@gmail.com','3000000026'),
('Sebastian','Cortes','sebastian27@gmail.com','3000000027'),
('Alejandra','Salazar','alejandra28@gmail.com','3000000028'),
('Fernando','Acosta','fernando29@gmail.com','3000000029'),
('Gabriela','Leon','gabriela30@gmail.com','3000000030'),

('Hugo','Rincon','hugo31@gmail.com','3000000031'),
('Monica','Delgado','monica32@gmail.com','3000000032'),
('Ivan','Campos','ivan33@gmail.com','3000000033'),
('Patricia','Velez','patricia34@gmail.com','3000000034'),
('Raul','Soto','raul35@gmail.com','3000000035'),
('Claudia','Mejia','claudia36@gmail.com','3000000036'),
('Esteban','Parra','esteban37@gmail.com','3000000037'),
('Adriana','Bustos','adriana38@gmail.com','3000000038'),
('Mauricio','Gil','mauricio39@gmail.com','3000000039'),
('Diana','Quintero','diana40@gmail.com','3000000040');

--Peliculas
INSERT INTO Peliculas (titulo, duracion, directores_id, clasificacion_id) VALUES
('Pelicula 1', 120, 1, 3),
('Pelicula 2', 95, 2, 2),
('Pelicula 3', 110, 3, 4),
('Pelicula 4', 140, 4, 3),
('Pelicula 5', 100, 5, 2),

('Pelicula 6', 130, 1, 4),
('Pelicula 7', 105, 2, 3),
('Pelicula 8', 115, 3, 5),
('Pelicula 9', 125, 4, 3),
('Pelicula 10', 90, 5, 1),

('Pelicula 11', 150, 1, 4),
('Pelicula 12', 135, 2, 3),
('Pelicula 13', 98, 3, 2),
('Pelicula 14', 102, 4, 3),
('Pelicula 15', 108, 5, 4),

('Pelicula 16', 112, 1, 3),
('Pelicula 17', 118, 2, 2),
('Pelicula 18', 122, 3, 4),
('Pelicula 19', 97, 4, 1),
('Pelicula 20', 104, 5, 3),

('Pelicula 21', 109, 1, 2),
('Pelicula 22', 111, 2, 3),
('Pelicula 23', 117, 3, 4),
('Pelicula 24', 121, 4, 5),
('Pelicula 25', 99, 5, 2),

('Pelicula 26', 143, 1, 4),
('Pelicula 27', 137, 2, 3),
('Pelicula 28', 101, 3, 2),
('Pelicula 29', 106, 4, 3),
('Pelicula 30', 119, 5, 4),

('Pelicula 31', 124, 1, 3),
('Pelicula 32', 96, 2, 1),
('Pelicula 33', 113, 3, 2),
('Pelicula 34', 116, 4, 3),
('Pelicula 35', 128, 5, 4),

('Pelicula 36', 132, 1, 5),
('Pelicula 37', 107, 2, 2),
('Pelicula 38', 114, 3, 3),
('Pelicula 39', 120, 4, 4),
('Pelicula 40', 103, 5, 2);

--Ciudades
INSERT INTO Ciudades (ciudad_nombre) VALUES
('Medellin'),
('Bogota'),
('Cali');

--Sedes
INSERT INTO Sedes (sede_nombre, ciudad_id) VALUES
('Cine Centro', 1),
('Cine Norte', 1),
('Cine Sur', 2),
('Cine Oeste', 3);

--Sillas
INSERT INTO Sillas (nombre_silla) VALUES
('A01'),('A02'),('A03'),('A04'),('A05'),
('B01'),('B02'),('B03'),('B04'),('B05'),
('C01'),('C02'),('C03'),('C04'),('C05');

--Salas
INSERT INTO Salas (sala_nombre) VALUES
('Sala 1'),
('Sala 2'),
('Sala 3');

--Salas-Sillas
INSERT INTO Salas_Sillas (salas_id, silla_id, sede_id) VALUES
(1,1,1),(1,2,1),(1,3,1),(1,4,1),(1,5,1),
(2,6,2),(2,7,2),(2,8,2),(2,9,2),(2,10,2),
(3,11,3),(3,12,3),(3,13,3),(3,14,3),(3,15,3);

--Tarifa
INSERT INTO Tarifa (precio, sala_silla_id) VALUES
(10000,1),(10000,2),(10000,3),
(12000,4),(12000,5),
(14000,6),(14000,7),
(16000,8),(16000,9),
(18000,10),(18000,11),
(20000,12),(20000,13),
(22000,14),(22000,15);

--Generos
INSERT INTO Generos (genero_nombre) VALUES
('Accion'),
('Comedia'),
('Drama'),
('Terror'),
('Ciencia Ficcion');

--Peliculas-Generos
INSERT INTO Peliculas_Generos (pelicula_id, genero_id) VALUES
(1,1),(1,5),
(2,2),
(3,3),(3,1),
(4,1),(4,3),
(5,2),

(6,1),(6,4),
(7,2),(7,3),
(8,5),
(9,1),
(10,2),

(11,3),(11,4),
(12,1),
(13,2),
(14,3),
(15,4),

(16,1),(16,5),
(17,2),
(18,3),
(19,4),
(20,1),

(21,2),
(22,3),
(23,4),
(24,5),
(25,1),

(26,2),(26,3),
(27,4),
(28,5),
(29,1),
(30,2),

(31,3),
(32,4),
(33,5),
(34,1),
(35,2),

(36,3),
(37,4),
(38,5),
(39,1),
(40,2);

--Funciones
INSERT INTO Funciones (pelicula_id, tarifa_id, fecha, salas_id) VALUES
(1,1,'2026-05-01 18:00',1),
(2,2,'2026-05-01 20:00',2),
(3,3,'2026-05-01 22:00',3),

(4,4,'2026-05-02 18:00',1),
(5,5,'2026-05-02 20:00',2),
(6,6,'2026-05-02 22:00',3),

(7,7,'2026-05-03 18:00',1),
(8,8,'2026-05-03 20:00',2),
(9,9,'2026-05-03 22:00',3),

(10,10,'2026-05-04 18:00',1),
(11,11,'2026-05-04 20:00',2),
(12,12,'2026-05-04 22:00',3),

(13,13,'2026-05-05 18:00',1),
(14,14,'2026-05-05 20:00',2),
(15,15,'2026-05-05 22:00',3);

--Reservas
INSERT INTO Reserva (funcion_id, usuario_id, sala_silla_id) VALUES
(1,1,1),
(1,2,2),
(2,3,6),
(2,4,7),
(3,5,11),

(4,6,1),
(5,7,2),
(6,8,6),
(7,9,7),
(8,10,11),

(9,11,3),
(10,12,4),
(11,13,8),
(12,14,9),
(13,15,12),

(14,16,13),
(15,17,14),
(1,18,5),
(2,19,10),
(3,20,15);