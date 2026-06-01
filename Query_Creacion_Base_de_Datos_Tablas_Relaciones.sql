--SCRIPT DE CREACION DE LA BASE DE DATOS --

CREATE DATABASE CineCesde;

USE CineCesde;

CREATE TABLE Peliculas(
	pelicula_id int identity(1,1) primary key,
	titulo varchar(50) unique not null,
	duracion int not null,
	directores_id int not null,
	clasificacion_id int not null
);

CREATE TABLE Directores(
	directores_id int identity(1,1) primary key,
	nombre varchar(30) not null,
	apellido varchar(30) not null
);

CREATE TABLE Clasificacion(
	clasificacion_id int identity(1,1) primary key,
	clasificacion_nombre varchar(20) not null
);

CREATE TABLE Generos(
	genero_id int identity(1,1) primary key,
	genero_nombre varchar(20) unique
);

CREATE TABLE Peliculas_Generos(
    pelicula_id INT NOT NULL,
    genero_id INT NOT NULL,
    CONSTRAINT PK_Pelicula_Genero 
    PRIMARY KEY (pelicula_id, genero_id)
);

CREATE TABLE Funciones(
	funcion_id int identity primary key,
	pelicula_id INT NOT NULL,
	tarifa_id int not null,
	fecha datetime not null,
	salas_id int not null
);

CREATE TABLE Tarifa(
	tarifa_id int identity primary key, 
	precio money not null,
	sala_silla_id int not null
);

CREATE TABLE Salas_Sillas(
	sala_silla_id int identity primary key,
	salas_id int not null,
	silla_id int not null,
	sede_id int not null
);

CREATE TABLE Salas(
	salas_id int identity primary key,
	sala_nombre varchar(15) not null
);

CREATE TABLE Sillas(
	silla_id int identity primary key,
	nombre_silla char(4) unique not null
); 

CREATE TABLE Sedes(
	sede_id int identity primary key,
	sede_nombre varchar(20) not null,
	ciudad_id int not null
);

CREATE TABLE Ciudades(
	ciudad_id int identity primary key,
	ciudad_nombre varchar(20) not null
);

CREATE TABLE Reserva(
	reserva_id int identity primary key,
	funcion_id int not null,
	usuario_id int not null,
	sala_silla_id int not null
);

CREATE TABLE Usuarios(
	usuario_id int identity primary key,
	nombre varchar(20) not null,
	apellido varchar(20) not null,
	correo varchar(100) not null,
	telefono varchar(15) not null
);

ALTER TABLE Peliculas 
ADD CONSTRAINT FK_Peliculas_Directores
FOREIGN KEY (directores_id)
REFERENCES Directores(directores_id);

ALTER TABLE Peliculas 
ADD CONSTRAINT FK_Peliculas_Clasificacion
FOREIGN KEY (clasificacion_id)
REFERENCES Clasificacion(clasificacion_id);

ALTER TABLE Peliculas_Generos 
ADD CONSTRAINT FK_PeliculasGeneros_Peliculas
FOREIGN KEY (pelicula_id)
REFERENCES Peliculas(pelicula_id);

ALTER TABLE Peliculas_Generos 
ADD CONSTRAINT FK_PeliculasGeneros_Generos
FOREIGN KEY (genero_id)
REFERENCES Generos(genero_id);

ALTER TABLE Funciones 
ADD CONSTRAINT FK_Funciones_Pelicula
FOREIGN KEY (pelicula_id)
REFERENCES Peliculas(pelicula_id);

ALTER TABLE Funciones 
ADD CONSTRAINT FK_Funciones_Tarifa
FOREIGN KEY (tarifa_id)
REFERENCES Tarifa(tarifa_id);

ALTER TABLE Funciones 
ADD CONSTRAINT FK_Funciones_Salas
FOREIGN KEY (salas_id)
REFERENCES Salas(salas_id);

ALTER TABLE Tarifa 
ADD CONSTRAINT FK_Tarifa_SalasSillas
FOREIGN KEY (sala_silla_id)
REFERENCES Salas_Sillas(sala_silla_id);

ALTER TABLE Salas_Sillas 
ADD CONSTRAINT FK_SalasSillas_Salas
FOREIGN KEY (salas_id)
REFERENCES Salas(salas_id);

ALTER TABLE Salas_Sillas 
ADD CONSTRAINT FK_SalasSillas_Sillas
FOREIGN KEY (silla_id)
REFERENCES Sillas(silla_id);

ALTER TABLE Salas_Sillas 
ADD CONSTRAINT FK_SalasSillas_Sedes
FOREIGN KEY (sede_id)
REFERENCES Sedes(sede_id);

ALTER TABLE Sedes 
ADD CONSTRAINT FK_Sedes_Ciudades
FOREIGN KEY (ciudad_id)
REFERENCES Ciudades(ciudad_id);

ALTER TABLE Reserva 
ADD CONSTRAINT FK_Reserva_Funciones
FOREIGN KEY (funcion_id)
REFERENCES Funciones(funcion_id);

ALTER TABLE Reserva 
ADD CONSTRAINT FK_Reserva_Usuario
FOREIGN KEY (usuario_id)
REFERENCES Usuarios(usuario_id);

ALTER TABLE Reserva 
ADD CONSTRAINT FK_Reserva_SalasSillas
FOREIGN KEY (sala_silla_id)
REFERENCES Salas_Sillas(sala_silla_id);