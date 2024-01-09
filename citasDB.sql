create database consultorio;
use consultorio;

create table doctores(
 id_doctor  integer auto_increment not null primary key ,
 nombre varchar(50) not null,
 apellido_paterno varchar(80) not null,
 apellido_materno varchar(80) not null,
 especialidad varchar(80) not null
);

-- Insertar un doctor
INSERT INTO doctores (nombre, apellido_paterno, apellido_materno, especialidad)
VALUES ('Juan', 'Gómez', 'López', 'Cardiología');

-- Insertar otro doctor
INSERT INTO doctores (nombre, apellido_paterno, apellido_materno, especialidad)
VALUES ('María', 'Martínez', 'Fernández', 'Pediatría');

-- Insertar un tercer doctor
INSERT INTO doctores (nombre, apellido_paterno, apellido_materno, especialidad)
VALUES ('Carlos', 'Rodríguez', 'García', 'Dermatología');

select * from doctores;

create table consultorio(	
	id_consultorio INTEGER not null primary key,
    piso integer not null

);
drop table consultorio;
-- Insertar un consultorio en el primer piso
INSERT INTO consultorio (id_consultorio, piso)
VALUES (1, 1);

-- Insertar otro consultorio en el segundo piso
INSERT INTO consultorio (id_consultorio, piso)
VALUES (2, 2);

-- Insertar un tercer consultorio en el tercer piso
INSERT INTO consultorio (id_consultorio, piso)
VALUES (3, 3);

CREATE TABLE citas (
    id_cita INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY,
    id_paciente INTEGER,
    id_doctor INTEGER,
    id_consultorio INTEGER,
    fecha DATE NOT NULL,
    hora TIME NOT NULL,
	nombre_paciente varchar(60) not null,
    FOREIGN KEY (id_doctor) REFERENCES doctores(id_doctor),
    FOREIGN KEY (id_consultorio) REFERENCES consultorio(id_consultorio)
);
drop table citas;

-- Insertar una cita para un paciente con un doctor en un consultorio específico
INSERT INTO citas (id_paciente, id_doctor, id_consultorio, fecha, hora, nombre_paciente)
VALUES (1, 1, 1, '2024-01-08', '10:00:00', 'Juan Pérez');

-- Insertar otra cita para un paciente diferente con un doctor en otro consultorio
INSERT INTO citas (id_paciente, id_doctor, id_consultorio, fecha, hora, nombre_paciente)
VALUES (2, 2, 2, '2024-01-09', '14:30:00', 'María Rodríguez');

-- Insertar una tercera cita para otro paciente con otro doctor en otro consultorio
INSERT INTO citas (id_paciente, id_doctor, id_consultorio, fecha, hora, nombre_paciente)
VALUES (3, 3, 3, '2024-01-10', '16:45:00', 'Carlos Gómez');


drop table citas;
select * from citas;