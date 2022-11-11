#inserto los nombres de las categorias de productos#
INSERT INTO minimarket_schema.tipoproducto (nombre)
VALUES('helado');

INSERT INTO minimarket_schema.tipoproducto (nombre)
VALUES('snack');

INSERT INTO minimarket_schema.tipoproducto (nombre)
VALUES('verduras');

INSERT INTO minimarket_schema.tipoproducto (nombre)
VALUES('bebestible');

#inserto los datos de los productos incluyendo a que categoría pertenecen#
INSERT INTO minimarket_schema.productos (nombre, precio_entrada, precio_salida, tipoproducto_id)
VALUES('chocolito', '200', '400',1);

INSERT INTO minimarket_schema.productos (nombre, precio_entrada, precio_salida, tipoproducto_id)
VALUES('chococrack', '400', '700',2);

INSERT INTO minimarket_schema.productos (nombre, precio_entrada, precio_salida, tipoproducto_id)
VALUES('repollo', '800', '1600',3);

INSERT INTO minimarket_schema.productos (nombre, precio_entrada, precio_salida, tipoproducto_id)
VALUES('cocacola', '500', '1000',4);

INSERT INTO minimarket_schema.productos (nombre, precio_entrada, precio_salida, tipoproducto_id)
VALUES('kriko', '250', '600',1);


#Hago prueba insertando datos a las compras#

INSERT INTO minimarket_schema.detallecompra (precio, fecha, producto_id)
VALUES('400', '2022-03-10',1);

INSERT INTO minimarket_schema.compra (total,detallecompra_id)
VALUES('400',1);

INSERT INTO minimarket_schema.detallecompra (precio, fecha, producto_id)
VALUES('1600', '2022-03-11',3);

INSERT INTO minimarket_schema.compra (total,detallecompra_id)
VALUES('1600',2);

INSERT INTO minimarket_schema.detallecompra (precio, fecha, producto_id)
VALUES('600', '2022-03-12',5);

INSERT INTO minimarket_schema.compra (total,detallecompra_id)
VALUES('600',3);

INSERT INTO minimarket_schema.detallecompra (precio, fecha, producto_id)
VALUES('700', '2022-03-08',2);

INSERT INTO minimarket_schema.compra (total,detallecompra_id)
VALUES('700',4);

INSERT INTO minimarket_schema.detallecompra (precio, fecha, producto_id)
VALUES('1000', '2022-03-09',4);

INSERT INTO minimarket_schema.compra (total,detallecompra_id)
VALUES('1000',5);

INSERT INTO minimarket_schema.detallecompra (precio, fecha, producto_id)
VALUES('1000', '2021-03-09',4);

INSERT INTO minimarket_schema.compra (total,detallecompra_id)
VALUES('1000',6);

;

#lleno tabla proveedores con más de un proveedor#

INSERT INTO minimarket_schema.proveedores ( nombre, correo)
VALUES ('Bruno Fernandez', 'bfernandez@nestle.cl');

INSERT INTO minimarket_schema.proveedores ( nombre, correo)
VALUES ('Juan Mata', 'jmata@cocacola.cl');
