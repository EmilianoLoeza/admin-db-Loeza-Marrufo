USE selva_viva;

START TRANSACTION;

INSERT INTO Animales
(id_animal, expediente, nombre_animal, sexo, fecha_ingreso, estado_salud, id_especie, id_recinto)
VALUES
(2, 'EXP-2026-001', 'Jaguar', 'Macho', '2026-09-29', 'Estable', 1, 1);

UPDATE Recintos
SET cupo_disponible = cupo_disponible - 1
WHERE id_recinto = 1;

INSERT INTO Movimientos
(id_movimiento, id_animal, fecha_movimiento, tipo_movimiento, recinto_origen, recinto_destino, destino_externo, motivo)
VALUES
(2, 2, '2026-09-29', 'Ingreso', NULL, 1, NULL, 'Ingreso al centro de rescate');

COMMIT;