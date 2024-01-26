CREATE DATABASE Empresa;
USE Empresa;

##DROP DATABASE Empresa;

CREATE TABLE Cargos(
id_cargo INT AUTO_INCREMENT PRIMARY KEY,
cargo VARCHAR(20)
);

CREATE TABLE Departamentos(
id_departamento INT AUTO_INCREMENT PRIMARY KEY,
departamento VARCHAR(30)
);

CREATE TABLE Empleados(
id_empleado INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(30),
apellido VARCHAR(30),
id_cargo INT,
FOREIGN KEY (id_cargo) 
REFERENCES Cargos(id_cargo),
salario VARCHAR(20),
fecha_inicio DATE,
id_departamento INT,
FOREIGN KEY (id_departamento) 
REFERENCES Departamentos(id_departamento)
);

CREATE TABLE Proyectos_Especificos(
id_proyecto INT AUTO_INCREMENT PRIMARY KEY,
proyecto VARCHAR(50),
id_empleado INT,
FOREIGN KEY (id_empleado) 
REFERENCES Empleados(id_empleado)
);