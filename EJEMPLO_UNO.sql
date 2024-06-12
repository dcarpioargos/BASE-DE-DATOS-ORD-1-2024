/*use sys
SELECT * FROM sys_config*/

-- SYNTAXIS -- PASOS O ESTRUCTURA A SEGUIR
-- CREAR BD - DB
CREATE DATABASE materia_db;


-- seter por default bd
USE materia_db
-- CREAR TABLAS

CREATE TABLE alumnos (
	-- - Cedula INT PRIMARY KEY,
    ID INT PRIMARY KEY,
    nombres VARCHAR(75) not null,
    apellidos VARCHAR(75),
	edad INT,
    isActive BOOLEAN,
    fech_nac DATE
)

INSERT INTO alumnos (cedula, nombres, apellidos, edad, isActive, fech_nac)
	VALUES (0909090905, "ALEX", "CAICEDO2", 50, true, "2024/01/24"),
		   (0909090906, "ISABEL", "CAICEDO2", 50, true, "2024/01/24"),
	       (0909090907, "ISABEL", "CAICEDO2", 50, true, "2024/01/24"),
	       (0909090908, "ISABEL", "CAICEDO2", 50, true, "2024/01/24"),
	       (0909090909, "ISABEL", "CAICEDO2", 50, true, "2024/01/24"),
	       (0909090910, "ISABEL", "CAICEDO2", 50, true, "2024/01/24"),
	       (0909090911, "ISABEL", "CAICEDO2", 50, true, "2024/01/24")

SELECT * FROM alumnos


         
  

CREATE TABLE al (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    nombres VARCHAR(75) null
)
INSERT INTO `materia_db`.`al` (`nombres`) VALUES ('juan');
SELECT * FROM al

 
union
union all





CREATE TABLE clase1(
	MATERIA varchar(75),
    PROMEDIO int(3),
	CRITERIO BOOL
)
 
clase1 INSERT INTO clase1(MATERIA, PROMEDIO, CRITERIO)
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
SET edad = 40, apellidos = "APOLO 2"    -- 20 === "20"
WHERE cedula = 909090901 OR nombres = "CARLOS";
SELECT * FROM alumnos

-- delete 
SELECT * FROM alumnos where Cedula = 990909090
DELETE FROM alumnos where Cedula = 990909090;
SELECT * FROM alumnos

update alumnos 
set isActive = 0
where Cedula >= 909090908  and edad = 20

select * from alumnos
where Cedula = 909090905  and  cedula = 909090906



-- -----



SELECT * FROM mock_data
WHERE  (gender = "Male") AND (id >= 200) 
AND (first_name = "Kenon") 
OR university = "Universidad de San Andres";

SELECT count(*) as cantidad, gender From mock_data 
where first_name like "%edro%"
group by gender

-- where university = "Universidad de San Andres";



/*SELECT * FROM mock_data
where university LIKE "%ka%";*/


SELECT * FROM mock_data
where id not in(1, 2, 3, 4)


SELECT * FROM mock_data
where id not in(1, 2, 3, 4)
ORDER BY first_name DESC


/*SELECT * FROM materia_db.mock_data
where id between 10 and 18*/
/*SELECT * FROM materia_db.mock_data
where first_name LIKE "%a%"*/

SELECT * FROM materia_db.mock_data
where first_name in (
"Vaclav","Ky")









DELIMITER //
CREATE procedure SP_ALUMNOS()
BEGIN 
 SELECT * FROM ALUMNOS;
 -- CRUD
END //

call materia_db.SP_ALUMNOS();






















USE materia_db;
-- PRIMERO Female
SELECT * FROM mock_data
WHERE gender = "Female" and job = "Electrical Engineer";
-- SEGUNDO TEACHER
SELECT * FROM mock_data
WHERE job = "Professor" or job = "Teacher";
-- TERCERO .gov
SELECT * FROM mock_data
WHERE email like "%.gov%" ;

-- CUARTO nombres
SELECT * FROM mock_data
ORDER BY first_name asc;
-- cinco id entre 100 y 150 y que sean Masculinos
SELECT * FROM mock_data
WHERE (id BETWEEN 100 and 150) and gender = "Male";
-- seis cantidad de veces que se repite un nombre
SELECT COUNT(*), first_name FROM mock_data
GROUP BY first_name;







