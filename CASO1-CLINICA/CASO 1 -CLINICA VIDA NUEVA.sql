CREATE DATABASE clinica_vida_nueva;
USE clinica_vida_nueva;

CREATE TABLE paciente (
cod_paciente INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
apellidos VARCHAR(50) NOT NULL,
direccion VARCHAR(200),
poblacion VARCHAR(50),
provincia VARCHAR(50),
cod_postal VARCHAR(10),
telefono VARCHAR(15),
fecha_nacimiento DATE
);
CREATE TABLE medico(
cod_medico INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
apellidos VARCHAR (50) NOT NULL,
telefono VARCHAR(10),
especialidad VARCHAR(50)
);

CREATE TABLE ingreso(
cod_ingreso INT AUTO_INCREMENT PRIMARY KEY,
cod_paciente INT NOT NULL,
cod_medico INT NOT NULL,
cod_habitacion INT NOT NULL,
num_cama INT NOT NULL,
fecha_ingreso DATE NOT NULL,
FOREIGN KEY (cod_paciente) references paciente (cod_paciente),
FOREIGN KEY (cod_medico) references medico (cod_medico)
);
