#columna 1 = detalle compra columna2= productos, hago un right join para traer el precio de entrada o de costo a la tabla de detalle compra #
SELECT detallecompra.precio, detallecompra.fecha, detallecompra.producto_id, productos.precio_entrada
FROM minimarket_schema.detallecompra
RIGHT JOIN minimarket_schema.productos
ON detallecompra.producto_id = productos.producto_id;

#calcular ganancias anuales, primero calculo la suma de las ventas EN EL AÑO 2022#

SELECT SUM(PRECIO)
FROM minimarket_schema.detallecompra  
WHERE YEAR(fecha) = 2022;

#obtengo como resulta 6600#

#calculo la suma de los costos desde el right join de detallecompra con precio entrada de productos vendidos en el año 2022#
SELECT SUM(PRECIO_ENTRADA)
FROM minimarket_schema.detallecompra
RIGHT JOIN minimarket_schema.productos
ON detallecompra.producto_id = productos.producto_id
WHERE YEAR(fecha)= 2022;
 #obtengo como resultlado 3350 pesos que si resto de el total ventas en 2022 que dió 6600 me da una ganancia anual de= 3250#


