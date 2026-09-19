USE tienda_ecommerce;

START TRANSACTION;

INSERT INTO Compras
(fecha_compra, total_compra, estado_compra)
VALUES
(CURDATE(), 16000.00, 'completada');

SET @id_compra = LAST_INSERT_ID();

UPDATE Producto
SET stock_producto = stock_producto - 20
WHERE id_producto = 4;

ROLLBACK;

SELECT * FROM Compras
WHERE id_compra = @id_compra;

SELECT * FROM Producto
WHERE id_producto = 4;