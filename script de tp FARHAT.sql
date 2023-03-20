CREATE TABLE PEDIDOS ( 
id_pedido	INT NOT NULL,
id_sucursal INT NOT NULL,
id_cliente	INT NOT NULL, 
fecha DATE,
fecha_de_envio	DATE,
PRIMARY KEY (id_pedido)) ;

DROP TABLE PEDIDOS;

CREATE TABLE PRODUCTOS ( 
id_producto	INT NOT NULL,
nombre_producto VARCHAR (60),
categoria_producto VARCHAR (60), 
precio float,
PRIMARY KEY (id_producto));

CREATE TABLE TABLA_INTERMEDIA_prod_ped
 ( 
id_ped_prod	INT NOT NULL,
id_pedido INT NOT NULL,
id_producto INT NOT NULL,
PRIMARY KEY (id_producto),
FOREIGN KEY(id_pedido) REFERENCES PEDIDOS(id_pedido),
FOREIGN KEY(id_producto) REFERENCES PRODUCTOS(id_producto)
);

CREATE TABLE SUCURSAL ( 
id_sucursal	INT NOT NULL,
nombre_sucursal VARCHAR (60),
gerente_sucursal VARCHAR (60), 
PRIMARY KEY (id_sucursal));

CREATE TABLE CLIENTES ( 
id_cliente	INT NOT NULL,
nombre_cliente VARCHAR (60),
mail VARCHAR (60), 
telefono INT,
direccion VARCHAR (60),
CP INT,
fecha_de_afiliacion DATE,
PRIMARY KEY (id_cliente));

ALTER TABLE pedidos
add 
FOREIGN KEY (id_sucursal) REFERENCES SUCURSAL(id_sucursal);

ALTER TABLE pedidos
add 
FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente);




