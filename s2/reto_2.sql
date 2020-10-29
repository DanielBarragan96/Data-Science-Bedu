#Daniel Barragán
#https://github.com/beduExpert/A1-Introduccion-a-Bases-de-Datos-Santander/tree/main/Sesion-02/Reto-02

USE tienda;
SHOW tables;

#¿Cuál es el promedio de salario de los puestos?
SELECT ROUND(AVG(salario), 2) FROM puesto;
#¿Cuántos artículos incluyen la palabra Pasta en su nombre?
SELECT count(*) FROM articulo WHERE nombre LIKE "%pasta%";
#¿Cuál es el salario mínimo y máximo?
SELECT MIN(salario), MAX(salario) FROM puesto;
#¿Cuál es la suma del salario de los últimos cinco puestos agregados?
select sum(salario) as "Suma ultimos 5 salarios" from (select salario from puesto order by id_puesto desc limit 5) as last5Salario;
