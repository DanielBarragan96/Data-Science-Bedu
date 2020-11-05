USE tienda;

# Obtener el puesto de un empleado.
CREATE VIEW puestos075 AS
(SELECT concat(e.nombre, ' ', e.apellido_paterno), p.nombre
FROM empleado e
JOIN puesto p
  ON e.id_puesto = p.id_puesto);

SELECT * FROM puestos075;

# Saber qué artículos ha vendido cada empleado.
CREATE VIEW articulo_empleado075 AS (
SELECT concat(e.nombre, ' ', e.apellido_paterno) nombre, a.nombre articulo
FROM venta v JOIN empleado e ON v.id_empleado = e.id_empleado
JOIN articulo a ON v.id_articulo = a.id_articulo );

SELECT * FROM articulo_empleado075;

#Saber qué puesto ha tenido más ventas.
CREATE VIEW puesto_mas_ventas075 AS
(SELECT p.nombre, count(*) total
FROM venta AS v JOIN empleado AS e ON v.id_empleado = e.id_empleado
JOIN puesto AS p ON e.id_puesto = p.id_puesto GROUP BY p.nombre 
ORDER BY total DESC LIMIT 1);

SELECT * FROM puesto_mas_ventas075;
