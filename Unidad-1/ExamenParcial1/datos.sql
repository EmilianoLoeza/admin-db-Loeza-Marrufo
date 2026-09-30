USE selva_viva;

INSERT INTO Especies
(id_especie, nombre_comun, nombre_cientifico, bioma, clima, habitos)
VALUES
(1, 'Jaguar', 'Panthera onca', 'Selva', 'Tropical', 'Cazar'),
(2, 'Tucan', 'Ramphastos toco', 'Selva', 'Tropical', 'volar'),
(3, 'Iguana', 'Iguana iguana', 'Selva', 'Tropical', 'caminar');

INSERT INTO Recintos
(id_recinto, nombre_recinto, bioma, clima, capacidad_maxima, cupo_disponible, disponibilidad)
VALUES
(1, 'Felinos - Zona A', 'Selva', 'Tropical', 10, 5, 'Disponible'),
(2, 'Cuarentena Aves', 'Selva', 'Tropical', 8, 3, 'Disponible'),
(3, 'Aviario General', 'Selva', 'Tropical', 15, 5, 'Disponible'),
(4, 'Reptilario 1', 'Selva', 'Tropical', 5, 0, 'Sin disponibilidad');

INSERT INTO Animales
(id_animal, expediente, nombre_animal, sexo, fecha_ingreso, estado_salud, id_especie, id_recinto)
VALUES
(1, 'EXP-2026-002', 'Tucan', 'Macho', '2026-09-29', 'Estable', 2, 2);

INSERT INTO EvaluacionesMedicas
(id_evaluacion, id_animal, fecha_evaluacion, diagnostico, tratamiento, observaciones, estado_salud)
VALUES
(1, 1, '2026-09-29', 'Revision general', 'Observacion', 'Sin complicaciones', 'Estable');

INSERT INTO Movimientos
(id_movimiento, id_animal, fecha_movimiento, tipo_movimiento, recinto_origen, recinto_destino, destino_externo, motivo)
VALUES
(1, 1, '2026-09-29', 'Ingreso', NULL, 2, NULL, 'Ingreso al centro de rescate');

CREATE INDEX idx_animales_recinto
ON Animales(id_recinto);