CREATE DATABASE IF NOT EXISTS db_ferreteria;
USE db_ferreteria;

CREATE TABLE clientes (
    idCliente INT PRIMARY KEY AUTO_INCREMENT,
    nombreCompleto VARCHAR(100) NOT NULL,
    telefono VARCHAR(20) NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    direccion VARCHAR(150) NULL,
    fechaRegistro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);