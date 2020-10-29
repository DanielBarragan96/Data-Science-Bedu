#Daniel Barragán
#https://github.com/beduExpert/A1-Introduccion-a-Bases-de-Datos-Santander/tree/main/Sesion-02/Reto-02

USE tienda;
SHOW tables;

#¿Cuál es el promedio de salario de los puestos?
SELECT AVG(salario) FROM puesto;
#¿Cuántos artículos incluyen la palabra Pasta en su nombre?
SELECT count(*) FROM articulo WHERE nombre LIKE "%pasta%";
#¿Cuál es el salario mínimo y máximo?
SELECT MIN(salario) FROM puesto;
SELECT MAX(salario) FROM puesto;
#¿Cuál es la suma del salario de los últimos cinco puestos agregados?
SELECT SUM(salario) FROM puesto ORDER BY id_puesto DESC LIMIT 5;
