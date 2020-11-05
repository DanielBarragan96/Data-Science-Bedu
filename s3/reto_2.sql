SELECT * FROM empleado;
SELECT * FROM venta;
SELECT * FROM articulo;


# ¿Cuál es el nombre de los empleados que realizaron cada venta?
SELECT clave, nombre, apellido_paterno FROM empleado AS e JOIN venta AS v 
ON e.id_empleado = v.id_empleado ORDER BY clave;

# ¿Cuál es el nombre de los artículos que se han vendido?
SELECT nombre FROM articulo AS a JOIN venta AS v 
ON a.id_articulo = v.id_articulo GROUP BY nombre;

# ¿Cuál es el total de cada venta?
SELECT clave, ROUND(SUM(precio), 2) FROM venta AS v JOIN articulo AS a 
ON v.id_articulo = a.id_articulo GROUP BY clave ORDER BY clave;
