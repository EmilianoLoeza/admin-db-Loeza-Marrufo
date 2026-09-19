CREATE DATABASE IF NOT EXISTS tienda_ecommerce;

USE tienda_ecommerce;

CREATE TABLE Producto (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre_producto VARCHAR(100) NOT NULL,
    precio_producto DECIMAL(10,2) NOT NULL,
    stock_producto INT NOT NULL CHECK (stock_producto >= 0)
) ENGINE=InnoDB;

CREATE TABLE Compras (
    id_compra INT AUTO_INCREMENT PRIMARY KEY,
    fecha_compra DATE NOT NULL,
    total_compra DECIMAL(10,2) NOT NULL,
    estado_compra VARCHAR(20) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE DetalleCompra (
    id_detalle INT AUTO_INCREMENT PRIMARY KEY,
    id_compra INT NOT NULL,
    id_producto INT NOT NULL,
    cantidad_producto INT NOT NULL CHECK (cantidad_producto > 0),
    precio_unitario DECIMAL(10,2) NOT NULL CHECK (precio_unitario > 0),
    FOREIGN KEY (id_compra) REFERENCES Compras(id_compra),
    FOREIGN KEY (id_producto) REFERENCES Producto(id_producto)
) ENGINE=InnoDB;

CREATE TABLE Pagos (
    id_pago INT AUTO_INCREMENT PRIMARY KEY,
    id_compra INT NOT NULL,
    monto_pago DECIMAL(10,2) NOT NULL CHECK (monto_pago > 0),
    fecha_pago DATE NOT NULL,
    FOREIGN KEY (id_compra) REFERENCES Compras(id_compra)
) ENGINE=InnoDB;

INSERT INTO Producto
(nombre_producto, precio_producto, stock_producto)
VALUES
('Laptop', 12000.00, 10),
('Audifonos', 1500.00, 15),
('Mouse', 500.00, 20),
('Teclado', 800.00, 12);

INSERT INTO Compras
(fecha_compra, total_compra, estado_compra)
VALUES
('2026-09-18', 1500.00, 'completada'),
('2026-09-18', 1000.00, 'completada');

INSERT INTO DetalleCompra
(id_compra, id_producto, cantidad_producto, precio_unitario)
VALUES
(1, 2, 1, 1500.00),
(2, 3, 2, 500.00);

INSERT INTO Pagos
(id_compra, monto_pago, fecha_pago)
VALUES
(1, 1500.00, '2026-09-18'),
(2, 1000.00, '2026-09-18');