--Tabla categorias

create table Categorias
(IDCategoria INT PRIMARY KEY,
Nombre_Categoria  varchar(50) NOT NULL,
Descripcion varchar(200))


--Tabla clientes

create table Cliente
(IDCliente INT PRIMARY KEY,
Nombre varchar(100) NOT NULL,
Email varchar(100) UNIQUE,
Ciudad varchar(50),
Fecha_registro DATE NOT NULL)


--Tabla productos

create table Productos
(IDProducto INT PRIMARY KEY,
Nombre_producto varchar(100) NOT NULL,
IDCategoria INT REFERENCES Categorias(IDCategoria),
Precio DECIMAL(10,2) NOT NULL,
Stock INT DEFAULT 0,
Activo BIT DEFAULT 1)

--Tabla ventas

create table Ventas
(IDVenta INT PRIMARY KEY,
IDClientes INT REFERENCES Cliente(IDCliente),
IDProductos INT REFERENCES Productos(IDProductos),
Cantidad INT NOT NULL,
Precio_unitario DECIMAL(10,2) NOT NULL,
Fecha_Venta DATE NOT NULL)


--Categorias

INSERT INTO Categorias (IDCategoria, Nombre_Categoria, Descripcion) VALUES
    (1, 'Computación', 'Laptops, PCs y monitores'),
    (2, 'Accesorios', 'Periféricos y complementos'),
    (3, 'Audio', 'Auriculares y parlantes'),
    (4, 'Almacenamiento', 'Discos y memorias');


  --Clientes

  INSERT INTO Cliente (IDCliente, Nombre, Email, Ciudad, Fecha_registro) VALUES
  (1, 'María López',  'maria@mail.com',  'Buenos Aires', '2024-01-05'),
  (2, 'Carlos Ruiz',  'carlos@mail.com', 'Córdoba',      '2024-01-10'),
  (3, 'Ana Gómez',    'ana@mail.com',    'Rosario',      '2024-02-01'),
  (4, 'Pedro Sanz',   'pedro@mail.com',  'Mendoza',      '2024-02-15'),
  (5, 'Laura Torres', 'laura@mail.com',  'Tucumán',      '2024-03-01');

 
 --Productos

 INSERT INTO productos (IDProductos, nombre_producto, IDCategoria, precio, stock, activo) VALUES
  (1, 'Laptop Pro 15',      1, 1200.00, 15, 1),
  (2, 'Mouse Inalámbrico',  2,   28.00, 80, 1),
  (3, 'Monitor 4K 27',      1,  450.00, 12, 1),
  (4, 'Auriculares BT Pro', 3,  120.00, 35, 1),
  (5, 'SSD Externo 1TB',    4,  130.00, 18, 1),
  (6, 'Teclado Mecánico',   2,   95.00, 40, 1);

  
  --Ventas

  INSERT INTO ventas (IDVenta, IDCliente, IDProductos, cantidad, precio_unitario, fecha_venta) VALUES
  ( 1, 1, 1, 2, 1200.00, '2024-03-05'),
  ( 2, 2, 2, 5,   28.00, '2024-03-06'),
  ( 3, 3, 3, 1,  450.00, '2024-03-07'),
  ( 4, 1, 4, 2,  120.00, '2024-03-08'),
  ( 5, 4, 5, 3,  130.00, '2024-03-10'),
  ( 6, 2, 6, 4,   95.00, '2024-03-11'),
  ( 7, 5, 1, 1, 1200.00, '2024-03-12'),
  ( 8, 3, 2, 8,   28.00, '2024-03-13'),
  ( 9, 4, 4, 1,  120.00, '2024-03-14'),
  (10, 5, 3, 2,  450.00, '2024-03-15');

  --Validación

  SELECT * FROM categorias;   
  SELECT * FROM cliente;     
  SELECT * FROM productos;    
  SELECT * FROM ventas;  








