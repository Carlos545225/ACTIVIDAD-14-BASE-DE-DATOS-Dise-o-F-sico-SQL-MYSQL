CREATE DATABASE db_colegio;
USE db_colegio;


CREATE TABLE estudiantes (
    id_estudiante INT PRIMARY KEY AUTO_INCREMENT,
    nombre_completo VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    telefono VARCHAR(20),
    email VARCHAR(100) UNIQUE,
    direccion VARCHAR(150),
    grado VARCHAR(20) NOT NULL,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE profesores (
    id_profesor INT PRIMARY KEY AUTO_INCREMENT,
    nombre_completo VARCHAR(100) NOT NULL,
    especialidad VARCHAR(50) NOT NULL,
    telefono VARCHAR(20),
    email VARCHAR(100) UNIQUE NOT NULL,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE asignaturas (
    id_asignatura INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    descripcion TEXT,
    id_profesor INT,
    creditos INT NOT NULL DEFAULT 1,
    FOREIGN KEY (id_profesor) REFERENCES profesores(id_profesor)
);