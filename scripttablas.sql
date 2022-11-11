#José es el dueño de un minimarket de barrio, lleva más de 15 años administrando el 
#funcionamiento completo de su negocio, siempre lo ha hecho de manera análoga, lo cual en un
#inicio no presentaba problemas, pero con el pasar de los años esto ha generado errores
#humanos, pérdidas de registros, documentos estropeados por la antigüedad y una nula
#posibilidad de poder estudiar el real crecimiento de su negocio año tras año.
#José te contrata para generar un software para su negocio.
#En esta primera instancia tu tarea será generar un modelo de base de datos que responda a
#sus necesidades.
#Puntos a considerar:
#● Don José vende distintos tipos de productos.
#● Tiene distintos proveedores.
#● Desea un informe anual sobre ganancias y venta de productos

# Considerando esto mi logica de creacion de tablas será: los proveedores traen productos que le venden a José a un precio de entrada,
#José los revende a un precio de salida, de esta forma podrá calcular sus ganancias y estudiar el crecimiento del negocio
#1- hay una tabla categoría de producto ya que tiene distintos tipos de productos
#2-hay una tabla proveedores ya que tiene más de un proveedor
#3-hay una tabla de productos ya que hay más de un producto
#4-hay una tabla que relaciona a los proveedores y productos ya que es una relación muchos a muchos
#5-hay una tabla de compra con el total
#6- y una de detalle de compra que relaciona los productos con los precios de la compra
#No hay tabla de clientes ya que en los minimarkets no se lleva registro de los clientes y sus datos y además esa información no es necesaria para lo que solicitó José


CREATE SCHEMA IF NOT EXISTS minimarket_schema;
#creo esquema y ahora creo todas las tablas con sus primary keys#
CREATE TABLE `minimarket_schema`.`proveedores`(
`proveedor_id` INT NOT NULL AUTO_INCREMENT,
`nombre`  VARCHAR(50) NOT NULL,
`correo` VARCHAR(50) NOT NULL,
PRIMARY KEY (`Proveedor_id`));

CREATE TABLE `minimarket_schema`.`productos`(
`producto_id` INT NOT NULL AUTO_INCREMENT,
`nombre` VARCHAR(30) NOT NULL,
`precio_entrada` INT NOT NULL,
`precio_salida` INT NOT NULL,
PRIMARY KEY(`producto_id`));

CREATE TABLE `minimarket_schema`.`proveedor_producto`(
`proveedorproducto_id` INT NOT NULL AUTO_INCREMENT,
PRIMARY KEY(`proveedorproducto_id`));

CREATE TABLE `minimarket_schema`.`detallecompra`(
`detallecompra_id` INT NOT NULL AUTO_INCREMENT,
`precio` INT NOT NULL,
`fecha` DATE NOT NULL,
PRIMARY KEY(`detallecompra_id`));

CREATE TABLE `minimarket_schema`.`compra`(
`compra_id` INT NOT NULL AUTO_INCREMENT,
`total` INT NOT NULL,
PRIMARY KEY(`compra_id`));

CREATE TABLE `minimarket_schema`.`tipoproducto`(
`tipoproducto_id` INT NOT NULL AUTO_INCREMENT,
`nombre` VARCHAR(20) NOT NULL,
PRIMARY KEY(`tipoproducto_id`));

#Creo las Foreign keys necesarias en la tabla relacional proveedor_producto#
#agrego la FK de proveedor_id#

ALTER TABLE minimarket_schema.proveedor_producto ADD proveedor_id INT NOT NULL;
ALTER TABLE minimarket_schema.proveedor_producto ADD CONSTRAINT proveedorproductoproveedor FOREIGN key(proveedor_id) REFERENCES minimarket_schema.proveedores(proveedor_id);

 #agrego la FK de producto_id#
ALTER TABLE minimarket_schema.proveedor_producto ADD producto_id INT NOT NULL;
ALTER TABLE minimarket_schema.proveedor_producto ADD CONSTRAINT proveedorproductoproducto FOREIGN key(producto_id) REFERENCES minimarket_schema.productos(producto_id); 

#Creo la Foreign key producto_id en la tabla detallecompra#
ALTER TABLE minimarket_schema.detallecompra ADD producto_id INT NOT NULL;
ALTER TABLE minimarket_schema.detallecompra ADD CONSTRAINT detallecompraproducto FOREIGN key(producto_id) REFERENCES minimarket_schema.productos(producto_id);

#Creo FK para conectar detallecompra_id a compra"
ALTER TABLE minimarket_schema.compra ADD detallecompra_id INT NOT NULL;
ALTER TABLE minimarket_schema.compra ADD CONSTRAINT compradetallecompra FOREIGN key(detallecompra_id) REFERENCES minimarket_schema.detallecompra(detallecompra_id);

#Creo FK para conectar tipodeproducto en productos"
ALTER TABLE minimarket_schema.productos ADD tipoproducto_id INT NOT NULL;
ALTER TABLE minimarket_schema.productos ADD CONSTRAINT tipoproductoproducto FOREIGN key(tipoproducto_id) REFERENCES minimarket_schema.tipoproducto(tipoproducto_id);