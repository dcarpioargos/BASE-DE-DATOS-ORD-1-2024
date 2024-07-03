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







==================== PARCIAL 2 ===========================
========REPASO

-- like
SELECT * FROM mock_data
WHERE university LIKE "%Medical%" and last_name = "Lister"
-- IN
SELECT * FROM mock_data
WHERE first_name IN ("Vaclav", "Ky", "Georgeanne") and id > 2
 -- IN PARA NUMEROS
SELECT * FROM mock_data
WHERE id = 2 OR id = 3 OR id = 25

SELECT * FROM mock_data
WHERE id IN(2, 3, 25, 100000000)

!FALSE  =  TRUE
!TRUE   =  FALSE

<> TRUE = FALSE
<> FALSE = TRUE

NOT FALSE = TRUE
NOT TRUE = FALSE
-- 
SELECT * FROM mock_data
WHERE id NOT IN(2, 3, 25)

SELECT * FROM mock_data
WHERE ip_address IS NOT NULL

NULL
0
UNDEFINED
""


----- ORDER BY
SELECT * FROM mock_data
ORDER BY first_name, last_name ASC


-- group by
SELECT  first_name, gender FROM mock_data
GROUP BY  gender, first_name
-- count
SELECT first_name, COUNT(first_name) AS cant FROM mock_data
WHERE first_name = "Dirk"
GROUP BY first_name;
SELECT * FROM mock_data WHERE first_name = "Dirk"

-- HAVING 
SELECT last_name, count(*) FROM mock_data
GROUP BY last_name
HAVING count(*) >= 2
-- SELECT last_name, count(*) as bel 
-- FROM mock_data
-- GROUP BY last_name
-- HAVING bel >= 2


========= EJERCICIO EN CLASES USANDO: COUNT, SUM, AVG, MAX, MIN, GROUP BY, HAVING, ORDERBY
Encuentra las categorías de libros, 
el número total de libros vendidos, 
el precio promedio, 
el precio máximo y el precio mínimo por categoría. 

Filtra para mostrar solo las categorías que han vendido más de 1 libros en total. 
Ordena los resultados por la cantidad total vendida en orden descendente.


-- Crear la tabla Libros
CREATE TABLE Libros (
    id_libro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    autor VARCHAR(255) NOT NULL,
    precio DECIMAL(10, 2),
    fecha_publicacion DATE,
    categoria VARCHAR(255)
);

-- Crear la tabla Ventas
CREATE TABLE Ventas (
    id_venta INT AUTO_INCREMENT PRIMARY KEY,
    id_libro INT,
    cantidad INT,
    fecha_venta DATE,
    FOREIGN KEY (id_libro) REFERENCES Libros(id_libro)
);


INSERT INTO Libros (titulo, autor, precio, fecha_publicacion, categoria) VALUES
('Cien Años de Soledad', 'Gabriel Garcia Marquez', 15.99, '1967-06-05', 'Ficción'),
('Don Quijote de la Mancha', 'Miguel de Cervantes', 22.50, '1605-01-16', 'Ficción'),
('El Principito', 'Antoine de Saint-Exupéry', 12.99, '1943-04-06', 'Infantil'),
('La Odisea', 'Homero', 13.45, '800-01-01', 'Clásico'),
('Historia de Dos Ciudades', 'Charles Dickens', 18.00, '1859-11-01', 'Clásico'),
('El Nombre de la Rosa', 'Umberto Eco', 20.00, '1980-09-01', 'Misterio'),
('La Divina Comedia', 'Dante Alighieri', 25.50, '1320-01-01', 'Clásico'),
('Los Juegos del Hambre', 'Suzanne Collins', 17.99, '2008-09-14', 'Ciencia Ficción'),
('1984', 'George Orwell', 14.99, '1949-06-08', 'Ciencia Ficción'),
('El Alquimista', 'Paulo Coelho', 19.99, '1988-05-01', 'Aventura'),
('El Señor de los Anillos', 'J.R.R. Tolkien', 30.00, '1954-07-29', 'Fantasía'),
('Harry Potter y la Piedra Filosofal', 'J.K. Rowling', 21.99, '1997-06-26', 'Fantasía'),
('Crónica de una Muerte Anunciada', 'Gabriel Garcia Marquez', 16.50, '1981-12-02', 'Misterio'),
('El Amor en los Tiempos del Cólera', 'Gabriel Garcia Marquez', 23.00, '1985-09-05', 'Romance'),
('Drácula', 'Bram Stoker', 18.75, '1897-05-26', 'Horror'),
('Frankenstein', 'Mary Shelley', 17.50, '1818-01-01', 'Horror'),
('Orgullo y Prejuicio', 'Jane Austen', 22.00, '1813-01-28', 'Romance'),
('Matar a un Ruiseñor', 'Harper Lee', 24.50, '1960-07-11', 'Clásico'),
('El Gran Gatsby', 'F. Scott Fitzgerald', 20.00, '1925-04-10', 'Clásico'),
('Alicia en el País de las Maravillas', 'Lewis Carroll', 15.00, '1865-11-26', 'Infantil');

INSERT INTO Ventas (id_libro, cantidad, fecha_venta) VALUES
(1, '10', '2022-01-15'),
(2, 5, '2022-01-20'),
(3, 8, '2022-02-10'),
(4, 12, '2022-02-15'),
(5, 7, '2022-03-01'),
(6, 3, '2022-03-05'),
(7, 9, '2022-03-10'),
(8, 11, '2022-03-15'),
(9, 4, '2022-03-20'),
(10, 15, '2022-04-01'),
(11, 6, '2022-04-05'),
(12, 13, '2022-04-10'),
(13, 2, '2022-04-15'),
(14, 14, '2022-04-20'),
(15, 8, '2022-05-01'),
(16, 10, '2022-05-05'),
(17, 5, '2022-05-10'),
(18, 9, '2022-05-15'),
(19, 3, '2022-05-20'),
(20, 7, '2022-06-01');


SELECT * FROM libros;
SELECT * FROM ventas;
-- valores unicos sin id repetidos
SELECT * FROM libros AS l, ventas AS v
WHERE l.id_libro = v.id_libro;
-- resultado del ejercicio
SELECT 
	l.categoria, 
	COUNT(l.id_libro) AS total_libros,
    SUM(v.cantidad) AS total_vendidos,
    AVG(l.precio) AS precio_promedio,
    MIN(l.precio) AS precio_minimo,
    MAX(l.precio) AS precio_maximo
FROM libros AS l, ventas AS v
WHERE l.id_libro = v.id_libro --  OR total_vendidos > 2
GROUP BY l.categoria
HAVING total_libros > 2
ORDER BY total_vendidos DESC;
-- Error Code: 1054. Unknown column 'total_vendidos' in 'where clause'	0.000 sec

-- dividir el archivo
SELECT * FROM libros

Encuentra las categoría de libros, 
SELECT l.categoria FROM libros AS l
GROUP BY l.categoria

el número total de libros vendidos SELECT * FROM ventas, 
SELECT SUM(cantidad) AS totalvendidos
FROM ventas 
el precio promedio, 
SELECT AVG(l.precio) AS promedio_libros FROM libros AS l

el precio máximo y el precio mínimo por categoría. 
SELECT categoria as cat,
	MIN(libros.precio) as valor_min,
    MAX(libros.precio) as valor_max
FROM libros
GROUP BY cat


}SELECT MIN()

Filtra para mostrar solo las categorías que han vendido más de 1 libros en total. 
Ordena los resultados por la cantidad total vendida en orden descendente.



============ EJERCICIO 2 =====================

- Analiza el rendimiento de ventas por autor. 
Proporciona para cada autor que ha vendido al menos 10 libros en total, un informe que muestre lo siguiente:
- El nombre del autor
- El número total de libros diferentes que ha vendido
- La cantidad total de libros vendidos
- El ingreso total generado por sus ventas
- El precio promedio de sus libros
- El título de su libro más caro
- Ordena los resultados por el ingreso total generado en orden descendente.

SELECT * FROM libros AS l, ventas AS v WHERE l.id_libro = v.id_libro;
SELECT 
     l.autor AS "Nombre del Autor",
     COUNT(DISTINCT l.id_libro) AS "Numero de Libros Vendidos",
     SUM(v.cantidad) AS cantidad_total_vendidad,
     SUM(v.cantidad * l.precio) AS Ingreso_Total, 
     AVG(l.precio) AS promedio_precio
FROM libros AS l, ventas AS v
WHERE l.id_libro = v.id_libro
GROUP BY l.autor

select * from libros

     