USE selva_viva;

START TRANSACTION;

UPDATE Animales
SET id_recinto = 3
WHERE expediente = 'EXP-2026-002';

UPDATE Recintos
SET cupo_disponible = cupo_disponible + 1
WHERE id_recinto = 2;

UPDATE Recintos
SET cupo_disponible = cupo_disponible - 1
WHERE id_recinto = 3;

INSERT INTO Movimientos
(id_movimiento, id_animal, fecha_movimiento, tipo_movimiento, recinto_origen, recinto_destino, destino_externo, motivo)
VALUES
(3, 1, '2026-09-29', 'Traslado', 2, 3, NULL, 'Traslado a Aviario General');

COMMIT;