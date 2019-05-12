create database sneakerslust;
use sneakerslust;
SET SQL_SAFE_UPDATES = 0;
create table usuario(id int primary key auto_increment,
					 correo varchar(250) not null,
                     contrasena varchar(255) not null,
                     rol int,
                     createdby int,
                     createdon datetime,
                     modifiedby int,
                     modifiedon datetime);
create table cliente(idUsuarioCliente int primary key,
					 razonSocial varchar(250) not null,
                     regimenFiscal varchar(50) not null,
                     rfc varchar(12),
                     telefono varchar(10),
                     codigoPostal varchar(5),
                     calle varchar(35),
                     numeroExterior varchar(5),
                     numeroInterior varchar(5),
                     colonia varchar(100),
                     delegacion varchar(100),
                     ciudad varchar(100),
                     estado varchar(100));
create table empleado(idUsuarioEmpleado int primary key,
					  nombre varchar(60),
                      apellido varchar(100));
create table categoria(id int primary key auto_increment,
					   nombre varchar(100),
                       descripcion varchar(255),
                       createdby int,
                       createdon datetime,
                       modifiedby int,
                       modifiedon datetime);
create table producto(claveProducto int primary key,
					  descripcion varchar(50),
                      talla varchar(2),
                      color varchar (25),
                      marca varchar (25),
                      foto longblob,
                      categoria int,
                      createdby int,
                      createdon datetime,
                      modifiedby int,
                      modifiedon datetime);
create table movimiento(id int primary key auto_increment,
					   tipo char,
                       fecha datetime,
                       cliente int,
                       empleado int,
					   createdby int,
                       createdon datetime,
                       modifiedby int,
                       modifiedon datetime);
create table detalleMovimiento(id int primary key,
							   idMovimiento int,
                               producto int,
                               cantidad int,
							   createdby int,
							   createdon datetime,
							   modifiedby int,
							   modifiedon datetime);
                               
/*****Llaves foranes en usuario*/
ALTER TABLE usuario  ADD
CONSTRAINT FK_usuario_creado
FOREIGN KEY (createdby)
REFERENCES usuario (id);
ALTER TABLE usuario ADD
CONSTRAINT FK_usuario_modificado
FOREIGN KEY (modifiedby)
REFERENCES usuario (id);
/*****Llaves foranes en cliente*/
ALTER TABLE cliente  ADD
CONSTRAINT FK_cliente
FOREIGN KEY (idUsuarioCliente)
REFERENCES usuario (id);
/*****Llaves foranes en empleado*/
ALTER TABLE empleado  ADD
CONSTRAINT FK_empleado
FOREIGN KEY (idUsuarioEmpleado)
REFERENCES usuario (id);
/*****Llaves foranes en categoria*/
ALTER TABLE categoria  ADD
CONSTRAINT FK_categoria_creado
FOREIGN KEY (createdby)
REFERENCES usuario (id);
ALTER TABLE categoria  ADD
CONSTRAINT FK_categoria_modificado
FOREIGN KEY (modifiedby)
REFERENCES usuario (id);
/*****Llaves foranes en producto*/
ALTER TABLE producto  ADD
CONSTRAINT FK_producto_creado
FOREIGN KEY (createdby)
REFERENCES usuario (id);
ALTER TABLE producto  ADD
CONSTRAINT FK_producto_modificado
FOREIGN KEY (modifiedby)
REFERENCES usuario (id);
ALTER TABLE producto  ADD
CONSTRAINT FK_categoria
FOREIGN KEY (categoria)
REFERENCES categoria (id);
/*****Llaves foranes en movimiento*/
ALTER TABLE movimiento  ADD
CONSTRAINT FK_movimiento_creado
FOREIGN KEY (createdby)
REFERENCES usuario (id);
ALTER TABLE movimiento  ADD
CONSTRAINT FK_movimiento_modificado
FOREIGN KEY (modifiedby)
REFERENCES usuario (id);
ALTER TABLE movimiento ADD
CONSTRAINT FK_movimiento_empleado
FOREIGN KEY (empleado)
REFERENCES empleado (idUsuarioEmpleado);
ALTER TABLE movimiento ADD
CONSTRAINT FK_movimiento_cliente
FOREIGN KEY (cliente)
REFERENCES cliente(idUsuarioCliente);
/*****Llaves foranes en detalle movimiento*/
ALTER TABLE detalleMovimiento  ADD
CONSTRAINT FK_movimiento
FOREIGN KEY (idMovimiento)
REFERENCES usuario (id);
ALTER TABLE detalleMovimiento  ADD
CONSTRAINT FK_detalleMovimiento_creado
FOREIGN KEY (createdby)
REFERENCES usuario (id);
ALTER TABLE detalleMovimiento ADD
CONSTRAINT FK_detalleMovimiento_modificado
FOREIGN KEY (modifiedby)
REFERENCES usuario (id);
ALTER TABLE detalleMovimiento ADD
CONSTRAINT FK_detallemovimiento_producto
FOREIGN KEY (producto)
REFERENCES producto(claveProducto);

/**************Insertar*************************/
insert into usuario values(0,'niu1982@hotmail.com','12345',1,1,now(),null,null);
insert into usuario values(0,'sistema@sistema.com','12345',2,1,now(),null,null);
insert into usuario values(0,'cinthia.nava.torres@gmail.com','12345',3,2,now(),null,null);
update usuario set rol=3 where id=3;
select * from usuario;
select id from usuario order by id desc limit 1;
insert into empleado values((select id from usuario order by id desc limit 1),'Cinthia Lizbeth','Nava Torres');

/***************LOGIN****************************/
select rol from usuario where correo = 'niu1982@hotmail.com' and contrasena = '12345';