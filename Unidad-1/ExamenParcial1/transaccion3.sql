USE selva_viva;

START TRANSACTION;

INSERT INTO Animales
(id_animal, expediente, nombre_animal, sexo, fecha_ingreso, estado_salud, id_especie, id_recinto)
VALUES
(3, 'EXP-2026-003', 'Iguana', 'Hembra', '2026-09-29', 'Estable', 3, 4);

UPDATE Recintos
SET cupo_disponible = cupo_disponible - 1
WHERE id_recinto = 4;

ROLLBACK;