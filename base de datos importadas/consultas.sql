
#Realizar una consulta que permita conocer cuál es el producto que más stock tiene:

SELECT p.nombre,p.stock 
FROM productos p
ORDER BY p.stock DESC
LIMIT 1;


#Realizar una consulta que permita conocer cuál es el producto más vendido:

SELECT p.id,p.nombre, SUM(cantidad) AS total_ventas
FROM ventas v
inner join productos p on p.id = v.producto_id 
GROUP BY producto_id
ORDER BY total_ventas DESC
LIMIT 1;
