/*use sys
SELECT * FROM sys_config*/

-- SYNTAXIS -- PASOS O ESTRUCTURA A SEGUIR
-- CREAR BD - DB
CREATE DATABASE materia_db;

-- seter por default bd
USE materia_db
-- CREAR TABLAS

CREATE TABLE alumnos (
	Cedula INT PRIMARY KEY null,
    nombres VARCHAR(75) not null,
    apellidos VARCHAR(75),
	edad INT,
    isActive BOOLEAN,
    fech_nac DATE
)

INSERT INTO alumnos (cedula, nombres, apellidos, edad, isActive, fech_nac)
	VALUES (0909090902, "ALEX", "CAICEDO2", 50, true, "2024/01/24"),
		   (0909090903, "ISABEL", "CAICEDO2", 50, true, "2024/01/24"),
	       (0909090904, "ISABEL", "CAICEDO2", 50, true, "2024/01/24");

SELECT * FROM alumnos


         
  




 
union
union all





CREATE TABLE clase1(
	MATERIA varchar(75),
    PROMEDIO int(3),
	CRITERIO BOOL
)
 
 INSERT INTO clase1(MATERIA, PROMEDIO, CRITERIO)
	VALUES ("Base de Datos", 100, true),
			("Programacion", 90, false);
            
SELECT * FROM clase1


-- QUE ES CRUD?
C = CREATE -- CREAR (INSERT)
R = READ - MOSTRAR DATOS (SELECT)
U = UPDATE - ACTUALIZAR LA TABLA
D = DELETE - ELIMINAR 


-- UPDATE SYNTAXIS
UPDATE alumnos
SET nombres = "CARLOS"
WHERE cedula > 1

SELECT * FROM alumnos

0	28	20:59:28	UPDATE alumnos
 SET nombres = "CARLOS"	Error Code: 1175. You are using safe update 
 mode and you tried to update a table without a WHERE that uses a 
 KEY column. 
 To disable safe mode, toggle the option in Preferences -> 
 SQL Editor and reconnect.	0.000 sec
 













