CREATE DATABASE TiendaAlimentos;

USE TiendaAlimentos;

CREATE TABLE Productos (
    ID_Producto INT PRIMARY KEY,
    Nombre_Producto VARCHAR(100),
    Descripcion VARCHAR(255),
    Precio DECIMAL(10, 2),
    Cantidad_Disponible INT,
    Fecha_de_vencimiento DATE,
    Proveedor VARCHAR(100)
);

CREATE TABLE Clientes (
    ID_Cliente INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Apellido VARCHAR(100),
    Direccion VARCHAR(255),
    Telefono VARCHAR(20),
    Correo_electronico VARCHAR(100)
);

INSERT INTO Productos (ID_Producto, Nombre_Producto, Descripcion, Precio, Cantidad_Disponible, Fecha_de_vencimiento, Proveedor) 
VALUES 
(1, 'Manzanas', 'Manzanas frescas', 1.99, 100, '2024-07-01', 'Proveedor A'),
(2, 'Arroz', 'Arroz blanco de grano largo', 3.50, 50, '2025-12-31', 'Proveedor B'),
(3, 'Leche', 'Leche entera', 2.00, 75, '2024-06-30', 'Proveedor C');

INSERT INTO Clientes (ID_Cliente, Nombre, Apellido, Direccion, Telefono, Correo_electronico) 
VALUES 
(1, 'Juan', 'Pérez', 'Calle 123', '123456789', 'juan@example.com'),
(2, 'María', 'García', 'Avenida 456', '987654321', 'maria@example.com'),
(3, 'Pedro', 'López', 'Calle Principal', '555-5555', 'pedro@example.com');

select * from Productos;

SELECT * FROM Productos WHERE Nombre_Producto LIKE '%arroz%';

SELECT * FROM Productos WHERE Nombre_Producto LIKE '%Manzanas%';