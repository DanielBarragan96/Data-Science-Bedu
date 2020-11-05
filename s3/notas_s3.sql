USE tienda;
SELECT * FROM puesto;

SELECT max(id_puesto) - 5 FROM puesto;

SELECT sum(salario) FROM puesto 
WHERE id_puesto > (SELECT max(id_puesto) - 5 FROM puesto);

# Junior Executive
SELECT id_puesto From puesto
Where nombre = 'Junior Executive';

SELECT * FROM empleado WHERE id_puesto IN 
(SELECT id_puesto FROM puesto WHERE nombre = 'Junior Executive');

# FROM
# Ahora queremos saber cuál es la menor y mayor cantidad de ventas de un articulo

SELECT clave, id_articulo, count(*) AS cantidad FROM venta 
GROUP BY clave, id_articulo ORDER BY cantidad DESC;

SELECT id_articulo, min(cantidad) AS cantidad_min, max(cantidad) AS cantidadmax
FROM (SELECT clave, id_articulo, count(*) AS cantidad FROM venta 
GROUP BY clave, id_articulo ORDER BY cantidad DESC) AS subconsutla GROUP BY id_articulo;




