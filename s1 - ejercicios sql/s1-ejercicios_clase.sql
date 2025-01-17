USE tienda;
SHOW TABLES;
SELECT * FROM empleado;
SELECT nombre FROM empleado;
SELECT nombre, apellido_paterno FROM empleado;
SELECT * FROM empleado WHERE apellido_paterno = 'Risom';
SELECT * FROM empleado WHERE id_empleado = 10;
SELECT * FROM empleado WHERE id_puesto > 100;
SELECT * FROM empleado WHERE id_puesto >= 100 AND id_puesto <= 200;
SELECT * FROM empleado WHERE id_puesto = 100 OR id_puesto = 200;
SELECT * FROM empleado WHERE id_puesto IN (100, 200, 300);

USE classicmodels;
SHOW TABLES;
SELECT * FROM customers;
SELECT * FROM customers WHERE creditLimit > 10000;
SELECT * FROM customers ORDER BY contactLastName;
SELECT * FROM customers ORDER BY contactLastName DESC;
SELECT * FROM customers ORDER BY creditLimit DESC;
SELECT * FROM customers LIMIT 10;
SELECT * FROM customers ORDER BY creditLimit DESC LIMIT 10;
