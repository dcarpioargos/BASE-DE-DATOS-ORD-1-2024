/*use sys
SELECT * FROM sys_config*/

-- SYNTAXIS -- PASOS O ESTRUCTURA A SEGUIR
-- CREAR BD - DB
CREATE DATABASE materia_db;

-- seter por default bd
USE materia_db
-- CREAR TABLAS

CREATE TABLE alumnos (
	-- id
    nombres VARCHAR(75),
    apellidos VARCHAR(75),
	edad INT,
    isActive BOOLEAN,
    fech_nac DATE
)

INSERT INTO alumnos (apellidos, edad, isActive, fech_nac)
	VALUES ("CAICEDO2", 50, "0", "2024/01/24"),
		   ("ISABEL", "CAICEDO2", 50, "0", "2024/01/24"),
	       ("ISABEL", "CAICEDO2", 50, "0", "2024/01/24");

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





