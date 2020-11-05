USE tienda;
SELECT * FROM puesto;
SHOW KEYS FROM venta;

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

# Join

SELECT * FROM empleado AS e JOIN puesto AS p ON e.id_puesto = p.id_puesto;

SELECT * FROM puesto AS p LEFT JOIN empleado AS e ON p.id_puesto = e.id_puesto;

SELECT * FROM empleado AS e RIGHT JOIN puesto AS p ON p.id_puesto = e.id_puesto; 


# Vistas

SELECT v.clave, v.fecha, a.nombre AS producto, a.precio, concat(e.nombre, ' ', e.apellido_paterno) AS empleado 
FROM venta v
JOIN empleado e
  ON v.id_empleado = e.id_empleado
JOIN articulo a
  ON v.id_articulo = a.id_articulo;

CREATE VIEW tickets075 AS
(SELECT v.clave, v.fecha, a.nombre producto, a.precio, concat(e.nombre, ' ', e.apellido_paterno) empleado 
FROM venta v
JOIN empleado e
  ON v.id_empleado = e.id_empleado
JOIN articulo a
  ON v.id_articulo = a.id_articulo);

SELECT * FROM tickets075;





