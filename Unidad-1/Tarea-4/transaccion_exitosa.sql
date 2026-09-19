USE tienda_ecommerce;

START TRANSACTION;

INSERT INTO Compras
(fecha_compra, total_compra, estado_compra)
VALUES
(CURDATE(), 24000.00, 'completada');

SET @id_compra = LAST_INSERT_ID();

UPDATE Producto
SET stock_producto = stock_producto - 2
WHERE id_producto = 1;

INSERT INTO DetalleCompra
(id_compra, id_producto, cantidad_producto, precio_unitario)
VALUES
(@id_compra, 1, 2, 12000.00);

INSERT INTO Pagos
(id_compra, monto_pago, fecha_pago)
VALUES
(@id_compra, 24000.00, CURDATE());

COMMIT;

SELECT * FROM Producto
WHERE id_producto = 1;

SELECT * FROM Compras
WHERE id_compra = @id_compra;

SELECT * FROM DetalleCompra
WHERE id_compra = @id_compra;

SELECT * FROM Pagos
WHERE id_compra = @id_compra;