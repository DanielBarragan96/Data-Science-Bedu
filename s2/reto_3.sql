#Daniel Barragán
#https://github.com/beduExpert/A1-Introduccion-a-Bases-de-Datos-Santander/tree/main/Sesion-02/Reto-03

USE tienda;
SHOW tables;

#¿Cuántos registros hay por cada uno de los puestos?
SELECT nombre, count(*) FROM puesto GROUP BY nombre;
#¿Cuánto dinero se paga en total por puesto?
SELECT nombre, sum(salario) FROM puesto GROUP BY nombre;
#¿Cuál es el número total de ventas por vendedor?
SELECT id_empleado, count(id_venta) FROM venta GROUP BY id_empleado;
#¿Cuál es el número total de ventas por artículo?
SELECT id_articulo, count(id_venta) FROM venta GROUP BY id_articulo;